<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Planning & Scheduling Status Report (Draft)

**Modeled on the standard Unifocus P&S Status Report format** (see [InterContinental New Orleans](../intercontinental-new-orleans/2026-07-09_status-report.md) for the sent reference, and [Mohonk client-ready](../../mohonk/2026-08-20_status-letter-client-ready.md) for the most recent formatting pass). **Status: synced 8/26/26 to match the Word doc** (`Unifocus Status Letter - HM Alpha WLP 2026-08-21 C.pdf`, second pass) — mirrors the current draft, but **not ready to send** until the Work Records contradiction flagged below is resolved.

**Editorial notes (do not paste into the form):**
- **DOF start date is not a blocker.** Per Pete: the incoming DOF starts mid-budget season with a steep learning curve, so Unifocus won't be an immediate priority for her — Peggy, Charles, and Jannett cover go-live and follow-up in the meantime. Distribution list uses **Peggy Taylor** as the finance contact accordingly. Added a closing line inviting the property to loop in the new DOF and Hotel Manager once they're ready, rather than chasing a firm date.
- **Distribution list is a proposal, not confirmed.** Modeled on the InterCon NOLA / Union Station pattern (property leadership + HM Alpha corporate + Unifocus internal). Add/drop per your read of who should see this.
- **Left out as internal-only, not client-facing status:** Peggy Taylor's discomfort at being treated as the primary property contact while no permanent DOF is seated; the Hotel Manager's departure/promotion to GM at Hilton Scottsdale and any resulting staffing-coverage detail; HMAlpha/SWVP ownership-structure background. None of it changes the P&S project status and all of it is either personnel-sensitive or not this report's business.
- **Status/Trend indicators confirmed by Pete** — 🟢 On Target / ⬆ Improved stands.
- **⚠️ Open contradiction, version C (8/26/26):** the Interfaces detail paragraph now says "All contract staff is now using WorkRecords to clock-in" (resolved, present tense), but Planning Going Forward → Configuration still lists getting Country Club contract staff onto Work Records as an open action item. Confirm which is accurate — has this actually been verified fixed, or is it "mandate issued, not yet confirmed compliant"? — before sending.

---

## Project Detail

