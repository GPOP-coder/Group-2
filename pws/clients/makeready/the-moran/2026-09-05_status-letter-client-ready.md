<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran, Houston — Planning & Scheduling Status Report — CLIENT-READY (for Word template)

**Source:** Condensed and updated from `2026-09-02_status-report-draft.md` (internal working draft, now current through Friday 9/4's automated run outcome and Friday afternoon's follow-up call with Monica Brock) for direct paste into the standard Unifocus P&S Status Letter Word template. Formatted to match the Mohonk and Westin La Paloma client-ready reference letters.

**Editorial notes (do not paste into the form):**
- **Status/Trend confirmed by Pete 9/8/26: 🟡 Caution** (changed from the 9/5 first-pass 🔴 At Risk call) — reflects both Friday's partial auto-schedule improvement and the additional ground covered on Friday afternoon's follow-up call (further evidence ruling out employee availability as the cause, a distinct schedule-quality gap found and assigned an owner, and the contract-labor placeholder walkthrough delivered).
- **Left out as internal-only, not client-facing status:** Steve Carrell's read on the property's/Makeready's broader enthusiasm or commitment toward Unifocus, and any related speculation about the wider Makeready/Unifocus relationship; the internal email-delivery mail-profile mixup on 9/3; storm context beyond its two concrete operational effects; and the play-by-play of which support rep proposed which wrong theory — condensed to what was actually found and what's still needed from Unifocus.
- **Status color confirmed by Pete 9/9/26: 🟠 At Risk** (orange, not yellow). The legend's "GM action needed" wording is old Hilton-implementation-era language that doesn't literally apply here — the intervention actually needed is on the Unifocus leadership side, already triggered by escalating UNIFOCUS-261575 to Shilpa Bhando. Orange is the honest tier given the defect is still open after more than a week and go-live is genuinely compromised, not because the property/GM owes an action.
- **This is the second status report for this engagement, not the first.** Steve Carrell's config-visit report (08/17–08/21, filed as 🟢 On Target / ↑ Improved — see `2026-08-21_steve-carrell-status-report.md`) is the actual prior letter. "Since Previous Update: Deteriorated" is the honest call against that baseline: the Generate Schedules defect and everything it exposed emerged after a report that called things on-target, not as a decline within this report's own week.

---

## Project Detail

| Field | Value |
|---|---|
| **Name of hotel(s)** | The Moran CITYCENTRE, Houston (244 rooms/suites; independent boutique, AAA Four Diamond; F&B: Café Moran, The Allegory Bar) |
| **Name of Unifocus consultant(s)** | Pete Castellano (training); Steve Carrell (configuration) |
| **Interfaces** | ADP roster/actuals import and one-direction schedule export both functioning — confirmed again 9/4/26, when an earlier-corrected Bell/Valet miscoding was verified showing correctly, validating the ~1–2 day propagation timing. Several other ADP-side data-quality issues found and referred to the property/HR for correction (not Unifocus defects). Delphi banquet forecast/actuals still manual pending an automation build. ProfitSword missing Allegory's beverage revenue — already escalated by the property directly to ProfitSword/Actabl. Generate Schedules — see Project Status. |
| **Implementation** | Training surfaced real gaps between the built standards and day-to-day operation — a mislabeled covers threshold, several ADP coding gaps, and missing minimum-hours-between-shifts and minimum-days-off settings in Labor Structure — now being corrected in sequence. DOF Monica Brock made some changes to the weekly timeline and the automated Task Scheduler was modified to match. |
| **Training** | One System Administration block delivered 8/31 (of two required); both Tuesday 9/1 Manager group sessions delivered; Kimani Demens's individual manager session complete 9/2; Thursday 9/3 Manager group session and Monica Brock's second Admin/working session both delivered. All onsite manager training for this visit is complete. Remaining Admin topics (Forecast Structure and Work Rules) were not reached due to time constraints and need a follow-up session. |
| **Visit Dates** | Onsite training Mon 8/31/26 – Thu 9/3/26 |
| **Go-Live Date** | This week (ongoing) — the property's automated weekly schedule-generation cycle is now correctly running on its intended Thursday/Friday timing; the first full run against a live planning week (9/13-9/19) fired Friday 9/4 and produced a partial, still-incomplete result — see Project Status. |
| **Distribution List** | The Moran / Makeready: Robbie Nasser (Area Managing Director), Michelle Lewis (Corp. Dir. Rooms & Guest Experience), Monica Brock (DOF). Unifocus: Steve Carrell, Taylor Walton, John Grech, Alain Derderian, Shilpa Bhando (VP Operations). |

