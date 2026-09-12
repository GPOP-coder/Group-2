<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Planning & Scheduling Status Report — CLIENT-READY (for Word template)

**Source:** Condensed from `2026-08-07_status-report-draft-v3.md` (internal working draft) for direct paste into the standard Unifocus P&S Status Letter Word template. Formatted to match the sent [InterContinental New Orleans](../hmalpha/intercontinental-new-orleans/2026-07-09_status-report.md) reference.

**Editorial notes (do not paste into the form):**
- **Status/Trend indicators below are my read, not yet confirmed by you** — 🟢 On Target / ⬆ Improved, based on the week's momentum. Adjust before sending if you see it differently.
- **Distribution list below adds Patrice Huart (Director of F&B) and Alex Sherwood (Director of Rooms)** to the Word template's existing default list, per Draft 3's recommendation — both were active week-of participants the default list omits. Drop them back out if you'd rather not add them yet.
- Cut from Draft 3 as internal-only/out-of-scope for a Unifocus status letter: the payroll-audit-risk debate wording (softened to neutral), Bron's contract-economics disclosure, the specific colleague's retirement timing (kept the ownership-clarification action, dropped the personal detail), and the H-2B/construction-timing note (HR/construction planning, not a Unifocus follow-up item).

---

## Project Detail

