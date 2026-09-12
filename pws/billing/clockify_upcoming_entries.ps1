<#
.SYNOPSIS
Lists individual Clockify time entries in a date range, for the /billing-forecast rest-of-period
projection's day-by-day reconciliation.

.DESCRIPTION
Requires CLOCKIFY_API_KEY. Unlike clockify_period_forecast.ps1 (which uses the Reports API and only
returns period totals per project), this calls the main Clockify API's time-entries endpoint, which
returns individual entries with their date and project -- needed to tell whether a specific future
day already has something logged, so the capacity-based projection doesn't double-count it.

CONFIRMED against live output 2026-07-29: each entry has `projectId` (a bare ID string, NOT an
embedded project name/object) and `timeInterval.start` / `.end` / `.duration`, where `.duration` is
an ISO 8601 duration string (e.g. "PT15M39S") -- the opposite of the Reports API used by
clockify_period_forecast.ps1, which returns plain seconds. A currently-running (unstopped) entry has
`.end` and `.duration` both null; it still counts as "present" for day-reconciliation purposes since
that only needs presence, not a finished duration. To get a project's display name from `projectId`,
match it against the `_id` field already present in clockify_period_forecast.ps1's `groupOne` output
-- don't call a separate projects endpoint for this.

.EXAMPLE
.\clockify_upcoming_entries.ps1 -Start 2026-07-30 -End 2026-07-30
#>

param(
    [Parameter(Mandatory = $true)][string]$Start,
    [Parameter(Mandatory = $true)][string]$End
)

$ErrorActionPreference = "Stop"

$apiKey = $env:CLOCKIFY_API_KEY
if (-not $apiKey) {
    Write-Error "CLOCKIFY_API_KEY environment variable not set. Get a key from Clockify > Profile Settings > API > Generate, then run: [Environment]::SetEnvironmentVariable('CLOCKIFY_API_KEY','your-key-here','User')  -- then restart your terminal."
    exit 1
}

$headers = @{ "X-Api-Key" = $apiKey }

$user = Invoke-RestMethod -Uri "https://api.clockify.me/api/v1/user" -Headers $headers -Method Get
$workspaceId = $user.activeWorkspace
$userId = $user.id

$startIso = (Get-Date $Start).ToUniversalTime().ToString("yyyy-MM-ddT00:00:00.000Z")
$endIso = (Get-Date $End).ToUniversalTime().ToString("yyyy-MM-ddT23:59:59.999Z")

$uri = "https://api.clockify.me/api/v1/workspaces/$workspaceId/user/$userId/time-entries?start=$startIso&end=$endIso&page-size=200"
$entries = Invoke-RestMethod -Uri $uri -Headers $headers -Method Get

# PowerShell 5.1 quirk: an empty array nested in a hashtable can serialize as {"value":[],"Count":0}
# instead of [] -- force it through @() so ConvertTo-Json always treats it as a plain JSON array.
$output = [ordered]@{
    start   = $Start
    end     = $End
    entries = @($entries)
} | ConvertTo-Json -Depth 10
Write-Output $output
