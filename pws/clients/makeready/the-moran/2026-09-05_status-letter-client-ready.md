<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran, Houston — Planning & Scheduling Status Report — CLIENT-READY (for Word template)

**Source:** Condensed and updated from `2026-09-02_status-report-draft.md` (internal working draft, now current through Friday 9/4's automated run outcome) for direct paste into the standard Unifocus P&S Status Letter Word template. Formatted to match the Mohonk and Westin La Paloma client-ready reference letters.

**Editorial notes (do not paste into the form):**
- **Status/Trend indicator below is a first-pass call, not yet confirmed by Pete** — adjust before sending if you see it differently.
- **Left out as internal-only, not client-facing status:** Steve Carrell's read on the property's/MakeReady's broader enthusiasm or commitment toward Unifocus, and any related speculation about the wider MakeReady/Unifocus relationship; the internal email-delivery mail-profile mixup on 9/3; storm context beyond its two concrete operational effects; and the play-by-play of which support rep proposed which wrong theory — condensed to what was actually found and what's still needed from Unifocus.
- **This is the first status report sent for this engagement** — Trend is marked N/A rather than compared against a prior letter.

---

## Project Detail

| Field | Value |
|---|---|
| **Name of hotel(s)** | The Moran CITYCENTRE, Houston (244 rooms/suites; independent boutique, AAA Four Diamond; F&B: Café Moran, The Allegory Bar) |
| **Name of Unifocus consultant(s)** | Pete Castellano (training); Steve Carrell (configuration) |
| **Interfaces** | ADP roster/actuals import and one-direction schedule export both functioning; several ADP-side data-quality issues found and referred to the property/HR for correction (not Unifocus defects). Delphi banquet forecast/actuals still manual pending an automation build. ProfitSword missing Allegory's beverage revenue — already escalated by the property directly to ProfitSword/Actabl. Generate Schedules — see Project Status. |
| **Implementation** | Configuration completed by Steve Carrell. Training surfaced real gaps between the built standards and day-to-day operation — a mislabeled covers threshold, a Housekeeping productivity-target discrepancy, and several ADP coding gaps — now being corrected in sequence. The property's automated weekly forecast/schedule cycle was found materially misconfigured at the start of the week and has been corrected and re-verified twice. |
| **Training** | One Admin block delivered 8/31 (of two required); both Tuesday 9/1 Manager group sessions delivered; Kimani Demens's individual session complete 9/2; Thursday 9/3 Manager group session and Monica Brock's second Admin/working session both delivered. All onsite training for this visit is complete. Remaining Admin topics (Key Business Indicators, Labor/Global Environments, Work Rules) were not reached and need a follow-up session. |
| **Visit Dates** | Onsite training Mon 8/31/26 – Thu 9/3/26 |
| **Go-Live Date** | This week (ongoing) — the property's automated weekly schedule-generation cycle is now correctly running on its intended Thursday/Friday timing; the first full run against a live planning week (9/13-9/19) fired Friday 9/4 and produced a partial, still-incomplete result — see Project Status. |
| **Distribution List** | The Moran / MakeReady: Robbie Nasser (Area Managing Director), Michelle Lewis (Corp. Dir. Rooms & Guest Experience), Monica Brock (DOF). Unifocus: Steve Carrell, Alain Derderian, Shilpa Bhando (VP Operations). |

**Status: 🔴 At Risk | Since Previous Update: N/A — first status report for this engagement**

**Project Status:** Training for this visit is fully delivered. The week's most significant finding was a defect in the system's Generate Schedules function, producing zero filled shifts property-wide — independently reproduced by Unifocus support against the property's actual target week, and escalated to Shilpa Bhando (VP of Operations). Alongside this, a real process gap was found and corrected: the revised Thursday/Friday forecast-to-schedule cycle designed with Monica Brock during the visit had never actually been activated in the system's automation, and was still running on its original setup — corrected live and re-verified. Friday's automated run (the first full test of the corrected cycle, against the property's current live planning week of 9/13-9/19) produced a real but partial improvement: two areas of the property — Bell/Front Office and salaried Engineering — populated correctly or near-correctly, while the rest of the property remains largely unfilled. This narrows the defect meaningfully: schedule *projection* (translating forecast into required hours) is functioning correctly across the property, and the issue is isolated to schedule *generation* (assigning specific employees to those hours). Unifocus support's first proposed explanation (incomplete employee availability settings) has been directly tested against real data and ruled out. The refined finding — that two specific, dissimilar areas of the property populate correctly while the rest does not — has been provided to Unifocus support as the basis for further diagnosis. Training also surfaced a number of real, previously-unknown data-quality issues in the ADP feed, a labor-standard miscalibration in Housekeeping, and a still-manual banquet forecast/actuals process pending a Delphi automation build — none of these are Unifocus configuration defects, and all are being tracked for correction with the property and, where applicable, MakeReady corporate. Admin training remains incomplete (three topics never reached) and needs a follow-up session.

---

## Detail — Work Rules, Interfaces, Standards

**Work Rules**
A property-wide unpaid-lunch rule triggers automatically once a shift crosses 6 hours. Whether an employee scheduled exactly 6 hours must stay the extra 30 minutes or may leave at 6 is an open HR/policy question, referred to Monica Brock/HR. Department meetings carry a contractual 2-hour minimum-pay rule that is existing policy but not yet configured as an actual shift-length rule in Unifocus.

