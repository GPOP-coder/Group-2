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

The script outputs JSON: `periodStart`, `periodEnd`, `workspaceId`, `userId`, and `groupOne` (array of `{name, duration, ...}` per Clockify project). **Confirmed 2026-07-29: `duration` is plain seconds (integer), not an ISO 8601 duration string** — divide by 3600 for hours.

---

## Step 2 — Pull capacity for the same period

Run `pws/billing/capacity_from_workdays.ps1 -Start <periodStart> -End <periodEnd>`, using the exact `periodStart`/`periodEnd` from Step 1's output so both pulls cover the identical range.

This reads the "`<year> PTO`" tab(s) of `C:\Users\peter\OneDrive\Documents\UF Expense Reports\Work Days.xlsx` (Column A = date, Column D = Capacity: 8.00 on a normal workday, 0.00 on a PTO/Holiday/Sick/etc. day, blank on weekends) and sums Column D across the range. It opens the workbook read-only in a separate hidden Excel instance, so it's safe to run even while Pete has the file open.

Output JSON: `capacityHours` (the utilization denominator), `daysInRange`, and `yearsSkipped` (years in the range with no matching `"<year> PTO"` tab — flag this to Pete if non-empty, don't silently treat missing years as zero capacity).

If Excel COM fails (e.g. Excel not installed/available), stop and relay the error — don't estimate capacity another way without asking Pete first.

---

## Step 3 — Load rates from rate table

Read `pws/billing/rate-table.md`. Look up each project name from `groupOne` exactly, same as `/invoice` Step 3.

- If found: use the rate from the table
- If not found: flag as unrecognized — same New Project Protocol as `/invoice` Step 7 (ask onsite/remote, casino or not, add to rate-table.md, remind Pete to add both variants to Clockify)
- $0 / tracking-only projects: include in the hours summary for awareness, but exclude from the dollar forecast

---

## Step 4 — Calculate days and running totals

Same math as `/invoice` Steps 4:
1. Convert each project's duration to decimal hours
2. **Raw days** = decimal hours ÷ 8
3. **Truncated days** = drop all digits after the 3rd decimal place (do NOT round up)
4. **Line Total** = truncated days × rate

Sum to a period-to-date total per billing client (Unifocus, Davidson MHBR, Grand Hyatt Baha Mar — same grouping as `/invoice` Step 5).

---

## Step 5 — Calculate utilization

Two separate percentages, both against the same `capacityHours` denominator from Step 2:

- **Billable Utilization %** = (sum of decimal hours across projects marked `Invoice? = Yes` in the rate table) ÷ `capacityHours` × 100
- **Tracked Utilization %** = (sum of decimal hours across *every* project in `groupOne` — billable, tracking-only, and unrecognized alike) ÷ `capacityHours` × 100

Tracked Utilization is intentionally broader than the invoice — it's how Pete accounts for productive non-billable time spent on WJC (father's POA work), PWS overhead, BTTR, and NTSG, not just what converts to revenue.

**Do not cap either percentage at 100%.** Pete can legitimately work more than one project's worth of hours in a day (e.g. billable work on a second project while onsite for another) — a figure over 100% is a real signal, not an error to clamp away.

---

## Step 6 — Forecast the rest of the period

Skip this step entirely if today *is* `periodEnd` (nothing left to project).

Step 1 already re-pulls the *whole* period on every run, so today's actual hours (whatever's logged by the moment this runs — could be zero if it's morning, could be a full day if it's evening) are always already reflected in Step 4's totals. This step only projects days that haven't happened yet or haven't been logged yet — it does not re-query "today" separately.

