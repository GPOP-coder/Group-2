<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Planning & Scheduling Status Report (Draft)

**Modeled on the standard Unifocus P&S Status Report format** (see [InterContinental New Orleans](../intercontinental-new-orleans/2026-07-09_status-report.md) for the sent reference, and [Mohonk client-ready](../../mohonk/2026-08-20_status-letter-client-ready.md) for the most recent formatting pass). Built from [kb.md](kb.md) and the full week's session files (8/17–8/20), updated 8/25/26 to fold in the Publish-timing letter sent to the property 8/23/26. **Not client-ready yet — see open editorial items below before this goes into the Word template.**

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
| **Interfaces** | **Employee Reconcile** — several job-code mismatches identified and corrected live (Paychex job-title strings drifting out of sync with Unifocus's exact-match labor structure); one stale code still open pending confirmation with another property's consultant. **Work Records** — contract-labor hours confirmed not flowing into House Attendant, Public Area, or Banquet Server jobs; Public Area/country-club coverage in particular has no live feed at all today and is tracked manually via journal entries. **Paychex schedule sync** — confirmed one-way, forward-only; same-day changes must be made directly in Paychex. **CI/BEO booking-type mapping** — unmapped values found ("Multi Year," "Rooms Only," etc.) that silently drop covers with no warning; exposure not yet quantified. **ProfitSword — rooms forecast** not populating reliably (confirmed live: staff manually entering values into what should auto-populate); **ProfitSword — Departures KBI (actuals)** found incorrectly carrying a direct interface mapping on a field that should always be system-calculated — unmapped 8/25/26, pending verification. |
| **Implementation** | Admin and manager training delivered across all department groups. Front Desk Agent standard rebuilt live after being found ~2,300 hours short of budget. Runner standard confirmed under-built relative to real usage; Room Attendant standard flagged for review ahead of the 2027 budget cycle. Contract-labor scheduling approach (generic placeholder employees, never real names) confirmed and built live for multiple departments. Housekeeping's cutover to live Unifocus scheduling is staged one week behind the rest of the property to complete training. |
| **Training** | Admin Training delivered 8/17 (full day) and 8/18 (AM). Manager Training delivered 8/18 (PM), 8/19 (AM and PM). Office Hours held 8/20 (AM and PM) for individual department follow-up. Reporting-tools walkthrough (Labor Effectiveness Report, Employee Schedule Analysis) delivered to F&B leadership. |
| **Visit Dates** | 08/17/26 – 08/20/26 |
| **Go-Live Date** | 08/21/26 (property-wide, 3:30pm); Housekeeping's first live scheduling week is 08/29/26–09/04/26. **Publish-timing guidance was sent to the property directly on 08/23/26** — delay first Publish to Saturday, 08/29/26, then resume normal Wednesday publish cadence 09/02/26 — see Interfaces below. |
| **Distribution List** | Westin La Paloma: Fabrizio Poli, Peggy Taylor, Jannett Sanora, Charles James. HM Alpha: Devon Peters, Nicole Mendez. Unifocus: Ralph Varble, Shilpa Bhando, Alain Derderian, Steve Carrell. |

**Status: 🟢 On Target | Since Previous Update: ⬆ Improved**

**Project Status:** Training is complete and the property is on schedule for its Friday go-live, with Housekeeping staged one week behind to finish training. This was a diagnostically rich week — several real, previously-unknown gaps between the property's labor standards and its actual operation were surfaced. The most significant: the Front Desk Agent standard was found running roughly 2,300 hours short of budget, traced to two root causes (a Night Supervisor budget line now run as an Overnight Agent, and an unbudgeted Rooms Controller position whose hours were carved out of Front Desk when it was created) and rebuilt live against three weeks of actual data; the revised standard is not yet signed off by the GM. An open Work Records interface gap means contract-labor hours are not flowing into several housekeeping and banquet jobs at all — Public Area's coverage of the neighboring country club is a specific case of this, with no live feed today and costs tracked manually via journal entries — and this should be resolved before leaning on those jobs' actual-vs-standard reporting. Security labor is similarly essentially untracked in Unifocus, being entirely contract labor left out of the original implementation. A closer read of Room Attendant productivity reversed an earlier tentative finding: rather than the standard running too high, actual usage is now running higher than the standard assumes, suggesting the standard may be too low relative to budget — flagged for the 2027 budget cycle, not changed this week. A separate, unquantified risk was found in CI/BEO booking-type mapping: certain booking types silently drop their covers from Unifocus with no warning. Peggy Taylor, Charles James, and Jannett Sanora are well positioned to carry go-live and near-term follow-up — please let us know when the incoming Director of Finance and Hotel Manager are ready to get up to speed on Unifocus, and we'll schedule the orientation.

---

## Detail — Work Rules, Interfaces, Standards

**Work Rules**
Property-wide unpaid-lunch rule triggers after only 4 hours worked — unusually low relative to other properties in the portfolio; flagged for review. No Hours Distribution overtime rule currently exists.

**Interfaces**
Employee Reconcile — several job-code mismatches found and corrected live this week (banquet supervisor, La Luz attendant, banquet server/bartender collision, cafeteria cook); one stale code (no real job behind it) still open pending a cross-property confirmation. Work Records — contract-labor hours confirmed not flowing into House Attendant, Public Area, or Banquet Server; given Housekeeping is roughly 60% contract labor, actual-vs-standard readings on these jobs should be treated as unreliable until this is resolved. Public Area's gap is a specific case of this: the four contract staff who cover the neighboring country club have no live Work Records feed into Unifocus at all, so their hours never reach the Public Area job — finance currently tracks that cost manually via journal entries as a workaround. Paychex — the schedule-transfer interface is live and working, armed to trigger on the Publish action in Unifocus. When a schedule is published, the file sent covers today plus the next 14 days, and it first sends a signal to clear the existing Paychex schedule for those same days before importing the new one — by design, not a bug. **We sent the property Publish-timing guidance directly on 08/23/26:** delay the first Publish to Saturday, 08/29/26 (landing exactly on the new period start, eliminating any gap), then resume normal Wednesday publish cadence 09/02/26. That same letter also restated our recommendation to **disable the Paychex clock-in hard-lock** — WLP is currently configured to block a punch outright when there's no matching Paychex schedule row, rather than just flagging it as a variance like most properties. We recommend switching this to a variance flag; not yet confirmed done as of this report. Sync is one-way and forward-only once active; same-day edits must be made directly in Paychex, not Unifocus. CI/BEO booking-type mapping — a live mapping review with the Director of Events found unmapped values ("Multi Year," "Rooms Only," and others) beyond Group/Local/In-House; any BEO written with one of these currently drops its covers from Unifocus with no warning. Recommend a full year of CI history be pulled to determine actual exposure. **Arrivals/departures ProfitSword import** — forecast values still not populating reliably; confirmed live via the Rooms Forecast edit audit log, which showed staff manually entering Hotel Rooms, Arrivals, and Guests values for upcoming planning weeks into what should have auto-populated from ProfitSword. Needs further investigation on the ProfitSword-side feed. Separately, on the actuals side: WLP's Departures KBI — which should always be system-calculated, never mapped to an interface — was found carrying a direct ProfitSword mapping. The mapping was removed 8/25/26; needs verification that Departures is now calculating correctly on its own.

**Labor Standards**
Public Area standard does not currently cover the country club public space at all — the four contract staff who work it were never part of the original standard-building conversation, separate from (and in addition to) the Work Records feed gap noted above. Front Desk Agent standard found to be running approximately 2,300 hours short of budget. Root cause traced to two changes since the standard was originally built: a Night Supervisor budget line that is now run as an Overnight Agent (hours shifted between jobs), and a Rooms Controller position created after the original budget and never added to it — its hours were carved directly out of Front Desk rather than budgeted as an incremental add. The standard was rebuilt live (fixed a stale duplicate shift, extended phone-agent coverage to the PM shift, reworked arrivals-based breakpoints, added an occupied-rooms-driven midday shift, trimmed redundant supervisor coverage) and tested against three weeks of actual data; the revised version tracks closer to both budget and actual usage but is not final, and is not yet signed off by the GM. Room Attendant — an initial productivity read (0.54 actual vs. 0.76 goal) suggested the standard might be set too high; a more granular follow-up read specific to Room Attendant (0.584 actual vs. 0.44 standard) reversed that, suggesting the standard may instead be too low relative to budget. Not changed this week — flagged as a real project for the 2027 budget cycle. Housekeeping Runner staffing is running 4–6 per day against a flat 1/day standard. Security labor is essentially untracked in Unifocus — all contract labor, no Work Records feed or manual-hours process in place. Spa standard intentionally overridden to Permanent status for therapist/technician availability, since the built labor standard (57–61 hrs/day off-season/peak) doesn't reflect real coverage need. La Luz Lounge beverage-revenue-driven bar standard reviewed and confirmed correct.

**Labor Structure**
A stale "Supervisor" job code, previously reported removed, is still appearing in the daily Employee Reconcile feed — needs a second removal attempt.

**Planning & Schedule Timeline**
Standard weekly timeline confirmed; Rooms labor meeting set for Tuesdays 2pm, F&B Wednesdays 3pm. First live Unifocus labor meeting targeted for approximately Wednesday, 8/26.

**Database Status**
Stable. Employee User Maps completed for the property's ~25–30 users, required for Schedule Editor and mobile access.

**Unifocus Mobile App**
Not yet a focus this visit — training centered on core scheduling and reporting workflows.

**Standards Test**
Not formally re-run against the 2026 budget this visit; the Front Desk Agent gap above was found through a budget-vs-standards comparison during office hours and is the most material finding of that kind this week. Recommend a fuller standards-to-budget pass at a future visit.

---

## Planning Going Forward

**Training**
- Complete Housekeeping training ahead of their staged 8/29–9/4 live scheduling start.
- Schedule Unifocus orientation for the incoming Director of Finance and Hotel Manager whenever the property is ready — no rush given budget-season timing.

**Configuration**
- Build the country club public space into the Public Area standard — currently not covered at all, separate from the Work Records feed issue below.
- Resolve the Work Records gap for House Attendant, Public Area, and Banquet Server contract-labor hours — Public Area specifically needs a live feed built for the four contract staff covering the country club, replacing the current manual journal-entry workaround.
- Build out a Work Records or manual-hours process for Security.
- Rebuild the Housekeeping Runner standard against actual daily staffing (4–6 vs. current flat 1/day).
- Remove the stale "Supervisor" job code from the Employee Reconcile feed a second time.
- Add a property-wide Hours Distribution overtime rule.
- Review the 4-hour unpaid-lunch threshold against other portfolio properties.

**Interfaces — Priority: High**
- Determine real exposure on the CI/BEO unmapped booking-type gap by pulling a full year of CI history; map any genuinely-used values.
- Resolve the ProfitSword rooms-forecast import reliability issue — confirmed live via the Rooms Forecast edit audit log; needs investigation on the feed side.
- Verify WLP's Departures KBI is calculating correctly now that the stray ProfitSword mapping has been removed (8/25/26).
- Confirm the one remaining stale Employee Reconcile job code with the consultant on the reference property.
- **Publish-timing guidance already sent to the property (08/23/26):** delay first Publish to Saturday, 08/29/26; resume normal Wednesday publish cadence 09/02/26. The UF→Paychex transfer clears the existing Paychex schedule for the transferred date range before importing the new one, so publishing before the property's first live week has settled risks real data loss in Paychex. No workaround exists on the interface side; this is a timing/process control, not a bug to fix.
- **Confirm the Paychex clock-in hard-lock has been disabled.** Recommended in the same 08/23/26 letter and previously agreed live with Ralph Varble 08/21/26 — not yet confirmed complete. This carries real stakes: a hard-lock blocks a punch outright rather than just flagging a variance, so any Publish-timing gap would hit harder here than at a property using the standard variance flag.

**Other**
- Obtain GM sign-off on the revised Front Desk Agent standard.
- Monitor the Friday 8/21 3:30pm go-live and the staged Housekeeping cutover the following week.
- Transition to CSM after completion.

**Customer Sign Off:** _____________________________ Date: ___________

---

*© Peter A. Castellano. All rights reserved.*
