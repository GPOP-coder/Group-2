# compare_folders.ps1
# Compares two folder trees (e.g. after a sync got tangled across machines and produced
# a stray duplicate/backup folder). Report only - never deletes or moves anything.
#
# For each file under -OldPath, checks whether the same relative path exists under -LivePath:
#   - Missing in live tree      -> ONLY IN OLD (nothing to compare against; needs a human look)
#   - Present, identical (SHA256 match) -> IDENTICAL (old copy is a safe-to-discard duplicate)
#   - Present, different content         -> DIFFERS (report size/modified date on both sides)
#
# Usage:
#   .\compare_folders.ps1 -OldPath "C:\...\Personal Finance UF" -LivePath "C:\...\Personal Finance"

param(
    [Parameter(Mandatory = $true)][string]$OldPath,
    [Parameter(Mandatory = $true)][string]$LivePath
)

if (-not (Test-Path -LiteralPath $OldPath))  { Write-Host "Path not found: $OldPath" -ForegroundColor Red; return }
if (-not (Test-Path -LiteralPath $LivePath)) { Write-Host "Path not found: $LivePath" -ForegroundColor Red; return }

$oldFiles = Get-ChildItem -LiteralPath $OldPath -File -Recurse
$results = @()

foreach ($f in $oldFiles) {
    $relPath = $f.FullName.Substring($OldPath.Length).TrimStart('\')
    $livePath = Join-Path $LivePath $relPath

    if (-not (Test-Path -LiteralPath $livePath)) {
        $results += [PSCustomObject]@{
            RelPath = $relPath; Status = "ONLY IN OLD"
            OldSize = $f.Length; OldMod = $f.LastWriteTime
            LiveSize = $null; LiveMod = $null
        }
        continue
    }

    $liveFile = Get-Item -LiteralPath $livePath
    $oldHash  = (Get-FileHash -LiteralPath $f.FullName -Algorithm SHA256).Hash
    $liveHash = (Get-FileHash -LiteralPath $livePath -Algorithm SHA256).Hash
    $status = if ($oldHash -eq $liveHash) { "IDENTICAL" } else { "DIFFERS" }

    $results += [PSCustomObject]@{
        RelPath = $relPath; Status = $status
        OldSize = $f.Length; OldMod = $f.LastWriteTime
        LiveSize = $liveFile.Length; LiveMod = $liveFile.LastWriteTime
    }
}

$logPath = Join-Path $PSScriptRoot 'compare_folders_report.csv'
$results | Export-Csv -LiteralPath $logPath -NoTypeInformation -Encoding UTF8

$identical = $results | Where-Object { $_.Status -eq 'IDENTICAL' }
$differs   = $results | Where-Object { $_.Status -eq 'DIFFERS' }
$onlyOld   = $results | Where-Object { $_.Status -eq 'ONLY IN OLD' }

Write-Host "Total files in '$OldPath': $($results.Count)" -ForegroundColor Cyan
Write-Host "  Identical to live copy (safe duplicate): $($identical.Count)" -ForegroundColor Green
Write-Host "  Differs from live copy (needs review):   $($differs.Count)" -ForegroundColor Yellow
Write-Host "  Only exists in old folder (no live match): $($onlyOld.Count)" -ForegroundColor Magenta

if ($differs.Count -gt 0) {
    Write-Host "`n=== DIFFERS ===" -ForegroundColor Yellow
    $differs | ForEach-Object {
        Write-Host "  $($_.RelPath)" -ForegroundColor Yellow
        Write-Host "    old:  $($_.OldSize) bytes, modified $($_.OldMod)"
        Write-Host "    live: $($_.LiveSize) bytes, modified $($_.LiveMod)"
    }
}

if ($onlyOld.Count -gt 0) {
    Write-Host "`n=== ONLY IN OLD ===" -ForegroundColor Magenta
    $onlyOld | ForEach-Object { Write-Host "  $($_.RelPath)" -ForegroundColor Magenta }
}

Write-Host "`nFull report saved to: $logPath" -ForegroundColor Cyan
