<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# San Diego Marriott Del Mar — Planning & Scheduling Status Report (Working Draft)

**Modeled on the standard Unifocus P&S Status Report format** (see [The Moran](../../makeready/the-moran/2026-09-02_status-report-draft.md) for the most recent formatting pass this structure is based on, and its condensed [client-ready version](../../makeready/the-moran/2026-09-05_status-letter-client-ready.md) plus the [matching Word doc build process](../../makeready/the-moran/2026-09-05_status-letter-client-ready.md) for the eventual next step).

---

## ⚠️ WORKING DRAFT — current through Friday 9/11/26, Pete's last onsite day — SEE EDITORIAL NOTES BEFORE CONDENSING TO CLIENT-READY ⚠️

**Editorial notes (do not paste into the form):**
- **Config consultant confirmed 9/12/26: Taylor Walton.** Post-implementation follow-up-call owner also resolved: **John Grech**, per Pete's best read (not stated as 100% certain). Both updated below.
- **"First status report for this engagement" — confirmed 9/12/26.** Searched Pete's email for anything from Taylor Walton resembling a status report; nothing found. The only property-relevant email from Taylor is his 8/27/26 "Unifocus - Training Introduction & On-Site Follow Up" note (pre-visit scheduling/coordination, sent before the 9/7 training week even started, not a status update). Unlike Moran, there is no prior Steve Carrell-style config-visit letter to reconcile against — this is genuinely the first status report for this engagement, and the Since-Previous-Update: N/A framing below stands as written.
- **No single blocking defect like Moran's 261575** — this property's open items are real but distributed (banquet/CI mapping incompleteness, a missing bartender standard, a couple of unexplained schedule anomalies, a Security coverage gap, two open support tickets). Status recommendation below reflects that: real work remains, but nothing found this week looks go-live-blocking in the way Moran's Generate Schedules failure was.
- **Sandra Academia (DOF, the actual day-to-day key user) only connected with Pete on the very last day** — she was out sick the entire training week. Her own admin onboarding was compressed into one rushed ad-hoc session Friday afternoon rather than the normal multi-day admin curriculum, and a real follow-up is already booked (Tue 9/15/26, 10 AM–12 PM PT). **This is arguably the single most important caveat on this whole report** — the property's actual system administrator has had a fraction of the normal training time so far. **Mitigating factor:** she has prior Unifocus experience from Dimension (this property's former management company), specifically Time & Attendance — a different module, but real product familiarity that should help the Tuesday follow-up move faster than a true cold start.
- **Left out as internal-only, not client-facing:** Pete's personal expressed interest in reclaiming the DoubleTree San Diego Del Mar engagement from John Grech; Mark Ziomek's "make Sandra suffer" remark and the scheduling-conflict saga behind it; Val's personal week (family loss, move); Pete's own travel logistics (extended stay, uncle visit, cruise/Nashville stretch); the placeholder-methodology cross-references to Moran and the PWS foundations doc, which are internal IP, not client status.
- **Two schedule anomalies found late in the week (9/11) are still genuinely unexplained** — not yet triaged into a "known non-Unifocus cause" bucket the way similar-looking issues at Moran eventually were. Don't understate these as resolved.
- Status/Trend indicator below is a first-pass call, not yet confirmed by Pete.

---

## Project Detail

