<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Planning & Scheduling Status Report (Draft)

**Modeled on the standard Unifocus P&S Status Report format** (see [InterContinental New Orleans](../intercontinental-new-orleans/2026-07-09_status-report.md) for the sent reference, and [Mohonk client-ready](../../mohonk/2026-08-20_status-letter-client-ready.md) for the most recent formatting pass). **Status: synced 8/26/26 to match the finalized Word doc** (`Unifocus Status Letter - HM Alpha WLP 2026-08-21 B.pdf`) — this file now mirrors what's ready to send, pending Pete's final read and Customer Sign Off.

**Editorial notes (do not paste into the form):**
- **DOF start date is not a blocker.** Per Pete: the incoming DOF starts mid-budget season with a steep learning curve, so Unifocus won't be an immediate priority for her — Peggy, Charles, and Jannett cover go-live and follow-up in the meantime. Distribution list uses **Peggy Taylor** as the finance contact accordingly. Added a closing line inviting the property to loop in the new DOF and Hotel Manager once they're ready, rather than chasing a firm date.
- **Distribution list is a proposal, not confirmed.** Modeled on the InterCon NOLA / Union Station pattern (property leadership + HM Alpha corporate + Unifocus internal). Add/drop per your read of who should see this.
- **Left out as internal-only, not client-facing status:** Peggy Taylor's discomfort at being treated as the primary property contact while no permanent DOF is seated; the Hotel Manager's departure/promotion to GM at Hilton Scottsdale and any resulting staffing-coverage detail; HMAlpha/SWVP ownership-structure background. None of it changes the P&S project status and all of it is either personnel-sensitive or not this report's business.
- **Status/Trend indicators confirmed by Pete** — 🟢 On Target / ⬆ Improved stands.

---

## Project Detail