**Status: 🟠 At Risk | Since Previous Update: Deteriorated**

**Project Status:** Training for this visit is fully delivered. 

The week's most significant finding was a defect in the system's Generate Schedules function, producing zero filled shifts property-wide - independently reproduced by Unifocus support against the property's actual planning week.  We entered UNIFOCUS-261575 and escalated to Shilpa Bhando (VP of Operations).  The revised Thursday/Friday weekly timeline redesigned with Monica Brock during the training visit was realigned in the Task Scheduler. 

Friday's automated run (the first full test of the updated timeline, against the property's current live planning week of 9/13-9/19) produced a real but partial improvement: two areas of the property, Bell/Front Office and salaried Engineering, populated correctly or near-correctly, while the rest of the property remains largely unfilled. This narrows the defect meaningfully: Generate Projected Hours is functioning correctly across the property, and the issue is isolated to schedule *generation*. Unifocus support's first proposed explanation (incomplete employee availability settings) has been directly tested against real data and ruled out.  A live review on Friday 9/4/26 afternoon found a second, independent example (an employee with no availability settings entered at all who was nonetheless assigned multiple shifts, including a double) reinforcing this. The refined finding, that two specific, dissimilar areas of the property populate correctly while the rest does not, has been provided to Unifocus support as the basis for further diagnosis. 

That same Friday review also surfaced a distinct, smaller configuration gap: minimum-hours-between-shifts and minimum-days-off were never set in Labor Structure, so the small number of employees who did get shifts received back-to-back shifts.  These settings need to be added to the Labor Structure. **Further narrowed 9/8/26:** a portion of what looked like part of the auto-scheduler issue turned out to have a known, non-Unifocus cause.  Room Attendant, Houseperson, and similar jobs weren't populating because managers hadn't yet completed employee Assignments in Employee Maintenance, a property responsibility, not a system issue. Support has been given three sharper, unexplained examples (Public Area Attendant, Laundry Attendant, and all jobs in Allegory Bar) that remain genuine defect evidence. 

On the implementation side, Pete walked the property's Director of Finance through building contract-labor placeholder employees using a reference-property example; the property is now confirming its actual per-job headcount needs (Housekeeping, Bell) before those records are built. Training also surfaced a number of real, previously-unknown data-quality issues in the ADP feed, a labor-standard miscalibration in Housekeeping, and a still-manual banquet forecast/actuals process pending a Delphi automation build — none of these are Unifocus configuration issues, and all are being tracked for correction with the property and, where applicable, Makeready corporate. 

System Admin training remains incomplete (two topics never reached) and needs a follow-up session. This training fell during month-end posting, the kickoff week of 2027 budgeting, and a lone DOF interviewing candidates to fill open positions in Finance.

---

## Detail — Work Rules, Interfaces, Standards

**Work Rules**
A property-wide unpaid-lunch rule triggers automatically once a shift crosses 6 hours. Whether an employee scheduled exactly 6 hours must stay the extra 30 minutes or may leave at 6 is an open HR/policy question, referred to Monica Brock/HR. 

**Interfaces**

**ADP** — schedule export and Employee Reconcile and Transfer Hours imports all functioning as designed (a rolling 14-day actuals window; corrected records take roughly 1-2 days to propagate). Several live data-quality issues found and referred to the property/HR for correction **directly in ADP**: department/job-code mismatches affecting a handful of Bell, Front Desk, and F&B staff (including one employee missing a second job code entirely (Night Auditor), raising a possible unpaid shift-differential question); a bartender working two outlets coded as one generic job; and several banquet-secondary-job staff not double-coded to appear when a manager filters for that role. Makeready corporate payroll has independently compiled a list of ADP double-coding issues that may allow a batch correction across several of these at once. 

**Delphi** — the banquet forecast is still entered manually rather than by its intended owner, and the daily rooms+banquet export to Unifocus is a manual daily action; the intended automation is designed but not yet built. Banquet BEOs not being consistently closed out in Delphi is a known, explainable source of standard-vs-actual variance at the labor meeting. 

**ProfitSword** — Allegory's beverage revenue is confirmed missing from the raw export, a ProfitSword/Actabl-side issue already escalated directly to ProfitSword by the property.