| Field | Value |
|---|---|
| **Name of hotel(s)** | San Diego Marriott Del Mar, 11966 El Camino Real, San Diego, CA 92130 |
| **Name of Unifocus consultant(s)** | Pete Castellano (training); Taylor Walton (configuration); John Grech (post-implementation follow-up calls) |
| **Interfaces** | **ADP/Paychex** — Employee Reconcile, Hours Transfer, and schedule export all functioning as designed on the standard rolling window. Several secondary-job miscodings found across two separate audits this week (a housekeeper coded only as public area attendant despite also working room attendant/laundry; a barista under a possibly-defunct job; further gaps found again during the 9/9 manager session) — all property/HMA-owned ADP-side data issues, not Unifocus config. **Carlos Dela Cruz's login remained broken all week** (ticket opened 9/9, unresolved as of this draft). **New ticket 9/10/26: UNIFOCUS-262725** — Jose Lopez (Director of Engineering) cannot launch Reporter/Reports (dialog flashes, then blank); User Administration checked and in order; awaiting Unifocus support triage. **CI** — banquet booking-type mapping is confirmed incomplete: Unifocus likely reads the coarse "Business Type" CI field (3–4 options) rather than the granular "Group Type" field (~10 options, including unexplained codes like "AA") that Sales actually uses — this needs correction before full banquet mapping is possible. Group, Local, and Rooms Only are mapped as of a 9/9 Teams thread with Taylor Walton (Rooms Only confirmed → Group). **ProfitSword** — rooms forecast flows correctly, but the property's legacy PMS does not export arrivals/departures cleanly (a known Marriott-lineage quirk, property/HMA-owned, not Unifocus config); current workaround is manual reconciliation by GM Mark Ziomek directly into Unifocus's Rooms Forecast screen. The 10-day ProfitSword forecast window is also short of the 16 days Unifocus needs — confirmed independently three separate times this week (9/8 admin session, 9/10 Thursday manager training, 9/11 Sandra session). |
| **Implementation** | Training surfaced real gaps between built standards and day-to-day operation: **no bartender job code or labor standard exists at all** (confirmed 9/9 with Stephanie Simmons — no event type reliably triggers bartender labor; the property's bar schedule is still occupancy-based, not beverage-revenue-based, per the 9/10 session; zero beverage revenue currently flows into Unifocus at all). **Security Officer standard has no AM shift coverage on Saturday/Sunday** despite officers apparently covering those days in practice (found live 9/10 with John Davis; likely needs 2 additional shifts). **Housekeeping/Arteta ran -21% at the department level** for the most recent complete week despite modest individual job variances (flagged live 9/10 by Mark Ziomek; independently reconfirmed via the same 6%-over/25%-underscheduled figures in the 9/11 Sandra session) — not yet investigated. **Two unexplained schedule anomalies** found during the 9/11 Sandra session: an employee drafted into back-to-back AM/PM shifts with no gap, and a separate employee showing every day blacked out in availability for no confirmed reason — both flagged by Pete himself as needing a closer look, not resolved. Contract-labor placeholder employees were built live with Valeria Ruvalcaba on 9/11 (one Room Attendant model, naming convention settled: job-code-based Employee ID, job-title/agency display name, half sub-only, "Include in Schedule Export" unchecked) — the agreed 12-placeholder headcount still needs per-department validation rather than a flat default. |
| **Training** | System Admin Training held Tue 9/8 (AM + PM, full day — Sandra absent sick, Al Catino and Mark Ziomek primary attendees). Manager Training held Wed 9/9 (Carlos, Ramon, Edson, Juan Barrios) and Thu 9/10 (Jesse Frost, Valeria Ruvalcaba, Executive Chef, John Davis, Agustin Paz, Mark Ziomek). A dedicated CI/banquet integration session was held 9/9 with Stephanie Simmons (Director of Sales). **Fri 9/11 — office hours, extended to a full working day:** Valeria Ruvalcaba's placeholder/troubleshooting session and Sandra Academia's first-ever connection with Pete both held, the latter compressed and incomplete by her own request ("just what she needs for now") — **a proper follow-up is booked for Tue 9/15/26, 10 AM–12 PM PT**, before that week's labor meeting. This is effectively Sandra's Admin Training session 1 of 2 (or more), not a completed curriculum. |
| **Visit Dates** | Onsite training Tue 9/8/26 – Fri 9/11/26 (property had prior Unifocus experience under 2 years ago, and several staff — including Jose Lopez — came from other Unifocus/Loews properties, both real accelerants this week) |
| **Go-Live Date** | Week of 9/19/26 (portfolio-standard cutover — same timing as every other HMAlpha Wave 1/2 property; Del Mar's automated weekly cycle is confirmed correctly timed, Monday-rolling) |
| **Distribution List** | San Diego Marriott Del Mar: Mark Ziomek (GM), Sandra Academia (DOF), Valeria Ruvalcaba (HR). Unifocus: Taylor Walton (configuration), John Grech (follow-up calls), Alain Derderian, Shilpa Bhando (VP Operations). |

**Status: 🟡 Caution | Since Previous Update: N/A — first status report for this engagement**

**Project Status:** Training for this visit is delivered across all core curriculum, with one significant concern: Sandra Academia, the property's actual day-to-day system administrator, was out sick the entire training week and only connected with Pete on the final day — Friday's session was a rushed, scope-expanding overview rather than a complete Admin curriculum. **A follow-up call is scheduled for Tuesday, September 15, 10 AM–12 PM Pacific**, to properly close this gap before that week's labor meeting. One mitigating factor: Sandra has prior Unifocus experience from her time with Dimension (the property's former management company), including the Time & Attendance module — a different module than Planning & Scheduling, but real underlying product familiarity that should accelerate the Tuesday follow-up.

The week's most consequential finding is that **no bartender labor standard exists at this property at all** — confirmed directly with Stephanie Simmons (Director of Sales) on 9/9 and independently reconfirmed during Thursday's manager training: the bar is still scheduled off occupancy, not beverage revenue, and zero beverage revenue is currently flowing into Unifocus. This mirrors the same gap independently surfaced the same week at two other HMAlpha properties (Hilton Scottsdale, Westin La Paloma) per the 9/10 weekly portfolio call — worth flagging to Unifocus as a pattern, not a one-off.

Banquet/CI mapping is confirmed incomplete: Unifocus is likely reading CI's coarse "Business Type" field rather than the granular "Group Type" field that Sales actually uses day to day, which means real booking-type distinctions (including at least one unexplained code, "AA") aren't being captured. Progress was made on a parallel Teams thread with Taylor Walton the same day (Group, Local, and Rooms Only now mapped), but full mapping depends on confirming and correcting the CI field first.

A real, specific coverage gap was found live with the Loss Prevention team: the Security Officer standard has no AM shift coverage at all on Saturday or Sunday, despite officers evidently covering those shifts in practice today — likely needs two additional shifts added to the standard. Separately, Housekeeping ran 6% over standard for the most recent complete week and is projected 25% underscheduled for the week ahead (consistent across two independent sessions three days apart), and a spontaneous department-level variance check on a different outlet ("Arteta") showed -21% overall despite unremarkable individual job numbers — neither has been investigated yet. Two further schedule anomalies (an unexplained back-to-back AM/PM shift assignment, and an employee with every day blacked out in availability for no confirmed reason) surfaced in Friday's session with Sandra and remain open.

On the interfaces side, ADP/Paychex integration itself is functioning correctly, though the usual pattern of secondary-job miscoding recurred across two separate weekly audits (property/HMA-owned, not a Unifocus defect). Two support tickets remain open: Carlos Dela Cruz's broken login (opened 9/9) and a new Reporter-launch failure for Jose Lopez, Director of Engineering (UNIFOCUS-262725, opened 9/10, awaiting Unifocus triage). The property's ProfitSword rooms forecast window remains short (10 days vs. the 16 Unifocus needs) — confirmed independently three separate times this week by three different people, which suggests it's a real, not incidental, gap.

On a positive note: contract-labor placeholder employees were successfully built live with HR (Valeria Ruvalcaba) on Friday, using a clean, consistent naming convention, and the property benefits from real prior-Unifocus familiarity among several staff (including from Loews properties), which visibly accelerated training throughout the week.

---

## Detail — Work Rules, Interfaces, Standards

**Work Rules**
No property-specific work-rule issues surfaced this week beyond the standard portfolio patterns already documented elsewhere (unpaid-lunch thresholds, etc.) — none flagged as open for Del Mar specifically.

**Interfaces**

**ADP/Paychex** — Employee Reconcile, Hours Transfer, and schedule export all functioning as designed. Secondary-job miscoding found and re-found across two separate weekly audits (9/8 admin session and again 9/9 manager training) — a housekeeper coded only as public area attendant despite also working room attendant/laundry, a barista under a possibly-defunct job, and further gaps ("Chelsea and others") found again 9/9. All property/HMA-owned ADP-side data-coding issues, not Unifocus configuration defects. **Carlos Dela Cruz's login is still broken** as of this draft — ticket opened 9/9, unresolved. **New: UNIFOCUS-262725** (opened 9/10) — Jose Lopez cannot launch Reporter/Reports; a partial dialog flashes then the screen goes blank; User Administration checked and appears in order; no other users report the issue; awaiting Unifocus support triage.

**CI** — banquet forecast pulls correctly on the standard weekly cycle, but booking-type mapping is confirmed incomplete. Unifocus most likely reads CI's coarse "Business Type" field (3–4 broad options: Local, Group, In-House, Contract) rather than the granular "Group Type" field (~10 options) that the Sales team actually uses day to day — including at least one unexplained code, "AA," appearing in real BEO history with no obvious source. This needs confirmation and correction with the interface team before full mapping is possible. Separate progress made the same day via a Teams thread with Taylor Walton: Group, Local, and Rooms Only booking types are now mapped (Rooms Only confirmed to map to Group).

**ProfitSword** — rooms forecast imports correctly, but the property's legacy PMS does not cleanly export arrivals/departures (a known Marriott-lineage data quality issue, property/HMA-side, not a Unifocus problem) — current workaround is GM Mark Ziomek manually reconciling and entering corrected numbers directly into Unifocus's Rooms Forecast screen. The forecast window itself is also short: property currently receives 10 days from ProfitSword, Unifocus needs 16 — confirmed independently in three separate sessions this week (9/8, 9/10, 9/11), suggesting this is a real, recurring gap rather than an isolated report.

**Labor Standards**

**No bartender job code or labor standard exists at this property at all.** Confirmed directly with Stephanie Simmons (Director of Sales) on 9/9, and independently reconfirmed during Thursday's manager training (9/10): the bar is currently scheduled based on occupancy, not beverage revenue, and zero beverage revenue is flowing into Unifocus regardless. This is the property's most significant open standards gap, and matches the same pattern independently found the same week at two other HMAlpha properties (Hilton Scottsdale, Westin La Paloma) — worth raising as a portfolio-wide methodology question rather than fixing property by property.

**Security Officer standard has no AM shift coverage on Saturday or Sunday** — found live 9/10 with John Davis (Loss Prevention Supervisor); officers appear to be covering those shifts in practice today regardless, likely by pulling from other shifts or DoubleTree-shared staff (the DoubleTree-shared-security-staff question is itself still open — see Labor Structure below). Likely needs 2 additional shifts added to the standard; not yet corrected.

**Cook labor standard is entirely fixed, with no banquet variability** — confirmed 9/10 ("donut chef" 5 AM shift, fixed AM/PM coverage, Sunday–Thursday lunch coverage). Not unusual at this stage of an implementation, but worth revisiting once the property has more forecast history, consistent with the same limitation flagged generically across other HMAlpha properties.

**Housekeeping/Arteta department-level variance:** ran 6% over standard for the most recent complete week and is projected 25% underscheduled for the upcoming week — the same two figures independently confirmed across two sessions three days apart (9/10 and 9/11), a useful internal consistency check but not yet a resolved finding. Separately, a spontaneous check of a different outlet ("Arteta") during the 9/10 session showed individual job variances that were modest (Bartender -1%, Buser -17%, Supervisor -3%) but a **whole-department total of -21%** — flagged by Mark Ziomek as worth investigating, not yet looked into.

**Two schedule anomalies, unresolved:** found during the 9/11 Sandra Academia session — an employee drafted into back-to-back AM and PM shifts with no gap (system normally prevents this; root cause traced to missing Employee Maintenance availability, but Pete flagged this as still not fully explained), and a separate employee showing every single day blacked out in availability for no confirmed reason (possibly termination/leave-related, unconfirmed).

**Contract-labor placeholder employees** — built live 9/11 with Valeria Ruvalcaba, one Room Attendant model completed as a template. Naming convention settled: Employee ID built from the job code with a two-digit incrementing suffix (e.g., `L2655-01`), display name as job title (first name) + staffing agency (last name). Half sub-only (to control auto-scheduling volume, matching the same placeholder-capacity technique documented in the PWS methodology doc), "Include in Schedule Export" unchecked on all of them to prevent a Paychex import failure. **Per-department headcount still needs validation** — the agreed 12-placeholder figure was for Room Attendants specifically; other departments (Laundry, Houseman) likely need far fewer and haven't been surveyed individually yet.

**Labor Structure**
Marty (Laundry) remains miscoded as Houseman, a legacy from the prior HR director (before Valeria's June 2026 start) — not corrected as of this draft. Security and Engineering share staff with DoubleTree San Diego Del Mar; the full standard is built at Marriott (payroll originates there), but whether DoubleTree-shared Security staff need to be added to this property's own Unifocus database is still an open question, distinct from the AM-shift coverage gap above. Actual KBI entry ownership (who enters real banquet numbers after the fact — Sales vs. Finance vs. Mark) is undecided, a segregation-of-duties question raised 9/9 and not yet resolved. Whether Taylor Walton built any Job Assignments (sub-skill tagging) during original configuration is unconfirmed.

**Planning & Schedule Timeline**
Confirmed correctly timed and Monday-rolling, matching the portfolio-standard weekly cycle (rooms/banquet forecast Monday morning, revenue center forecast midday Monday, Generate Projected Hours/Generate Schedules Tuesday ~11:00–11:30 AM, schedule editable Tuesday noon through Wednesday 3 PM, labor meeting Wednesday, property-wide publish end of day Wednesday). No property-specific timeline defects found this week, unlike Moran's Task Scheduler misconfiguration.

**Database Status**
Settling normally. Recurring secondary-job miscoding pattern (see Interfaces above) is the main database-quality issue, property/HMA-owned. No anomalies on the scale of Moran's Work Class or guest-count issues found here.

**Unifocus Mobile App**
Not yet activated for this property. No timeline discussed this week; consistent with the portfolio-wide pattern of holding off until managers are comfortable with core scheduling first.

**Standards Test**
No formal budget-vs-standards pass has been completed for this property. The Housekeeping productivity-goal question (6% over / 25% underscheduled / -21% department variance at a different outlet) suggests this is worth a deliberate look once more forecast history accumulates and the open standards gaps (bartender, Security AM coverage) are addressed.

---

## Planning Going Forward

**Training**
- Confirm and schedule the real follow-up Admin session(s) with Sandra Academia — Tuesday 9/15/26, 10 AM–12 PM PT is booked, but Friday's compressed session left significant curriculum uncovered (her own three-page checklist of topics still has items remaining).
- Val (HR) to survey each department for actual per-job contract-labor headcount need, rather than defaulting to a flat 12 placeholders across the board.
- Consider a dedicated working session on Assignments (Banquet Cook vs. Outlet Cook split) — raised by Sandra 9/11, not yet built.

**Configuration**
- Build a bartender job code and labor standard from scratch — currently doesn't exist at all; no event type reliably triggers bartender labor.
- Correct the Security Officer standard's missing AM shift coverage on Saturday/Sunday — likely needs 2 additional shifts.
- Investigate the two unexplained schedule anomalies from the 9/11 session (back-to-back AM/PM shift; fully-blacked-out employee availability).
- Investigate the Housekeeping/Arteta -21% department-level variance.
- Correct Marty's job coding (Laundry, currently shown as Houseman).
- Decide Actual KBI entry ownership (Sales/Stephanie vs. Finance vs. Sandra/Mark) — segregation-of-duties question, unresolved since 9/9.
- Confirm which CI field Unifocus reads for booking type (Business Type vs. Group Type) and correct if it's the coarser one.
- Resolve the "AA" booking-type code source and complete the Menu Tasting mapping decision (same open question recurring at Baha Mar).
- Cashier vs. host job code — confirm whether "cashier" is still real or should move to Do Not Use.
- Confirm the third-party contract-labor agency's correct name/spelling ("Quick...", unconfirmed).

**Interfaces**
- Extend the ProfitSword rooms forecast window from 10 to 16 days — confirmed independently three times this week, worth escalating.
- Resolve UNIFOCUS-262725 (Jose Lopez, Reporter launch failure) and Carlos Dela Cruz's still-broken login.
- Confirm scope of Nicole Mendez's daily CI/Delphi/Envision combined feed — portfolio-wide or property-specific — and which system(s) actually carry Del Mar's banquet data.
- Confirm whether DoubleTree-shared Security staff need to be added to this property's own Unifocus database.

**Other**
- Val/HMAlpha to consider a written Unifocus onboarding packet for future new managers.

---

## Related Files

- [Marriott Del Mar — Property KB](kb.md)
- [Marriott Del Mar — Contacts](contacts.md)
- [System Admin Training — AM, 9/8/26](2026-09-08_admin-training-am.md) / [PM](2026-09-08_admin-training-pm.md)
- [Manager Training, 9/9/26](2026-09-09_manager-training.md)
- [Stephanie Simmons CI Integration Meeting, 9/9/26](2026-09-09_stephanie-simmons-ci-integration-meeting.md)
- [Banquet/CI Mapping Teams Thread, 9/9/26](2026-09-09_taylor-walton-banquet-mapping-teams.md)
- [Manager Training — Thursday, 9/10/26](2026-09-10_manager-training-thursday.md)
- [Valeria Ruvalcaba — Placeholder Employees, Troubleshooting, and Training, 9/11/26](2026-09-11_valeria-placeholder-training-and-troubleshooting.md)
- [Sandra Academia — Ad-Hoc Training, 9/11/26](2026-09-11_sandra-academia-adhoc-training.md)
- [HM Alpha Weekly Call Notes, 9/10/26](../2026-09-10_weekly-hma-call-notes.md) — portfolio-wide bartender/banquet-KBI pattern cross-reference
- [The Moran — Status Report Draft (template precedent)](../../makeready/the-moran/2026-09-02_status-report-draft.md)

---

*© Peter A. Castellano. All rights reserved.*
