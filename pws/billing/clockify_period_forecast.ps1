<#
.SYNOPSIS
Pulls a period-to-date billable summary from Clockify for the on-demand /billing-forecast command.

.DESCRIPTION
Requires the CLOCKIFY_API_KEY environment variable (Clockify > Profile Settings > API > Generate).
This is a forecast/status check only — the authoritative source for actual invoicing is still the
Clockify summary PDF report, same as the /invoice command already uses.

NOTE: the Reports API returns each project's `duration` as plain seconds (integer), not an ISO 8601
duration string -- confirmed against live output 2026-07-29. Divide by 3600 for hours.

Defaults to the current Unifocus billing period (1st-15th or 16th-end of month, matching the
twice-monthly invoice deadline). Pass -Start / -End for a custom range.

.EXAMPLE
.\clockify_period_forecast.ps1
.\clockify_period_forecast.ps1 -Start 2026-07-01 -End 2026-07-15
#>

param(
    [string]$Start,
    [string]$End
)

$ErrorActionPreference = "Stop"

$apiKey = $env:CLOCKIFY_API_KEY
if (-not $apiKey) {
    Write-Error "CLOCKIFY_API_KEY environment variable not set. Get a key from Clockify > Profile Settings > API > Generate, then run: [Environment]::SetEnvironmentVariable('CLOCKIFY_API_KEY','your-key-here','User')  -- then restart your terminal."
    exit 1
}

$headers = @{ "X-Api-Key" = $apiKey; "Content-Type" = "application/json" }

# Resolve user + default workspace directly from the key -- no need to hunt these down manually
$user = Invoke-RestMethod -Uri "https://api.clockify.me/api/v1/user" -Headers $headers -Method Get
$workspaceId = $user.activeWorkspace
$userId = $user.id

# Default period: 1st-15th or 16th-end of current month, matching the Unifocus invoice cadence
if (-not $Start -or -not $End) {
    $today = Get-Date
    if ($today.Day -le 15) {
        $periodStart = Get-Date -Year $today.Year -Month $today.Month -Day 1
        $periodEnd = Get-Date -Year $today.Year -Month $today.Month -Day 15
    } else {
        $periodStart = Get-Date -Year $today.Year -Month $today.Month -Day 16
        $lastDay = [DateTime]::DaysInMonth($today.Year, $today.Month)
        $periodEnd = Get-Date -Year $today.Year -Month $today.Month -Day $lastDay
    }
} else {
    $periodStart = Get-Date $Start
    $periodEnd = Get-Date $End
}

$dateRangeStart = $periodStart.ToUniversalTime().ToString("yyyy-MM-ddT00:00:00.000Z")
$dateRangeEnd = $periodEnd.ToUniversalTime().ToString("yyyy-MM-ddT23:59:59.999Z")

$body = @{
    dateRangeStart = $dateRangeStart
    dateRangeEnd   = $dateRangeEnd
    summaryFilter  = @{ groups = @("PROJECT") }
    sortColumn     = "DURATION"
    sortOrder      = "DESCENDING"
    users          = @{ ids = @($userId); contains = "CONTAINS" }
} | ConvertTo-Json -Depth 5

$reportUri = "https://reports.api.clockify.me/v1/workspaces/$workspaceId/reports/summary"
$report = Invoke-RestMethod -Uri $reportUri -Headers $headers -Method Post -Body $body

$output = [ordered]@{
    periodStart = $periodStart.ToString("yyyy-MM-dd")
    periodEnd   = $periodEnd.ToString("yyyy-MM-dd")
    workspaceId = $workspaceId
    userId      = $userId
    groupOne    = $report.groupOne
} | ConvertTo-Json -Depth 10

Write-Output $output