**Labor Standards**

The outlet cook standard has a covers-volume trigger believed to be mislabeled (AM/PM); a live correction attempt was blocked by an unexplained system permission issue, not yet resolved. 

Several Banquet labor standards (Culinary Action Stations, Bartender) depend on manual KBI entry with no single assigned owner yet.  

Housekeeping runs an estimated ~80% contract labor on peak days against only 3 named employees currently on file; contract-labor placeholder employees are agreed in concept, and a build walkthrough was delivered to the Director of Finance 9/4/26 using a reference-property example (one job per placeholder employee, sized to the single busiest day's need rather than a running total) — the property is now gathering actual per-job headcount needs before building them (Housekeeping Room Attendant ballparked at 12–15).

**Labor Structure**
Only non-exempt employees are currently scheduled in Unifocus; salaried staff are not scheduled under the current setup. Two distinct bartender job codes currently share one generic display title, creating shift-eligibility ambiguity, flagged for ADP-side cleanup. Found 9/4/26 while reviewing the first live auto-generated schedule: minimum-hours-between-shifts (10-hour default) and Minimum Days Off were not configured, so the small number of employees who did get shifts received back-to-back double shifts.  Unable to correct this, it was flagged to Steve for an update.

**Planning & Schedule Timeline**
A revised weekly timeline was redesigned with the Finance Director to prevent the weekly labor meeting from interfering with another long-standing weekly meeting.  Friday's first full run under the updated timeline is discussed under Project Status above.

**Database Status**
Still settling. Training surfaced real ADP data-quality issues in the employee database, most referred to HR/ADP for correction. An unexplained Work Class anomaly (every employee showing Work Class 12) was bulk-corrected to Full Time as a test; this did not affect the Generate Schedules issue, so its origin remains unexplained but is not believed to be related.

**Unifocus Mobile App**
Not yet activated for this property. Activation is a Makeready corporate-level decision; Pete's recommendation is to hold off until managers are comfortable completing schedules in the system first.

**Standards Test**
No formal budget-vs-standards pass has been completed for this property. The budget was built by a previous owner and does not necessarily match the current operation.  We demonstrated using the Labor Productivity report and setting productivity goals in Labor Structure, as a way to test standards to budget.

---

## Planning Going Forward

**Training**
- Schedule a remote or return-visit follow-up to close the Admin curriculum gap: Forecast Structure and Work Rules.
- Schedule a dedicated F&B forecasting follow-up regarding manual Action Stations, and Bartender KBIs with whoever owns that role.
- Department managers to complete employee Employee Maintenance especially Assignment settings for Room Attendant, Houseperson, and similar jobs.  This was found to be blocking those specific jobs' schedules from populating; a manager task, not a Unifocus fix.

**Configuration**
- Confirm and correct the ADP job/department-code mismatch issues found during the visit; apply Makeready corporate payroll's secondary job coding list as indicated by their own corporate investigation.
- Build the contract-labor placeholder employees once the property confirms per-job headcount needs. finalize naming convention.
- Configure minimum-hours-between-shifts (10 hrs) and Minimum Days Off in Labor Structure — gap found 9/4/26 during the first live schedule review.
- Correct the mislabeled AM/PM covers threshold on the outlet cook standard.
- Ensure the Export Schedules automation works as expected with live schedules.
- Audit the productivity-goals and update with any revised budget decision.
- Decide the six-hour-shift unpaid-lunch policy question with HR.
- Extend the Revenue Management rooms forecast window to match Unifocus's requirement (property currently sends 10 days; 16 needed).

**Interfaces**
- **Resolve the Generate Schedules issues — the critical path item for this engagement.**  Unifocus support now has specific, evidence-based comparisons to examine
- Set up the Delphi banquet daily-file automation and build the corresponding Unifocus mapping once the file is reliable.
- Continue monitoring the property's own ProfitSword/Actabl escalation on Allegory's missing beverage revenue — no action currently needed from Unifocus.
- Establish a consistent owner for who closes out banquet BEOs in Delphi so the interface provides actual cover counts and banquet labor standards receive credit for labor actually worked.

**Other**
- Confirm a resolution date for the Generate Schedules defect and validate it against a full live weekly cycle before treating go-live as complete.



**Customer Sign Off:** _____________________________ Date: ___________

---

*© Peter A. Castellano. All rights reserved.*