1. **Get per-day capacity for the remaining range:** Run `pws/billing/capacity_from_workdays.ps1 -Start <today> -End <periodEnd>` and use its `dailyBreakdown` array. Including today here (rather than starting tomorrow) is what makes Step 7's "today so far" line possible — but see step 3 below, today is still excluded from the forward projection itself since Step 4 already counts whatever's logged for it.
2. **Get pre-logged future entries:** Run `pws/billing/clockify_upcoming_entries.ps1 -Start <today> -End <periodEnd>` to see whether Pete has already entered time for any of the remaining days (e.g. pre-logging a known upcoming onsite week). Group the returned entries by date (from `timeInterval.start`). Each entry has `projectId` only, not a project name — resolve the name by matching against the `_id` field on projects already returned in Step 1's `groupOne`. A currently-running entry (`timeInterval.end` / `.duration` both null) still counts as present for this reconciliation.
3. **Walk each remaining day (tomorrow through periodEnd) and decide how to treat it:**
   - **Has an entry already** (any project, any hours — presence alone is enough): exclude this day from the capacity-based projection entirely. It's already counted in Step 4's actuals via Step 1's full-period pull, so adding projected hours for it would double-count. Then check for a conflict (next bullet).
   - **Conflict check** (only applies to days with an entry): look up whether this date falls within a **confirmed** engagement in CLAUDE.md's "Upcoming Travel" section. If it does, and the logged entry's project doesn't match that engagement's expected project, flag it as a conflict for Pete to review. If the date has no known plan at all, or the entry's project matches the plan, it's not a conflict — don't flag a day just because it hasn't been logged yet either; that's expected, not a conflict.
   - **No entry yet:** include this day's capacity in the projection at the applicable rate (see rate logic below).
4. **Remaining projected days** = sum of capacity (in hours, ÷ 8 for days) across only the "no entry yet" days from step 3. Do not truncate — this is a hypothetical projection, not a billable line item.
5. **Pick the rate for the projected days:**
   - Default: **$500/day** (PWS lowest remote rate).
   - Check CLAUDE.md's "Upcoming Travel" section for any **confirmed** (not tentative) onsite/travel engagement whose dates overlap the still-unlogged remaining days. If one overlaps, look up that engagement's project in `rate-table.md` and use its rate for those days instead of the default.
   - If the unlogged remaining days split between a confirmed engagement and ordinary remote days, split the projection accordingly: engagement rate for its days, default rate for the rest.
   - If a matching engagement exists but is only **tentative**, don't apply its rate to the main projection — call it out as a separate "if this trip is confirmed" what-if figure alongside the default-rate projection, don't blend it in silently.
6. **Projected rest-of-period dollars** = remaining projected days × applicable rate(s), summed if split across rates.
7. **Projected period-end total** = Step 4's period-to-date total (which already includes any pre-logged future entries found in step 2) + projected rest-of-period dollars from step 6.

If anything here doesn't fit cleanly into this logic — an edge case not covered above — stop and ask Pete rather than guessing at how to handle it.

---

## Step 7 — Present the forecast

Show, per billing client:
- Days/hours logged so far this period, by project
- Dollar total so far
- **Today:** hours logged today so far vs. 8.0 (e.g. `Today: 2.7 / 8.0 hrs logged`) — call this out explicitly rather than folding it silently into the period total, especially since this may be run early in the day
- Days remaining in the period (today through period end)

Then show both utilization figures together with their inputs, e.g.:
`Billable Utilization: 29.2 / 96.0 hrs = 30.4%` and `Tracked Utilization: 39.9 / 96.0 hrs = 41.6%`

Then, if Step 6 ran:
- Any conflicts found (Step 6.3) — list each: date, what was logged, what was expected per the known travel plan
- The rest-of-period projection, clearly labeled as hypothetical, e.g.:
  `Projection: 12.0 unlogged remaining hrs (1.5 days) at $500/day = $750 → projected period-end total: $2,700.40 (not logged time — a forecast only)`
- If a tentative-trip what-if applies, show it as a second, clearly separate line rather than folding it into the main projection

Then a clear closing line: **"This is a forecast from live Clockify data — run `/invoice` against the actual Clockify PDF report at period close for the real invoice."** Don't let this be mistaken for the invoice itself.
