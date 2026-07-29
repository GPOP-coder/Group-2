---
description: On-demand period-to-date billable forecast, pulled live from Clockify
---

# PWS Billing Forecast

Checks progress toward the current (or specified) billing period **on demand**, without waiting for invoice time. Pulls live data straight from Clockify via API — this is a **forecast/status check, not the invoice itself**. Final invoicing still runs from the Clockify summary PDF report exactly as `/invoice` already does; this command is for checking where things stand mid-period.

## Usage

`/billing-forecast [start date] [end date]` — e.g., `/billing-forecast 2026-07-16 2026-07-31`

If no dates given, defaults to the **current Unifocus billing period** (1st–15th or 16th–end of month, matching the twice-monthly invoice deadline).

---

## Step 1 — Run the Clockify pull

Run `pws/billing/clockify_period_forecast.ps1` via PowerShell, passing `-Start` / `-End` if `$ARGUMENTS` supplied dates.

If it errors with a missing `CLOCKIFY_API_KEY`, stop and relay the setup instructions from the script's error message — don't try to work around it.

The script outputs JSON: `periodStart`, `periodEnd`, `workspaceId`, `userId`, and `groupOne` (array of `{name, duration, ...}` per Clockify project, `duration` as an ISO 8601 duration string, e.g. `PT8H30M`).

**Note:** this is the first live run of this script — the exact shape of `groupOne` is based on Clockify's documented Reports API but hasn't been verified against real output yet. If the response shape doesn't match what's expected, read the raw JSON directly and adapt rather than assuming the script is correct — flag the mismatch to Pete so the script can be fixed once, not every run.

---

## Step 2 — Load rates from rate table

Read `pws/billing/rate-table.md`. Look up each project name from `groupOne` exactly, same as `/invoice` Step 3.

- If found: use the rate from the table
- If not found: flag as unrecognized — same New Project Protocol as `/invoice` Step 7 (ask onsite/remote, casino or not, add to rate-table.md, remind Pete to add both variants to Clockify)
- $0 / tracking-only projects: include in the hours summary for awareness, but exclude from the dollar forecast

---

## Step 3 — Calculate days and running totals

Same math as `/invoice` Steps 4:
1. Convert each project's duration to decimal hours
2. **Raw days** = decimal hours ÷ 8
3. **Truncated days** = drop all digits after the 3rd decimal place (do NOT round up)
4. **Line Total** = truncated days × rate

Sum to a period-to-date total per billing client (Unifocus, Davidson MHBR, Grand Hyatt Baha Mar — same grouping as `/invoice` Step 5).

---

## Step 4 — Present the forecast

Show, per billing client:
- Days/hours logged so far this period, by project
- Dollar total so far
- Days remaining in the period (today through period end)

Then a clear closing line: **"This is a forecast from live Clockify data — run `/invoice` against the actual Clockify PDF report at period close for the real invoice."** Don't let this be mistaken for the invoice itself.