| Field | Value |
|---|---|
| **Name of hotel(s)** | Westin La Paloma Resort & Spa |
| **Name of Unifocus consultant(s)** | Pete Castellano |
| **Interfaces** | **Employee Reconcile** — several job-code mismatches identified and corrected live (Paychex job-title strings drifting out of sync with Unifocus's exact-match labor structure). **Work Records** — contract-labor hours confirmed not flowing into House Attendant, Public Area, or Banquet Server jobs; Country Club Public Area contract staff were not using WorkRecords. Hours were tracked manually and transferred via journal entries. **Paychex schedule sync** — confirmed one-direction, forward-only; same-day changes must be made in Unifocus and directly in Paychex. If you disable clock-locking in Paychex, no same-day schedule entry in Paychex will be necessary. **CI/BEO booking-type mapping** — values found in historic BEO file ("Multi Year," "Rooms Only," etc.) that silently drop covers with no warning until they are mapped. **ProfitSword** — rooms forecast is mapped but not populating reliably (staff manually entering values into what should auto-populate). Manual entry can continue if desired. |
| **Implementation** | Admin and manager training delivered across all department groups. Front Desk Agent standard rebuilt live after being found ~2,300 hours short of budget. Edited with Charles James. Housekeeping Runner standard confirmed under-built relative to real usage. Not edited. Contract-labor scheduling approach (generic placeholder employees, never real names) a sample was built for Peggy to show Charles, but placeholders still need to be created for multiple departments. Housekeeping has roughly 60% of its labor coming from contract staff. Incomplete placeholder setup creates a real near-term scheduling risk for the department. |
| **Training** | Admin Training delivered 8/17 (full day) and 8/18 (AM). Manager Training delivered 8/18 (PM), 8/19 (AM and PM). Office Hours held 8/20 (AM and PM) for individual department follow-up. Reporting-tools walkthrough (Labor Effectiveness Report, Employee Schedule Analysis) delivered to F&B leadership. |
| **Visit Dates** | 08/17/26 – 08/20/26 |
| **Go-Live Date** | 08/21/26 |
| **Distribution List** | Westin La Paloma: Fabrizio Poli, Peggy Taylor, Jannett Sanora, Charles James. HM Alpha: Devon Peters, Nicole Mendez. Unifocus: Ralph Varble, Shilpa Bhando, Alain Derderian, Steve Carrell. |

**Status: 🟢 On Target | Since Previous Update: ⬆ Improved**

**Project Status:** Training is complete and the property is on schedule for its Friday go-live. Several real, previously-unknown gaps between the property's labor standards and its actual operation surfaced. The most significant: the Front Desk Agent standard was found roughly 2,300 hours short of budget.  Rebuilt live against three weeks of actual data; the revised standard is not yet tested to the 2026 budget. An open Work Records interface gap means contract-labor hours are not flowing into several housekeeping and banquet jobs.  Public Area's coverage of the neighboring country club is missing from the labor standards and missing from WorkRecords. Public Space costs for the Country Club are tracked manually and recognized via journal entries. This should be resolved before leaning on those jobs' Actual-vs-Standard reporting. A separate, unquantified risk was found in CI/BEO booking-type mapping: certain booking types are not mapped and silently drop their covers from Unifocus with no warning. Peggy Taylor, Charles James, and Jannett Sanora are well positioned to carry go-live and near-term follow-up.  Please let us know when the incoming Director of Finance and Hotel Manager are ready to get up to speed on Unifocus.  We'll schedule the orientation, outside the scope of this implementation

Weekly follow-up calls with John Grech are scheduled and to be confirmed. Project hand-off to CSM to follow.

---

## Detail — Work Rules, Interfaces, Standards

**Work Rules**
Property-wide unpaid-lunch rule triggers after only 4 hours worked — unusually low relative to other properties in the portfolio; flagged for review. No Hours Distribution (overtime) rule currently exists. The schedule Editor is flagging schedules over available hours per employee, which is set at 40 for full-time employees.

**Interfaces**
**Employee Reconcile** — several job-code mismatches found and corrected live this week (banquet supervisor, La Luz attendant, banquet server/bartender collision, cafeteria cook). **Work Records** — contract-labor hours confirmed not flowing into House Attendant, Public Area, or Banquet Server; given Housekeeping is roughly 60% contract labor, actual-vs-standard readings on these jobs should be treated as unreliable until this is resolved. Public Area's four contract staff who cover the neighboring Country Club have not been clocking into Work Records. Hours were tracked manually and transferred via journal entries. All contract staff is now using WorkRecords to clock-in. **Paychex Schedule Transfer** — the interface is live and working, armed to trigger upon the use of the Publish Schedules function in Unifocus. When a schedule is published, the export file covers today plus the next 14 days, and it first sends a signal to clear the existing Paychex schedule for those same days before importing the new one — by design, not a bug. **We sent the property publish-timing guidance directly on 08/23/26:** delay the first Publish Schedules to Saturday, 08/29/26 (landing exactly on the new period start, eliminating any gap), then resume normal Wednesday publish cadence 09/02/26. That same letter also restated our recommendation to disable the Paychex clock-in hard-lock. WLP is currently configured to block a punch outright when there's no matching Paychex schedule row, rather than just flagging it as a variance like most properties. We recommend switching this to a variance flag; not yet confirmed done as of this report. Same-day edits must be made in Unifocus and directly in Paychex, until clock-locking is disabled. **CI/BEO booking-type mapping** — a live mapping review with the Director of Events found unmapped values ("Multi Year," "Rooms Only," and other booking types beyond Group/Local/In-House). Any BEO with one of these booking types currently drops its covers from Unifocus with no warning. Recommend pulling the full configuration of Event Types and Booking Types to determine actual exposure. **Arrivals/departures ProfitSword import** — forecast values are not populating reliably. Either edit the forecast in ProfitSword on Thursday or edit it directly in Unifocus on Friday.

**Labor Standards**
Public Area standard does not currently cover the country club public space — the four contract staff who work it were never part of the original standard-building conversation, separate from (and in addition to) the WorkRecords feed gap noted above. Front Desk Agent standard found to be approximately 2,300 hours short of budget. Root cause traced to two changes since the standard was originally built: a Night Supervisor budget line that is now run as an Overnight Agent (hours shifted between jobs), and a Rooms Controller position created after the original budget. The standard was rebuilt live (fixed a stale duplicate shift, extended phone-agent coverage to the PM shift, reworked arrivals-based breakpoints, added an occupied-rooms-driven midday shift, trimmed redundant supervisor coverage) and tested against three weeks of actual data; the revised version tracks closer to both budget and actual usage but is not final, and is not yet fully tested to the 2026 budget. Housekeeping Runner staffing is running 4–6 shifts per day against a flat 1 per day standard. No change was made to the standard. Spa Employee Maintenance in Unifocus intentionally overridden to Permanent schedules for therapists/technicians to match Book for Time. The built labor standard (57–61 hrs/day off-season/peak) doesn't reflect real schedule coverage need. Providers work for service fees and tip only and are not paid a wage. La Luz Runner job added which is used only in the peak season.

**Labor Structure**
A stale "Supervisor" job code, previously reported removed, is still appearing in the daily Employee Reconcile feed. It needs a second removal attempt in Paychex.

**Planning & Schedule Timeline**
Standard weekly timeline confirmed; Weekly Labor Meeting set for Wednesday: Room at 2pm, F&B at 3pm.

**Database Status**
Stable. Employee User Maps completed for the property's ~25–30 users, required for Schedule Editor and mobile access.

**Unifocus Mobile App**
Not in use.

**Standards Test**
- A budget-vs-standards pass was completed as a required part of the implementation, involving Charles James and Fabrizio Poli alongside the previous Director of Finance. This was not a formal sign-off, but the required budget comparison process.
- The Front Desk Agent gap above was found through a follow-up budget-vs-standards comparison during office hours. A full re-test against the 2026 budget isn't planned. We may be able to spot-check select jobs against budget during the upcoming follow-up calls, time permitting.

---

## Planning Going Forward

**Training**
- Schedule Unifocus orientation for the incoming Director of Finance and Hotel Manager whenever the property is ready — no rush given budget-season timing. This is beyond the scope of the original implementation.
- Weekly support calls continue through the end of September.

**Configuration**
- Build the Country Club public space labor standards into the Public Area job, separate from the Work Records feed issue below.
- Resolve the Work Records mapping for House Attendant, Public Area, and Banquet Server contract-labor hours.
- Public Area specifically needs the contract staff covering the country club to use Work Records, perhaps in a separate job code, replacing the current manual journal-entry workaround.
- Rebuild the Housekeeping Runner standard against actual daily staffing (4–6 vs. current flat 1/day). Find other offsets to meet budget.
- Remove the stale "Supervisor" job code from the Employee Reconcile feed.
- Add a property-wide Hours Distribution overtime rule.
- Review the 4-hour unpaid-lunch threshold against other portfolio properties.
- Build out contract-labor placeholder employees across departments, most urgently in Housekeeping.

**Interfaces**
- Determine real exposure on the CI/BEO unmapped booking-type gap by comparing the CI configuration for all Event Types and Booking Types. Complete mapping of all Event Type / Booking Type combinations.
- Resolve the ProfitSword Rooms Forecast import reliability issue or continue to manually edit the forecast.
- **Publish-timing guidance already sent to the property (08/23/26):** delay first Publish to Saturday, 08/29/26; resume normal Wednesday publish cadence 09/02/26. The UF→Paychex transfer clears the existing Paychex schedule for the transferred date range before importing the new one. Publishing before the property's first live week risks real data loss in Paychex. No workaround exists on the interface side; this is a timing/process control, not a bug to fix.
- **Confirm the Paychex clock-in hard-lock has been disabled.** Recommended in the same 08/23/26 letter. Not yet confirmed complete. This carries real stakes: a hard-lock blocks a punch outright rather than just flagging a variance, so any Publish-timing gap would hit harder here than at a property using the typical variance flag.

**Other**
- Obtain GM sign-off on the revised Front Desk Agent standard.
- Transition to CSM after completion.

**Customer Sign Off:** _____________________________ Date: ___________

---

*© Peter A. Castellano. All rights reserved.*