**Interfaces**
**ADP** — schedule export and roster/actuals import both functioning as designed (a rolling 14-day actuals window; corrected records take roughly 1-2 days to propagate). Several live data-quality issues found and referred to the property/HR for correction directly in ADP: department/job-code mismatches affecting a handful of Bell, Front Desk, and F&B staff (including one employee missing a second job code entirely, raising a possible unpaid shift-differential question); a bartender working two outlets coded as one generic job; and several banquet-secondary-job staff not double-coded to appear when a manager filters for that role. MakeReady corporate payroll has independently compiled a list of ADP double-coding issues that may allow a batch correction across several of these at once. **Delphi** — the banquet forecast is still entered manually rather than by its intended owner, and the daily rooms+banquet export to Unifocus is a manual daily action; the intended automation is designed but not yet built. Banquet BEOs not being consistently closed out in Delphi is a known, explainable source of standard-vs-actual variance at the labor meeting. **ProfitSword** — Allegory's beverage revenue is confirmed missing from the raw export, a ProfitSword/Actabl-side issue already escalated directly by the property; this matters because beverage revenue, not covers, is intended to drive the bartender labor standard. **Generate Schedules** — see Project Status above for the current diagnosis and status.

**Labor Standards**
Room Attendant runs on a minutes-per-unit model; Housekeeping's loaded productivity goal does not reconcile with either a live productivity-report reading or the property's recalled historical target — flagged for investigation once more data accumulates. The outlet cook standard has a covers-volume trigger believed to be mislabeled (AM/PM); a live correction attempt was blocked by an unexplained system permission issue, not yet resolved. The banquet cook/chef standard gives zero labor credit for any banquet whose BEO isn't closed out — a direct, explainable link to the Delphi gap above. Several F&B labor standards (Action Stations, extra-bartender needs, Chef Attendant) depend on manual KBI entry with no single assigned owner yet, and the Action Station KBI is separately capped at generating only one shift regardless of volume entered. Housekeeping runs an estimated ~80% contract labor on peak days against only 3 named employees currently on file; contract-labor placeholder employees are agreed in concept but not yet built.

**Labor Structure**
Only non-exempt employees are currently scheduled in Unifocus; salaried staff are not scheduled under the current setup. The Sub Only flag (preventing auto-scheduling into a secondary job) requires manual manager attention for any newly cross-trained employee going forward. Two distinct bartender job codes currently share one generic display title, creating shift-eligibility ambiguity, flagged for ADP-side cleanup. New hires start with no Schedule Group assigned by default.

**Planning & Schedule Timeline**
The property's automated weekly cycle was found materially broken at the start of the visit (the planning-period-open task running on the wrong day) and corrected live. A revised Thursday/Friday cycle was then designed with Finance to resolve a same-day meeting collision, and — after being found still pointed at the original setup — was re-verified and corrected a second time to ensure it actually fires on the intended schedule. Friday's first full run under the corrected cycle is discussed under Project Status above.

**Database Status**
Still settling. Training surfaced real ADP data-quality issues in the employee database, most referred to HR/ADP for correction rather than overridden in Unifocus. An unexplained Work Class anomaly (every employee showing Work Class 12) was bulk-corrected to Full Time as a test; this did not affect the Generate Schedules issue, so its origin remains unexplained but is not believed to be related.

**Unifocus Mobile App**
Not yet activated for this property. Activation is a MakeReady corporate-level decision; Pete's recommendation is to hold off until managers are comfortable building schedules manually first.

**Standards Test**
No formal budget-vs-standards pass has been completed for this property. An informal check during training surfaced the Housekeeping productivity-goal discrepancy noted above — worth a deliberate review once data history builds and Generate Schedules is resolved.

---

## Planning Going Forward

**Training**
- Schedule a remote or return-visit follow-up to close the Admin curriculum gap: Key Business Indicators (as a formal topic), Labor/Global Environments, and Work Rules.
- Schedule a dedicated F&B forecasting follow-up (Action Stations, manual bartender KBIs, the Action Station one-shift cap) with whoever owns that role.
- Walk Monica Brock through building the contract-labor placeholder employees (Housekeeping and Bell).

**Configuration**
- Confirm and correct the ADP job/department-code issues found during the visit; apply MakeReady corporate payroll's double-coding list as a batch-correction resource where it overlaps.
- Build the contract-labor placeholder employees; finalize naming convention.
- Correct the mislabeled AM/PM covers threshold on the outlet cook standard once the system permission block preventing the edit is resolved.
- Investigate the Allegory bartender standard showing zero generated hours despite present beverage revenue.
- File a ticket for the Export Schedules automation, which is not running on its own schedule as expected.
- Investigate the Housekeeping productivity-goal discrepancy and determine the correct figure.
- Decide the six-hour-shift unpaid-lunch policy question with HR/legal.
- Extend the rooms forecast window to match Unifocus's requirement (property currently sends 10 days; 16 needed).

**Interfaces**
- **Resolve the Generate Schedules defect — the critical path item for this engagement.** Schedule projection is confirmed working property-wide; the defect is isolated to employee assignment, is not availability-driven, and Unifocus support now has a specific, evidence-based comparison (two populating areas vs. the rest of the property) to work from rather than a general symptom report.
- Set up the Delphi banquet daily-file automation and build the corresponding Unifocus mapping once the file is reliable.
- Continue monitoring the property's own ProfitSword/Actabl escalation on Allegory's missing beverage revenue — no action currently needed from Unifocus.
- Establish a consistent owner for closing out banquet BEOs in Delphi so the banquet labor standard receives credit for labor actually worked.

**Other**
- Confirm a resolution date for the Generate Schedules defect and validate it against a full live weekly cycle before treating go-live as complete.

**Customer Sign Off:** _____________________________ Date: ___________

---

*© Peter A. Castellano. All rights reserved.*
