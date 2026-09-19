# rename_dates.ps1
# Converts legacy date tokens in filenames to the YYYY-MM-DD prefix convention.
#
# Handles:
#   - Prefix dates:   2026_0512 Description.pdf        -> 2026-05-12 Description.pdf
#   - Prefix ranges:  2026_0515-0601 Description.pdf    -> 2026-05-15_2026-06-01 Description.pdf
#   - No-separator prefix (8 digits): 20210826 Description.pdf -> 2021-08-26 Description.pdf
#   - Embedded dates (anywhere in the name, not just the start), moved to the front:
#       Aidvantage Loan Details 2022_0615.pdf -> 2022-06-15 Aidvantage Loan Details.pdf
#   - Unknown-day/month placeholders normalized to "xx":
#       2011_0000 St Matthews.pdf   -> 2011-xx-xx St Matthews.pdf
#       2022_XXXX Escambia.pdf      -> 2022-xx-xx Escambia.pdf
#       2022_03xx Heartland.pdf     -> 2022-03-xx Heartland.pdf
#       2002_0800 Daycare.pdf       -> 2002-08-xx Daycare.pdf   (single "00" part -> xx)
#
# Bare years with no month/day (e.g. "2011 Fairmont President Club.pdf") are left alone -
# nothing to convert without guessing. Malformed/ambiguous tokens (e.g. "20xx_xxx") are
# also left alone and reported.
#
# Vague candidates: an 8-digit run embedded mid-name (not at the start) that passes a basic
# sanity check (looks like 19xx/20xx + a real month 01-12 + a real day 01-31) but isn't
# trusted automatically, since it could be an account/confirmation number instead of a date
# (e.g. "Statement from Chase 20240930 Copy.pdf"). These are never renamed automatically -
# they're written to rename_dates_vague.csv next to this script for review/ask-Pete.
#
# Dry run by default - add -Execute to apply changes.
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

# Normalize a 2-char month/day token: literal "00" (fully unknown) -> "xx"; "XX"/"xx" -> "xx"; real digits pass through.
function Normalize-DatePart([string]$p) {
    if ($p -eq '00') { return 'xx' }
    return $p.ToLower()
}

# Matches a date token anywhere in a string:
#   YYYY_MMDD(-MMDD)?   where M/D chars can be digits or x/X (placeholder)
# Bounded so it doesn't match inside a longer digit run.
$embeddedPattern = '(?<![\d_])(\d{4})_([0-9xX]{2})([0-9xX]{2})(?:-([0-9xX]{2})([0-9xX]{2}))?(?![\d_])'

# 8-digit no-separator date, only trusted at the very start of the name (mid-string is too
# ambiguous - could be an account/confirmation number).
$leadingNoSepPattern = '^(\d{4})(\d{2})(\d{2})(\s.*)?$'

# Bare leading year with no month/day at all - left alone, just used to report as skipped.
$bareYearPattern = '^\d{4}(\s|$)'

# Scanner raw-output timestamp: YYYY_MM_DD_HH_MM_SS (e.g. Brother ADS-2000 default naming).
# This is a scan time, not a content date - convert to the YYYY-MM-DD prefix but keep the
# time as a trailing disambiguator (HHMMSS) so same-day scans never collide. Once a file gets
# a real description during review, the time suffix can be manually dropped.
$scanTimestampPattern = '^(\d{4})_(\d{2})_(\d{2})_(\d{2})_(\d{2})_(\d{2})(.*)$'

# Vague: 8-digit run anywhere (not just the start) that plausibly decodes as YYYYMMDD
# (year 1900-2099, month 01-12, day 01-31). Never auto-renamed - flagged for review.
$vaguePattern = '(?<!\d)((?:19|20)\d{2})(\d{2})(\d{2})(?!\d)'

$renamed = New-Object System.Collections.Generic.List[object]
$skipped = New-Object System.Collections.Generic.List[string]
$vague   = New-Object System.Collections.Generic.List[object]

$getParams = @{ Path = $Path; File = $true }
if ($Recurse) { $getParams.Recurse = $true }

$files = Get-ChildItem @getParams | Where-Object { $_.Name -ne 'desktop.ini' }

