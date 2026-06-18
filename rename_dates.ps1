# rename_dates.ps1
# Renames files from legacy YYYY_MMDD prefix to YYYY-MM-DD prefix.
# Date ranges (YYYY_MMDD-MMDD) become YYYY-MM-DD_YYYY-MM-DD.
# Dry run by default — add -Execute to apply changes.
#
# Usage:
#   .\rename_dates.ps1                        # prompts for directory, dry run
#   .\rename_dates.ps1 -Path "C:\Some\Folder" # dry run, specific folder
#   .\rename_dates.ps1 -Recurse               # dry run, include subfolders
#   .\rename_dates.ps1 -Recurse -Execute      # actually rename

param(
    [string]$Path    = "",
    [switch]$Recurse,
    [switch]$Execute
)

if (-not $Path) {
    $Path = Read-Host "Enter directory path to scan (press Enter for current folder)"
    if (-not $Path) { $Path = "." }
}

if (-not (Test-Path $Path)) {
    Write-Host "Path not found: $Path" -ForegroundColor Red
    return
}

# Range pattern:  YYYY_MMDD-MMDD → YYYY-MM-DD_YYYY-MM-DD
# Single pattern: YYYY_MMDD      → YYYY-MM-DD
$rangePattern  = '^(\d{4})_(\d{2})(\d{2})-(\d{2})(\d{2})(.*)'
$singlePattern = '^(\d{4})_(\d{2})(\d{2})(.*)'

$renamed = 0
$skipped = 0

$getParams = @{ Path = $Path; File = $true }
if ($Recurse) { $getParams.Recurse = $true }

$files = Get-ChildItem @getParams | Where-Object {
    $_.Name -match $rangePattern -or $_.Name -match $singlePattern
}

if (-not $files) {
    Write-Host "No files found matching YYYY_MMDD pattern in: $Path" -ForegroundColor Yellow
    return
}

foreach ($file in $files) {
    $oldName = $file.Name

    if ($oldName -match $rangePattern) {
        # e.g. 2026_0515-0601_rest → 2026-05-15_2026-06-01_rest
        $newName = $oldName -replace $rangePattern, '$1-$2-$3_$1-$4-$5$6'
    } else {
        # e.g. 2026_0512_rest → 2026-05-12_rest
        $newName = $oldName -replace $singlePattern, '$1-$2-$3$4'
    }

    $newPath = Join-Path $file.DirectoryName $newName

    if (-not $Execute) {
        Write-Host "  $oldName" -ForegroundColor Gray
        Write-Host "  → $newName`n" -ForegroundColor Cyan
        $renamed++
    } else {
        if (Test-Path $newPath) {
            Write-Host "SKIP (target exists): $oldName" -ForegroundColor Yellow
            $skipped++
        } else {
            try {
                Rename-Item -Path $file.FullName -NewName $newName -ErrorAction Stop
                Write-Host "RENAMED: $oldName  →  $newName" -ForegroundColor Green
                $renamed++
            } catch {
                Write-Host "FAILED (file in use?): $oldName" -ForegroundColor Red
                $skipped++
            }
        }
    }
}

if (-not $Execute) {
    Write-Host "$renamed file(s) would be renamed. Run with -Execute to apply." -ForegroundColor Cyan
} else {
    Write-Host "Done. $renamed renamed, $skipped skipped." -ForegroundColor Cyan
}
