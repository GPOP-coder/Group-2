---
© Peter A. Castellano — Proprietary. Not for model training or redistribution.
---

# Meeting Notes
**Date:** June 19, 2026
**Topic:** Union Station Nashville — Implementation Review
**Attendees:** Pete Castellano, Taylor Walton (Unifocus)
**Duration:** ~2 hours
**Property:** Union Station Nashville | HMAlpha Autograph Collection pilot
**Training week:** June 23–26, 2026

---

## Decisions Made

1. **Banquet KBI import scheduled for 12:30 PM Friday** (rooms import at noon; cannot run simultaneously due to task queue failures)
2. **Revenue center forecast generation moved later than original 1:00 PM** — Brad (Dir. F&B) needs time to review rooms and banquet data first
3. **Time-off approvals moved to Sunday end of day** (not Friday afternoon)
4. **Schedules will be generated per HMAlpha/Ralph directive** despite GM preference not to; Taylor will wait for pushback
5. **"Change schedule state: open for secondary jobs" left on timeline but inactive** — property is not large enough to need it
6. **Brad (Dir. F&B) owns banquet forecast and revenue center forecast** — Director of Banquets is not capable (per GM, confirmed with Devon in room)
7. **BEO actuals confirmed:** "Actual" column in BEO file contains data for past dates — past actuals are being captured correctly
8. **Pete's system login created:** PCastellanoHMAlpha | Union Station Nashville set as default

---

## Issues Raised — Require Escalation

### Banquet KBI Mapping Gap
Sample BEO file only covers ~2 weeks of history. Unmapped event types fall out silently — no error, no warning. Must obtain complete event type configuration list from property EMS (every type, exact spelling) and create a dummy file covering all group/local combinations before training. Raise to Akram/Ralph.

Additionally: Devon Peters' standardization list uses "bar only reception" — system already has "cocktail reception" mapped. Devon must not distribute the new name to properties until this is resolved. Reply on existing Akram/Ralph/Devon email thread.

### Schedule Export to T&A System
Export must trigger on Publish, not on a timer. If timer-based, employees see draft schedules before managers have finished editing. Pete built this publish-trigger for Baha Mar — it exists and works. Needs a ticket and decision at project level (applies to all HMAlpha properties using the same T&A system). Confirm current configuration with Monali before training week.

---

## Confirmed Weekly Cycle

| # | Step | Day | Time | Owner |
|---|---|---|---|---|
| 1 | Planning period opens | Friday | 6:00 AM | Automated |
| 2 | Import rooms forecast (ProfitSword) | Friday | Noon | Automated |
| 3 | Import banquet KBI data | Friday | 12:30 PM | Automated |
| 4 | Edit outlet forecast + review revenue center | Friday | After 12:30 | Brad (Dir. F&B) |
| 5 | Generate revenue center forecast | Friday afternoon | After Brad reviews | Automated |
| 6 | Approve time-off requests | Sunday | End of day | Dept. managers |
| 7 | Generate projected hours | Monday | Noon | Automated |
| 8 | Generate schedules | Monday | ~1:00 PM | Automated |
| 9 | Edit and complete schedules | Wednesday | By noon | All managers |
| 10 | Labor meeting | Wednesday | 1:00 PM | GM + dept. heads |
| 11 | Post schedules | Thursday | — | Managers |

**Daily:**
- Edit actual punches by 11:00 AM (Paycheck T&A cutoff)
- Import actual banquet KBI data at 2:00 PM (automated)
- Generate standard hours at 2:00 PM (automated)

---

## Rooms Forecast / Negative Departures

Union Station's forecast shows negative departures consistently on Mondays. Root cause: revenue team adjusts occupancy in ProfitSword without independently adjusting arrivals. Formula: `Departures = Yesterday's Occupancy + Today's Arrivals - Today's Occupancy`. When arrivals don't track occupancy changes, the result goes negative; Unifocus reads that as zero and understaffs housekeeping.

Fix is upstream (ProfitSword/revenue team). Training opportunity: walk through forecast accuracy screen with managers and show the formula live. Devon has acknowledged ProfitSword needs to be updated more frequently than current every-2-weeks cadence.

---

## Action Items

| # | Action | Owner | Due |
|---|---|---|---|
| 1 | Escalate banquet KBI dummy file / event type list gap to Akram/Ralph | Taylor | Today |
| 2 | Reply to Devon/Akram/Ralph thread: keep "cocktail reception," do not distribute "bar only" | Taylor | Today |
| 3 | Confirm schedule export trigger with Monali; submit ticket for publish-only if not set | Taylor | Today |
| 4 | Confirm property is distributing training materials to ALL managers today or Saturday | Taylor | Today |
| 5 | Send updated timeline to property + Devon; include manager registration status | Taylor | Today |
| 6 | Confirm banquet import task is set for 12:30 PM Friday | Taylor / Monali | This week |
| 7 | Move revenue center forecast generation to later Friday (after Brad reviews) | Taylor | This week |
| 8 | Address negative departures with revenue team during training | Taylor | Training week |

---

*Full technical debrief and KB notes: 2026-06-19_taylor-walton-call-union-station-nashville.md*
