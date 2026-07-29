<#
.SYNOPSIS
Sums per-day capacity hours from the "Work Days.xlsx" PTO calendar for a given date range.

.DESCRIPTION
Reads the "<year> PTO" tab of C:\Users\peter\OneDrive\Documents\UF Expense Reports\Work Days.xlsx
via Excel COM, opened read-only -- safe to run even while the workbook is open elsewhere, since it
spins up a separate hidden Excel instance rather than attaching to the interactive one.

Column A = date, Column D = Capacity (8.00 on a normal workday, 0.00 on a PTO/Holiday/Sick/etc. day,
blank on weekends). Sums Column D across the requested date range. If the range spans a year
boundary, sums across each year's "<year> PTO" tab; years without a matching tab are skipped with
a warning.

Output includes both the summed `capacityHours` (period-level denominator, used for utilization)
and a `dailyBreakdown` array of {date, capacity, status} (used for day-by-day reconciliation against
Clockify entries when projecting the rest of a period).

.EXAMPLE
.\capacity_from_workdays.ps1 -Start 2026-07-15 -End 2026-07-30
#>

param(
    [Parameter(Mandatory = $true)][string]$Start,
    [Parameter(Mandatory = $true)][string]$End
)

$ErrorActionPreference = "Stop"

$workbookPath = "C:\Users\peter\OneDrive\Documents\UF Expense Reports\Work Days.xlsx"
if (-not (Test-Path $workbookPath)) {
    Write-Error "Work Days.xlsx not found at $workbookPath"
    exit 1
}

$periodStart = Get-Date $Start
$periodEnd = Get-Date $End

$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$excel.DisplayAlerts = $false

try {
    $wb = $excel.Workbooks.Open($workbookPath, $false, $true)  # ReadOnly
    $totalCapacity = 0.0
    $daysFound = 0
    $yearsSkipped = @()
    $dailyBreakdown = @()

    for ($year = $periodStart.Year; $year -le $periodEnd.Year; $year++) {
        $sheetName = "$year PTO"
        $sheet = $null
        foreach ($ws in $wb.Worksheets) {
            if ($ws.Name -eq $sheetName) { $sheet = $ws; break }
        }
        if (-not $sheet) {
            $yearsSkipped += $year
            continue
        }

        $rowCount = $sheet.UsedRange.Rows.Count
        for ($r = 9; $r -le $rowCount; $r++) {
            $dateText = $sheet.Cells.Item($r, 1).Text
            if (-not $dateText) { continue }
            $rowDate = [DateTime]::MinValue
            if (-not [DateTime]::TryParse($dateText, [ref]$rowDate)) { continue }
            if ($rowDate.Date -ge $periodStart.Date -and $rowDate.Date -le $periodEnd.Date) {
                $capText = $sheet.Cells.Item($r, 4).Text
                $statusText = $sheet.Cells.Item($r, 5).Text
                $cap = 0.0
                if ($capText -and [double]::TryParse($capText, [ref]$cap)) {
                    $totalCapacity += $cap
                }
                $dailyBreakdown += [ordered]@{
                    date     = $rowDate.ToString("yyyy-MM-dd")
                    capacity = $cap
                    status   = $statusText
                }
                $daysFound++
            }
        }
    }

    $output = [ordered]@{
        periodStart    = $periodStart.ToString("yyyy-MM-dd")
        periodEnd      = $periodEnd.ToString("yyyy-MM-dd")
        capacityHours  = $totalCapacity
        daysInRange    = $daysFound
        yearsSkipped   = $yearsSkipped
        dailyBreakdown = $dailyBreakdown
    } | ConvertTo-Json -Depth 5
    Write-Output $output
}
finally {
    if ($wb) { $wb.Close($false) }
    $excel.Quit()
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($excel) | Out-Null
}