foreach ($file in $files) {
    $oldName = $file.Name
    $ext     = $file.Extension
    $base    = $file.BaseName
    $newBase = $null

    # Already converted (starts with a proper YYYY-MM-DD or YYYY-xx-xx prefix) - leave alone.
    # Otherwise a second, meaningful date later in the description (e.g. a WEX FSA "Date of
    # Service" note) would get yanked to the front and scrambled with the real prefix date.
    if ($base -match '^\d{4}-([0-9]{2}|xx)-([0-9]{2}|xx)(_\d{4}-([0-9]{2}|xx)-([0-9]{2}|xx))?(\s|$)') {
        continue
    }

    if ($base -match $scanTimestampPattern) {
        $y = $Matches[1]; $mo = $Matches[2]; $d = $Matches[3]
        $h = $Matches[4]; $mi = $Matches[5]; $s = $Matches[6]; $rest = $Matches[7]
        $newBase = "$y-$mo-$d $h$mi$s$rest"
    }
    elseif ($base -match $leadingNoSepPattern -and $base -notmatch '_') {
        $y = $Matches[1]; $m = $Matches[2]; $d = $Matches[3]; $rest = $Matches[4]
        $newBase = "$y-$(Normalize-DatePart $m)-$(Normalize-DatePart $d)$rest"
    }
    elseif ($base -match $embeddedPattern) {
        $full  = $Matches[0]
        $y     = $Matches[1]
        $m1    = Normalize-DatePart $Matches[2]
        $d1    = Normalize-DatePart $Matches[3]
        $matchIndex = $base.IndexOf($full)

        if ($Matches[4]) {
            $m2 = Normalize-DatePart $Matches[4]
            $d2 = Normalize-DatePart $Matches[5]
            $dateToken = "$y-$m1-$d1" + "_" + "$y-$m2-$d2"
        } else {
            $dateToken = "$y-$m1-$d1"
        }

        if ($matchIndex -eq 0) {
            # Prefix case - keep whatever separator/text followed the original token.
            $remainder = $base.Substring($full.Length)
            $newBase = "$dateToken$remainder"
        } else {
            # Embedded case - remove the token from its spot, move date to the front.
            $remainder = $base.Remove($matchIndex, $full.Length)
            $remainder = ($remainder -replace '\s{2,}', ' ').Trim()
            $remainder = $remainder.Trim('-', ' ')
            if ($remainder) {
                $newBase = "$dateToken $remainder"
            } else {
                $newBase = $dateToken
            }
        }
    }

    if ($newBase) {
        $newName = "$newBase$ext"
        if ($newName -ne $oldName) {
            $renamed.Add([PSCustomObject]@{
                Old      = $oldName
                New      = $newName
                FullPath = $file.FullName
                Dir      = $file.DirectoryName
            })
        }
    }
    elseif ($base -match $bareYearPattern) {
        $skipped.Add($oldName)
    }
    elseif ($base -match $vaguePattern) {
        $full = $Matches[0]
        $y = $Matches[1]; $m = $Matches[2]; $d = $Matches[3]
        $month = [int]$m; $day = [int]$d
        if ($month -ge 1 -and $month -le 12 -and $day -ge 1 -and $day -le 31) {
            $dateToken = "$y-$m-$d"
            $matchIndex = $base.IndexOf($full)
            $remainder = $base.Remove($matchIndex, $full.Length)
            $remainder = ($remainder -replace '\s{2,}', ' ').Trim()
            $remainder = $remainder.Trim('-', ' ')
            $suggestedNew = if ($remainder) { "$dateToken $remainder$ext" } else { "$dateToken$ext" }
            $vague.Add([PSCustomObject]@{
                Old           = $oldName
                CandidateDate = $dateToken
                SuggestedNew  = $suggestedNew
                FullPath      = $file.FullName
                Dir           = $file.DirectoryName
            })
        }
    }
}

# Collision check: two renames landing on the same target, or target already exists on disk.
$conflicts = New-Object System.Collections.Generic.List[string]
$seen = @{}
foreach ($r in $renamed) {
    $key = Join-Path $r.Dir $r.New
    if ($seen.ContainsKey($key)) { $conflicts.Add($r.New) }
    else { $seen[$key] = $true }
}
foreach ($r in $renamed) {
    $targetPath = Join-Path $r.Dir $r.New
    if ((Test-Path -LiteralPath $targetPath) -and ($r.New -ne $r.Old)) {
        $conflicts.Add($r.New)
    }
}
$conflicts = $conflicts | Select-Object -Unique

Write-Host "Scanned: $($files.Count)  |  To rename: $($renamed.Count)  |  Skipped (bare year): $($skipped.Count)  |  Vague (needs review): $($vague.Count)  |  Conflicts: $($conflicts.Count)" -ForegroundColor Cyan

if ($skipped.Count -gt 0) {
    Write-Host "`nSkipped (bare year, no month/day to convert):" -ForegroundColor Yellow
    $skipped | ForEach-Object { Write-Host "  $_" -ForegroundColor Yellow }
}

if ($vague.Count -gt 0) {
    $vagueLog = Join-Path $PSScriptRoot 'rename_dates_vague.csv'
    $vague | Select-Object Old, CandidateDate, SuggestedNew | Export-Csv -LiteralPath $vagueLog -NoTypeInformation -Encoding UTF8
    Write-Host "`nVague (embedded 8-digit run looks date-shaped but not trusted automatically - review before applying):" -ForegroundColor Magenta
    $vague | ForEach-Object { Write-Host "  $($_.Old)  [candidate: $($_.CandidateDate)]  ->  $($_.SuggestedNew)" -ForegroundColor Magenta }
    Write-Host "Saved to: $vagueLog" -ForegroundColor Magenta
}

if ($conflicts.Count -gt 0) {
    Write-Host "`nConflicts (would collide with an existing/another new name) - resolve before running -Execute:" -ForegroundColor Red
    $conflicts | ForEach-Object { Write-Host "  $_" -ForegroundColor Red }
}

Write-Host ""
foreach ($r in $renamed) {
    if (-not $Execute) {
        Write-Host "  $($r.Old)" -ForegroundColor Gray
        Write-Host "  -> $($r.New)`n" -ForegroundColor Cyan
    } else {
        if ($conflicts -contains $r.New) { continue }
        try {
            Rename-Item -LiteralPath $r.FullPath -NewName $r.New -ErrorAction Stop
            Write-Host "RENAMED: $($r.Old)  ->  $($r.New)" -ForegroundColor Green
        } catch {
            Write-Host "FAILED (file in use?): $($r.Old)" -ForegroundColor Red
        }
    }
}

if (-not $Execute) {
    Write-Host "$($renamed.Count) file(s) would be renamed. Run with -Execute to apply." -ForegroundColor Cyan
} else {
    Write-Host "Done." -ForegroundColor Cyan
}