| Field | Value |
|---|---|
| **Name of hotel(s)** | Westin La Paloma Resort & Spa |
| **Name of Unifocus consultant(s)** | Pete Castellano |
| **Interfaces** | **Employee Reconcile** — several job-code mismatches identified and corrected live (Paychex job-title strings drifting out of sync with Unifocus's exact-match labor structure).  **Work Records** — contract-labor hours confirmed not flowing into House Attendant, Public Area, or Banquet Server jobs; Public Area/country-club coverage in particular has no live feed at all today and is tracked manually via journal entries. **Paychex schedule sync** — confirmed one-way, forward-only; same-day changes must be made directly in Paychex. **CI/BEO booking-type mapping** — unmapped values found ("Multi Year," "Rooms Only," etc.) that silently drop covers with no warning. **ProfitSword — rooms forecast** not populating reliably (confirmed live: staff manually entering values into what should auto-populate). |
| **Implementation** | Admin and manager training delivered across all department groups. Front Desk Agent standard rebuilt live after being found ~2,300 hours short of budget. Housekeeping Runner standard confirmed under-built relative to real usage. Contract-labor scheduling approach (generic placeholder employees, never real names) — a sample was built for Peggy to show Charles, but placeholders still need to be created for multiple departments. Housekeeping has roughly 60% of its labor coming from contract staff. Incomplete placeholder setup creates a real near-term scheduling risk for the department. |
| **Training** | Admin Training delivered 8/17 (full day) and 8/18 (AM). Manager Training delivered 8/18 (PM), 8/19 (AM and PM). Office Hours held 8/20 (AM and PM) for individual department follow-up. Reporting-tools walkthrough (Labor Effectiveness Report, Employee Schedule Analysis) delivered to F&B leadership. |
| **Visit Dates** | 08/17/26 – 08/20/26 |
| **Go-Live Date** | 08/21/26 |
| **Distribution List** | Westin La Paloma: Fabrizio Poli, Peggy Taylor, Jannett Sanora, Charles James. HM Alpha: Devon Peters, Nicole Mendez. Unifocus: Ralph Varble, Shilpa Bhando, Alain Derderian, Steve Carrell. |

**Status: 🟢 On Target | Since Previous Update: ⬆ Improved**

**Project Status:** Training is complete and the property is on schedule for its Friday go-live. Several real, previously-unknown gaps between the property's labor standards and its actual operation surfaced. The most significant: the Front Desk Agent standard was found roughly 2,300 hours short of budget.  Rebuilt live against three weeks of actual data; the revised standard is not yet tested to the 2026 budget. An open Work Records interface gap means contract-labor hours are not flowing into several housekeeping and banquet jobs.  Public Area's coverage of the neighboring country club is a specific case of this, with no live feed today and costs tracked manually via journal entries.  This should be resolved before leaning on those jobs' Actual-vs-Standard reporting. A separate, unquantified risk was found in CI/BEO booking-type mapping: certain booking types silently drop their covers from Unifocus with no warning. Peggy Taylor, Charles James, and Jannett Sanora are well positioned to carry go-live and near-term follow-up.  Please let us know when the incoming Director of Finance and Hotel Manager are ready to get up to speed on Unifocus.  We'll schedule the orientation, outside the scope of this implementation

Weekly follow-up calls with John Grech are scheduled and to be confirmed. Project hand-off to CSM to follow.

---

## Detail — Work Rules, Interfaces, Standards

**Work Rules**
Property-wide unpaid-lunch rule triggers after only 4 hours worked — unusually low relative to other properties in the portfolio; flagged for review. No Hours Distribution (overtime) rule currently exists. The schedule Editor is flagging schedules over available hours per employee, which is set at 40 for full-time employees.

**Interfaces**
**Employee Reconcile** — several job-code mismatches found and corrected live this week (banquet supervisor, La Luz attendant, banquet server/bartender collision, cafeteria cook). **Work Records** — contract-labor hours confirmed not flowing into House Attendant, Public Area, or Banquet Server; given Housekeeping is roughly 60% contract labor, actual-vs-standard readings on these jobs should be treated as unreliable until this is resolved. Public Area's gap is a specific case of this: the four contract staff who cover the neighboring country club have no live Work Records feed into Unifocus at all, so their hours never reach the Public Area job — finance currently tracks that cost manually via journal entries as a workaround. **Paychex** — the schedule-transfer interface is live and working, armed to trigger on the Publish action in Unifocus. When a schedule is published, the file sent covers today plus the next 14 days, and it first sends a signal to clear the existing Paychex schedule for those same days before importing the new one — by design, not a bug. **We sent the property Publish-timing guidance directly on 08/23/26:** delay the first Publish to Saturday, 08/29/26 (landing exactly on the new period start, eliminating any gap), then resume normal Wednesday publish cadence 09/02/26. That same letter also restated our recommendation to **disable the Paychex clock-in hard-lock** — WLP is currently configured to block a punch outright when there's no matching Paychex schedule row, rather than just flagging it as a variance like most properties. We recommend switching this to a variance flag; not yet confirmed done as of this report. Sync is one-way and forward-only once active; same-day edits must be made directly in Paychex, not Unifocus. **CI/BEO booking-type mapping** — a live mapping review with the Director of Events found unmapped values ("Multi Year," "Rooms Only," and others) beyond Group/Local/In-House; any BEO written with one of these currently drops its covers from Unifocus with no warning. Recommend a full year of CI history be pulled to determine actual exposure. **Arrivals/departures ProfitSword import** — forecast values still not populating reliably; confirmed live via the Rooms Forecast edit audit log, which showed staff manually entering Hotel Rooms, Arrivals, and Guests values for upcoming planning weeks into what should have auto-populated from ProfitSword. Needs further investigation on the ProfitSword-side feed.

**Labor Standards**
Public Area standard does not currently cover the country club public space at all — the four contract staff who work it were never part of the original standard-building conversation, separate from (and in addition to) the Work Records feed gap noted above. Front Desk Agent standard found to be running approximately 2,300 hours short of budget. Root cause traced to two changes since the standard was originally built: a Night Supervisor budget line that is now run as an Overnight Agent (hours shifted between jobs), and a Rooms Controller position created after the original budget. The standard was rebuilt live (fixed a stale duplicate shift, extended phone-agent coverage to the PM shift, reworked arrivals-based breakpoints, added an occupied-rooms-driven midday shift, trimmed redundant supervisor coverage) and tested against three weeks of actual data; the revised version tracks closer to both budget and actual usage but is not final, and is not yet tested to the 2026 budget. Housekeeping Runner staffing is running 4–6 shifts per day against a flat 1 per day standard. Spa Employee Maintenance intentionally overridden to Permanent status for therapist/technician availability to match Book for Time. The built labor standard (57–61 hrs/day off-season/peak) doesn't reflect real schedule coverage need. Providers work for service fees and tip only and are not paid a wage. La Luz Runner job added which is used only in the peak season.

**Labor Structure**
A stale "Supervisor" job code, previously reported removed, is still appearing in the daily Employee Reconcile feed. It needs a second removal attempt in Paychex.

**Planning & Schedule Timeline**
Standard weekly timeline confirmed; Weekly Labor Meeting set for Wednesday: Room at 2pm, F&B at 3pm.

**Database Status**
Stable. Employee User Maps completed for the property's ~25–30 users, required for Schedule Editor and mobile access.

**Unifocus Mobile App**
Not in use. We encourage using the mobile application once schedules are reliably in Unifocus and ready to publish every Wednesday.

**Standards Test**
- A budget-vs-standards pass was completed as a required part of the implementation, involving Charles James and Fabrizio Poli alongside the previous Director of Finance. This was not a formal sign-off, but the required BLSBD process.
- The Front Desk Agent gap above was found through a follow-up budget-vs-standards comparison during office hours. A full re-test against the 2026 budget isn't planned. We may be able to spot-check select jobs against budget during the upcoming follow-up calls, time permitting.

---

## Planning Going Forward

**Training**
- Schedule Unifocus orientation for the incoming Director of Finance and Hotel Manager whenever the property is ready — no rush given budget-season timing. This is beyond the scope of the original implementation.
- Weekly support calls continue through the end of September.

**Configuration**
- Build the Country Club public space into the Public Area standard, separate from the Work Records feed issue below.
- Resolve the Work Records gap for House Attendant, Public Area, and Banquet Server contract-labor hours — Public Area specifically needs the contract staff covering the country club to use Work Records, perhaps in a separate job code, replacing the current manual journal-entry workaround.
- Rebuild the Housekeeping Runner standard against actual daily staffing (4–6 vs. current flat 1/day).
- Remove the stale "Supervisor" job code from the Employee Reconcile feed.
- Add a property-wide Hours Distribution overtime rule.
- Review the 4-hour unpaid-lunch threshold against other portfolio properties.
- Build out contract-labor placeholder employees across departments, most urgently in Housekeeping.

**Interfaces**
- Determine real exposure on the CI/BEO unmapped booking-type gap by pulling a full year of CI history; map all Event Type / Booking Type combinations or at least any genuinely-used values.
- Resolve the ProfitSword Rooms Forecast import reliability issue.
- **Publish-timing guidance already sent to the property (08/23/26):** delay first Publish to Saturday, 08/29/26; resume normal Wednesday publish cadence 09/02/26. The UF→Paychex transfer clears the existing Paychex schedule for the transferred date range before importing the new one, so publishing before the property's first live week has settled risks real data loss in Paychex. No workaround exists on the interface side; this is a timing/process control, not a bug to fix.
- **Confirm the Paychex clock-in hard-lock has been disabled.** Recommended in the same 08/23/26 letter. Not yet confirmed complete. This carries real stakes: a hard-lock blocks a punch outright rather than just flagging a variance, so any Publish-timing gap would hit harder here than at a property using the typical variance flag.

**Other**
- Obtain GM sign-off on the revised Front Desk Agent standard.
- Transition to CSM after completion.

**Customer Sign Off:** _____________________________ Date: ___________

---

*© Peter A. Castellano. All rights reserved.*