| Field | Value |
|---|---|
| **Name of hotel(s)** | Mohonk Mountain House |
| **Name of Unifocus consultant(s)** | Pete Castellano |
| **Interfaces** | Spa KBI import fixed and validated. Employee Reconcile/Hours Transfer notification emails added for Lou, Bron and Casey. Founders Buffet Attendant/Supervisor ADP job codes confirmed and added. Banquet actuals interface paused pending Mohonk's new DataVision BEO file. F&B covers-to-DataVision timing gap — root cause confirmed, two independent fixes now in place pending full-cycle validation. |
| **Implementation** | Beverage fully restructured into its own department with outlet-specific job codes, no data loss. Weekly Labor Timeline rebuilt into an editable format, with a new proposed cadence to post schedules a full day earlier. Labor standards reviewed and revised across Rooms, Housekeeping, F&B, Spa, Security, and Beverage. |
| **Training** | Admin Training delivered 8/3. Basic Training delivered 8/4 and 8/6 (Housekeeping, Kitchen, Recreation — Recreation's first-ever Unifocus orientation). Advanced Class delivered for F&B/Main Dining. Multiple 1:1 working sessions held (Kitchen/Stewarding, Beverage, Front Desk). Positive staff feedback throughout the week. |
| **Visit Dates** | 08/02/26 – 08/07/26 |
| **Distribution List** | Mohonk: Tom Smiley, Eric Gullickson, Lou Petruzzelli, Bron Walis, Casey Dow, Patrice Huart, Alex Sherwood. Unifocus: Ralph Varble, Shilpa Bhando, Alain Derderian, Susanna Briggs. |

**Status: 🟢 On Target | Since Previous Update: ⬆ Improved**

**Project Status:** This was a highly productive onsite week. Beyond the standards and configuration work itself, the most significant outcome was a visible jump in staff confidence and ownership of the system.  Training sessions were well received, with positive feedback from attending staff throughout the week. Several long-standing configuration issues affecting multiple departments were found and corrected this week, several by staff themselves with light coaching. Some additional configuration remains from the notes of our department meetings.  A full day of Basic Training for Housekeeping, Kitchen, and Recreation, followed by a dedicated Kitchen/Stewarding working session, surfaced two substantive findings for the property's attention: definitive confirmation that no banquet culinary labor standard currently exists, and a previously undocumented overtime driver in the kitchen. The property is meaningfully closer to a single, trusted, native Unifocus workflow than it was before this visit.

---

## Detail — Work Rules, Interfaces, Standards



**Work Rules** Reviewed Schedule Lunch Rule thresholds against several short-shift scenarios (Kids Buffet, dinner servers) — no issues found in the cases checked. A broader property-wide review is recommended for a future visit.



**Interfaces**

Spa KBI import — fixed and independently validated. Founders Buffet Attendant/Supervisor ADP job codes — confirmed active and added. 

Banquet actuals — interface paused until Mohonk's new DataVision BEO file is ready; will require re-mapping once available. 

F&B covers-to-DataVision — timing a root cause was confirmed.  Accounting's file upload lands after Generate Standard Hours.  There are two independent fixes now in place, an added weekly interface transfer, plus a Unifocus-side import-timing adjustment, pending validation over a full live cycle. 

Employee Reconcile — Front Desk: one overnight employee's hours aren't flowing into labor reporting.  We identified a specific ADP Pay Code diagnostic lead.

Casey submitted a support ticket to add Bron, Lou and himself to the Employee Reconcile and Hours Transfer notification emails, and we reviewed how to interpret these messages going forward.

**Labor Standards**

A significant number of standards were reviewed and revised this week. 

Banquet Bartender KBI mapping fixed (previously never generated a shift). 

Banquet culinary labor standard confirmed not to exist — a revised, moderate approach (a reporting adjustment to an existing job) is under discussion given the kitchen's station-based staffing constraints. 

Dishwasher standard recommended for a rebuild on more specific volume drivers (Founders/banquet covers) rather than broad Room Guests. 

A Saucier/Associate shift-count discrepancy was identified (two shifts generated vs. one needed per the property's staffing guide).

Culinary Extern/Intern — the job code currently carries a labor standard when it should carry none, since it's meant as a passthrough placeholder; real labor is captured under each person's actual secondary job assignment instead. Two resolution paths are under evaluation for how hours land against the right job going forward: time-clock job selection at punch, vs. ADP's "punch to schedule" feature (which would require a daily Unifocus-to-ADP schedule export).

**Labor Structure**

Beverage job codes fully separated by outlet and moved into their own department, with a clean data migration. 

An ADP Labor Structure review is planned for the next working session. 

A minor job-code naming inconsistency was flagged for future cleanup. 

A shift distribution-logic change was configured for Kitchen/Dishwashing to spread an existing staffing shortfall more evenly across the week rather than concentrating it on weekends.

**Planning & Schedule Timeline**

Weekly Timeline rebuilt into an editable working document. A new weekly cadence has been proposed that would complete the schedule a full day earlier than current practice, giving more time for schedule edits. 

Task Scheduler will be updated to match once the new cadence is confirmed.

**Database Status**

Stable. This week's configuration work was primarily cleanup and restructuring (Beverage) rather than new build or rebuild.

**Unifocus Mobile App**

Adoption remains partial, concentrated in F&B. 

There is stronger appetite at the ownership and department-head level for a dedicated future push toward full native-Unifocus/mobile adoption property-wide.

**Standards Test**

Not formally re-run against the 2026 budget this visit. A live Budgeter/staffing-guide walkthrough was completed directly with Lou, covering how daily volumes drive Labor Budgeter. Recommended for a future visit, in preparation for using Labor Budgeter as an additional resource in the 2027 budget cycle.

---

## Planning Going Forward

**Training**
- Combined schedule-printing training session for Call Center, Front Desk, and Housekeeping — departments still maintaining duplicate Excel/macro schedules alongside Unifocus.
- Continued advanced-topic follow-up with Kidane Mikael (Dining Room Manager) as he takes on more Unifocus administration.
- Schedule Editing and Employee Maintenance classes still needed for Recreation, Housekeeping, Property, Front Office, and Spa.

**Configuration**
- Resolve the Granary/Founders weather-contingency covers-vs-labor coding mismatch.
- A Spa follow-up to finalize the Spa Reception standard reduction (pending Director sign-off) and correct the Overnight Spa Cleaner shift-timing discrepancy.
- Finalize the banquet culinary labor standard.
- Resolve Culinary Extern/Intern ADP job-coding, including the standard incorrectly attached to that job code.
- Rebuild the Dishwasher standard on more specific covers-based drivers.
- Correct the Saucier/Associate shift-count discrepancy.
- Additional BQT KBI mapping required once the new DataVision BEO file is available.
- Grant the Kitchen Manager the Employee Maintenance permissions (sub-only toggle, display-name field) found missing this week.

**Interfaces — Priority: Medium**
- Confirm the Thursday–Sunday **Generate Standards** gap is fully closed over a complete live cycle before relying on it.
- Evaluate extending covers automation to daily cadence to close the timing gap at its source.
- Resolve the Front Desk overnight-hours reporting gap once the ADP Pay Code discrepancy is confirmed.

**Other**
- Complete the Weekly Labor Timeline rebuild.
- Scope a dedicated future visit focused on driving full property-wide adoption of Unifocus as the single source of schedule generation, editing, and distribution.
- Consider a combined Data Analyst/Labor Management role to own ongoing WFM operations, training, and analytics — a priority independently raised by the property's own leadership.





**Customer Sign Off:** _____________________________ Date: ___________

---

*© Peter A. Castellano. All rights reserved.*
