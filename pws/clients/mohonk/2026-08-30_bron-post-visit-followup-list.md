<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Bron's Post-Visit Follow-Up List (source document)

Full list from Bron Walis, received/reviewed 8/30/26 — the authoritative source, more detailed than the summarized version in `2026-08-30_bron-followup-punch-list.md` Section 2. Priorities are Bron's own ratings (Low/Med/High), not Pete's inference. Columns for owner/date/status existed on the original but were blank except where noted.

---

## Reporting / Scheduling Automation

| Item | Priority | Notes |
|---|---|---|
| Automate Transfer Hour Issue Report | Low | X = Casey submitted a ticket to get the Hours Transfer email set up |
| Automate Unable to Reconcile Report | Low | X = Casey submitted a ticket to get the Employee Reconcile email set up |
| Re-automate Banquet Interface | Low | |
| Tighten up Thurs-Sun cover interface | Med | Likely ties to UNIFOCUS-252999 |
| Unifocus to ADP Schedule interface | Low | |
| ADP punch to schedule | Low | Ties to the $4,000 ADP investment item |
| Condense Week to get schedules out earlier | Low | |
| Single Schedule Push by Admin | Low | |
| **Make list of all departments and if they are inputting schedule or not** | **High** | = the adoption audit ask |
| Mobile App | Med | |
| Review next week schedule during Labor meetings, before schedules are published | Med | |
| Try to eliminate duplicate scheduling processes and excel dependencies | Med | |
| **Unifocus Admin** | **High** | = the combined Data Analyst/Labor Management role |
| Approve all schedules at once, benefit allows shared employees to see all their hours | Low | |
| Create new op codes to provide better reporting | Low | |
| More scheduled email reminders to reinforce deadlines | Low | |
| More compliance with every day punch management edits | Low | |

## Training

| Item | Priority | Departments owed |
|---|---|---|
| Learn more about Budgeting in system | Med | |
| Schedule Export Class | Med | Rec, HSK, Prop, FO, Spa |
| Employee Maintenance Class | Med | Rec, HSK, Prop, FO, Spa |

## Spa

| Item | Priority |
|---|---|
| Create a Spa Department | Low |
| Reorganize jobs to fit current environment — 2nd floor duplicates | Low |
| Match standard hours to what is currently being scheduled, as standard hours are inaccurate | Low |
| Get treatment volume KBI working in system, the file is being generated and sent to Unifocus | Low |
| Integrate treatment volume into workload driver for variable positions | Low |
| Seasonality | Low |
| What other KBI data can we pull from Datavision | Low |

---

## Pete's diagnostic findings, 8/30/26 — Spa scheduling root cause

Checked directly in Task Scheduler and Employee Maintenance:

- **Spa IS included in the job filter** for schedule generation — ruling out a scope-omission bug like the earlier Beverage auto-scheduling fix (missing jobs in Generate Schedules task scope).
- **About half of Spa Attendants have permanent schedules.** The other half (and all Spa Body Treatment Department employees/providers) are set to **variable**.
- **The labor standard is not designed to generate schedulable shifts for variable positions** in Spa — this is the real root cause of why schedules aren't generating for those employees, not a task-scheduler config issue.
- **Permanent-schedule employees should have their permanent schedule configured to match their prevailing "availability" set in Book for Time** — a separate, smaller fix.
- **Spa is not set up as a Revenue Center** — so there is no forecast to drive Projected Hours in the first place, regardless of the standard/shift-generation issue above. This is likely the deeper structural reason behind "Create a Spa Department" and "Match standard hours" both being on Bron's list.

Not yet fixed — diagnosis only. Logged to `mohonk-accomplishments.md` under "Diagnosed but not yet fully closed."

---

*Sources: Bron Walis's post-visit follow-up list (screenshot, 8/30/26), Pete's direct system investigation same day.*

*© Peter A. Castellano. All rights reserved.*
