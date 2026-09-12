<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# San Diego Marriott Del Mar — Planning & Scheduling Status Report (Working Draft)

**Modeled on the standard Unifocus P&S Status Report format** (see [The Moran](../../makeready/the-moran/2026-09-02_status-report-draft.md) for the most recent formatting pass this structure is based on, and its condensed [client-ready version](../../makeready/the-moran/2026-09-05_status-letter-client-ready.md) plus the [matching Word doc build process](../../makeready/the-moran/2026-09-05_status-letter-client-ready.md) for the eventual next step).

---

## ⚠️ WORKING DRAFT — current through Friday 9/11/26, Pete's last onsite day — SEE EDITORIAL NOTES BEFORE CONDENSING TO CLIENT-READY ⚠️

**Editorial notes (do not paste into the form):**
- **Config consultant confirmed 9/12/26: Taylor Walton.** Post-implementation follow-up-call owner also resolved: **John Grech**, per Pete's best read (not stated as 100% certain). Both updated below.
- **"First status report for this engagement" — confirmed 9/12/26.** Searched Pete's email for anything from Taylor Walton resembling a status report; nothing found. The only property-relevant email from Taylor is his 8/27/26 "Unifocus - Training Introduction & On-Site Follow Up" note (pre-visit scheduling/coordination, sent before the 9/7 training week even started, not a status update). Unlike Moran, there is no prior Steve Carrell-style config-visit letter to reconcile against — this is genuinely the first status report for this engagement, and the Since-Previous-Update: N/A framing below stands as written.
- **No single blocking defect like Moran's 261575** — this property's open items are real but distributed (banquet/CI mapping incompleteness, a missing Banquet Bartender standard, a couple of unexplained schedule anomalies, a Security coverage gap, two open support tickets). Status recommendation below reflects that: real work remains, but nothing found this week looks go-live-blocking in the way Moran's Generate Schedules failure was.
- **Positive update, 9/12/26: Arterra's outlet Bartender standard confirmed working** (beverage-revenue-based, actuals flowing for the week just completed) — flagged mid-week as a concern, resolved since. Distinct from the still-open Banquet Bartender gap (event/BEO-driven bar staffing), which remains unbuilt — don't let the good news paper over that. Also fixed a naming error running through the prior draft: the F&B outlet in the -21% department-variance finding is **Arterra**, not "Arteta" — corrected throughout. That variance finding is also its own separate issue, unrelated to the Housekeeping department variance it was previously bundled with under one heading; split apart below.
- **Sandra Academia (DOF, the actual day-to-day key user) only connected with Pete on the very last day** — she was out sick the entire training week. Her own admin onboarding was compressed into one rushed ad-hoc session Friday afternoon rather than the normal multi-day admin curriculum, and a real follow-up is already booked (Tue 9/15/26, 10 AM–12 PM PT). **This is arguably the single most important caveat on this whole report** — the property's actual system administrator has had a fraction of the normal training time so far. **Mitigating factor:** she has prior Unifocus experience from Dimension (this property's former management company), specifically Time & Attendance — a different module, but real product familiarity that should help the Tuesday follow-up move faster than a true cold start.
- **Left out as internal-only, not client-facing:** Pete's personal expressed interest in reclaiming the DoubleTree San Diego Del Mar engagement from John Grech; Mark Ziomek's "make Sandra suffer" remark and the scheduling-conflict saga behind it; Val's personal week (family loss, move); Pete's own travel logistics (extended stay, uncle visit, cruise/Nashville stretch); the placeholder-methodology cross-references to Moran and the PWS foundations doc, which are internal IP, not client status.
- **Update, 9/12/26: one of the two schedule anomalies found late in the week (9/11) is now resolved** — the Laundry placeholder back-to-back AM/PM shift, fixed by Pete (missing availability restrictions). The second anomaly ("Eric," fully-blacked-out availability) is still genuinely unexplained — don't understate that one as resolved.
- Status/Trend indicator below is a first-pass call, not yet confirmed by Pete.

---

## Project Detail

| Field | Value |
|---|---|
| **Name of hotel(s)** | San Diego Marriott Del Mar, 11966 El Camino Real, San Diego, CA 92130 |
| **Name of Unifocus consultant(s)** | Pete Castellano (training); Taylor Walton (configuration); John Grech (post-implementation follow-up calls) |
| **Interfaces** | **Paychex Employee Reconcile and Hours Transfer** — functioning as designed on the standard rolling window. Several secondary-job miscodings found across two separate audits this week (a housekeeper coded only as public area attendant despite also working room attendant/laundry; a barista under a possibly-defunct job; further gaps found again during the 9/9 manager session) — all property/HMA-owned Paychex-side data issues, not Unifocus config.<br><br>**Paychex Schedule Export** — configured but not yet verified in practice; only runs at an actual publish, and Del Mar hasn't published live yet, so this can't be confirmed working until the first go-live publish, week of 9/19/26 (a one-time cutover event, not the ongoing weekly cadence).<br><br>**ProfitSword Forecast and Actuals** — rooms forecast flows correctly, but the property's legacy PMS does not export arrivals/departures cleanly (a known Marriott-lineage quirk, property/HMA-owned, not Unifocus config); current workaround is manual reconciliation by GM Mark Ziomek directly into Unifocus's Rooms Forecast screen. The 10-day ProfitSword forecast window is also short of the 16 days Unifocus needs — confirmed independently three separate times this week (9/8 admin session, 9/10 Thursday manager training, 9/11 Sandra session).<br><br>**CI Forecast and Actuals** — banquet booking-type mapping is confirmed incomplete: Unifocus likely reads the coarse "Business Type" CI field (3–4 options) rather than the granular "Group Type" field (~10 options, including unexplained codes like "AA") that Sales actually uses — this needs correction before full banquet mapping is possible. Group, Local, and Rooms Only are mapped as of a 9/9 Teams thread with Taylor Walton (Rooms Only confirmed → Group). |
| **Implementation** | Training surfaced real gaps between built standards and day-to-day operation: **no Banquet Bartender job code or labor standard exists at all** (confirmed 9/9 with Stephanie Simmons — no event type reliably triggers banquet bar labor; event/BEO-driven bar staffing is still occupancy-based, not beverage-revenue-based, per the 9/10 session). **Update 9/12/26: distinct from this, Arterra's (F&B outlet) regular Bartender standard is confirmed working** — beverage-revenue-based, with real actuals now flowing for the week just completed. **Security Officer standard has no AM double-shift coverage on Saturday/Sunday when the supervisor is off** despite officers apparently covering the second shift on those days in practice (found live 9/10 with John Davis; likely needs 2 additional shifts). **Housekeeping ran 6% over standard for the most recent complete week and is projected 25% underscheduled for the week ending 9/18** (confirmed across two sessions three days apart, 9/10 and 9/11) — the draft schedule had not been edited by EOD Friday. **Separately, Arterra showed a whole-department variance of -21%** despite modest individual job numbers (Bartender -1%, Buser -17%, Supervisor -3%) — flagged live 9/10 by Mark Ziomek, not yet investigated. **Of two schedule anomalies found during the 9/11 Sandra session, one is now resolved:** a Laundry placeholder employee drafted into back-to-back AM/PM shifts with no gap, traced to missing Employee Maintenance availability and corrected by Pete 9/12/26 — see the placeholder-availability lesson below. **The other remains open:** a separate employee showing every day blacked out in availability for no confirmed reason. Contract-labor placeholder employees were built live with Valeria Ruvalcaba on 9/11 (one Room Attendant model, naming convention settled: job-code-based Employee ID, job-title/agency display name, half sub-only, "Include in Schedule Export" unchecked) — the agreed 12-placeholder headcount still needs per-department validation rather than a flat default. **Two open support tickets, user-functionality issues rather than interface defects:** Carlos Dela Cruz's login remained broken all week (ticket opened 9/9, unresolved as of this draft); **UNIFOCUS-262725** (opened 9/10) — Jose Lopez (Director of Engineering) cannot launch Reporter/Reports (dialog flashes, then blank), User Administration checked and in order, awaiting Unifocus support triage. |
| **Training** | System Admin Training held Tue 9/8 (AM + PM, full day — Sandra absent sick, Al Catino and Mark Ziomek primary attendees). Manager Training held Wed 9/9 (Carlos, Ramon, Edson, Juan Barrios) and Thu 9/10 (Jesse Frost, Valeria Ruvalcaba, Executive Chef, John Davis, Agustin Paz, Mark Ziomek). A dedicated CI/banquet integration session was held 9/9 with Stephanie Simmons (Director of Sales). **Fri 9/11 — office hours, extended to a full working day:** Valeria Ruvalcaba's placeholder/troubleshooting session and Sandra Academia's first-ever connection with Pete both held, the latter compressed and incomplete by her own request ("just what she needs for now") — **a proper follow-up is booked for Tue 9/15/26, 10 AM–12 PM PT**, before that week's labor meeting. This is effectively Sandra's Admin Training session 1 of 2 (or more), not a completed curriculum. |
| **Visit Dates** | Onsite training Tue 9/8/26 – Fri 9/11/26 (property had prior Unifocus experience under 2 years ago, and several staff — including Jose Lopez — came from other Unifocus/Loews properties, both real accelerants this week) |
| **Go-Live Date** | Week of 9/19/26 (portfolio-standard cutover — same timing as every other HMAlpha Wave 1/2 property; Del Mar's automated weekly cycle is confirmed correctly timed, Monday-rolling) |
| **Distribution List** | San Diego Marriott Del Mar: Mark Ziomek (GM), Sandra Academia (DOF), Valeria Ruvalcaba (HR). Unifocus: Taylor Walton (configuration), John Grech (follow-up calls), Alain Derderian, Shilpa Bhando (VP Operations). |

**Status: 🟡 Caution | Since Previous Update: N/A — first status report for this engagement**

**Project Status:** Training for this visit is delivered across all core curriculum, with one significant concern: Sandra Academia, the property's actual day-to-day system administrator, was out sick the entire training week and only connected with Pete on the final day — Friday's session was a rushed, scope-expanding overview rather than a complete Admin curriculum. **A follow-up call is scheduled for Tuesday, September 15, 10 AM–12 PM Pacific**, to properly close this gap before that week's labor meeting. One mitigating factor: Sandra has prior Unifocus experience from her time with Dimension (the property's former management company), including the Time & Attendance module — a different module than Planning & Scheduling, but real underlying product familiarity that should accelerate the Tuesday follow-up.

The week's most consequential finding is that **no Banquet Bartender labor standard exists at this property at all** — confirmed directly with Stephanie Simmons (Director of Sales) on 9/9 and independently reconfirmed during Thursday's manager training: event/BEO-driven bar staffing is still scheduled off occupancy, not beverage revenue. This mirrors the same gap independently surfaced the same week at two other HMAlpha properties (Hilton Scottsdale, Westin La Paloma) per the 9/10 weekly portfolio call — worth flagging to Unifocus as a pattern, not a one-off. **Update, 9/12/26:** this is distinct from Arterra, the property's standing restaurant/bar outlet — its Bartender standard is confirmed working correctly, driven by beverage revenue, with real actuals now flowing for the week just completed. Good news, but the Banquet Bartender gap above is still open.

Banquet/CI mapping is confirmed incomplete: Unifocus is likely reading CI's coarse "Business Type" field rather than the granular "Group Type" field that Sales actually uses day to day, which means real booking-type distinctions (including at least one unexplained code, "AA") aren't being captured. Progress was made on a parallel Teams thread with Taylor Walton the same day (Group, Local, and Rooms Only now mapped), but full mapping depends on confirming and correcting the CI field first.

A real, specific coverage gap was found live with the Loss Prevention team: the Security Officer standard has no AM shift coverage at all on Saturday or Sunday, despite officers evidently covering those shifts in practice today — likely needs two additional shifts added to the standard. Separately, Housekeeping ran 6% over standard for the most recent complete week and is projected 25% underscheduled for the week ahead (consistent across two independent sessions three days apart), and a spontaneous department-level variance check at Arterra (F&B outlet) showed -21% overall despite unremarkable individual job numbers — neither has been investigated yet. Two further schedule anomalies surfaced in Friday's session with Sandra — one is now resolved: a Laundry placeholder's back-to-back AM/PM shift assignment, traced to missing availability restrictions and fixed by Pete 9/12/26. The other remains open: an employee with every day blacked out in availability for no confirmed reason. Two open support tickets are also unresolved — user-functionality issues, not interface or standards defects: Carlos Dela Cruz's broken login (opened 9/9) and a new Reporter-launch failure for Jose Lopez, Director of Engineering (UNIFOCUS-262725, opened 9/10, awaiting Unifocus triage).

On the interfaces side, Paychex Employee Reconcile and Hours Transfer are functioning correctly, though the usual pattern of secondary-job miscoding recurred across two separate weekly audits (property/HMA-owned, not a Unifocus defect). **Paychex Schedule Export remains unverified** — it can only be confirmed at an actual publish, and this property hasn't published live yet; that first, one-time go-live publish happens the week of 9/19/26. The property's ProfitSword forecast/actuals window remains short (10 days vs. the 16 Unifocus needs) — confirmed independently three separate times this week by three different people, which suggests it's a real, not incidental, gap.

On a positive note: contract-labor placeholder employees were successfully built live with HR (Valeria Ruvalcaba) on Friday, using a clean, consistent naming convention, and the property benefits from real prior-Unifocus familiarity among several staff (including from Loews properties), which visibly accelerated training throughout the week.

---

## Detail — Work Rules, Interfaces, Standards

**Work Rules**
No property-specific work-rule issues surfaced this week beyond the standard portfolio patterns already documented elsewhere (unpaid-lunch thresholds, etc.) — none flagged as open for Del Mar specifically.

**Interfaces**

**Paychex Employee Reconcile and Hours Transfer** — functioning as designed. Secondary-job miscoding found and re-found across two separate weekly audits (9/8 admin session and again 9/9 manager training) — a housekeeper coded only as public area attendant despite also working room attendant/laundry, a barista under a possibly-defunct job, and further gaps ("Chelsea and others") found again 9/9. All property/HMA-owned Paychex-side data-coding issues, not Unifocus configuration defects.

**Paychex Schedule Export** — configured but not yet verified in practice. It only runs at an actual publish, and Del Mar hasn't published live yet, so this can't be confirmed working until the first go-live publish, week of 9/19/26 — a one-time cutover event, not the recurring weekly cadence. Once that first publish runs clean, it becomes routine and doesn't need this same scrutiny going forward.

**ProfitSword Forecast and Actuals** — rooms forecast imports correctly, but the property's legacy PMS does not cleanly export arrivals/departures (a known Marriott-lineage data quality issue, property/HMA-side, not a Unifocus problem) — current workaround is GM Mark Ziomek manually reconciling and entering corrected numbers directly into Unifocus's Rooms Forecast screen. The forecast window itself is also short: property currently receives 10 days from ProfitSword, Unifocus needs 16 — confirmed independently in three separate sessions this week (9/8, 9/10, 9/11), suggesting this is a real, recurring gap rather than an isolated report.

**CI Forecast and Actuals** — banquet forecast pulls correctly on the standard weekly cycle, but booking-type mapping is confirmed incomplete. Unifocus most likely reads CI's coarse "Business Type" field (3–4 broad options: Local, Group, In-House, Contract) rather than the granular "Group Type" field (~10 options) that the Sales team actually uses day to day — including at least one unexplained code, "AA," appearing in real BEO history with no obvious source. This needs confirmation and correction with the interface team before full mapping is possible. Separate progress made the same day via a Teams thread with Taylor Walton: Group, Local, and Rooms Only booking types are now mapped (Rooms Only confirmed to map to Group).

**Labor Standards**

**No Banquet Bartender job code or labor standard exists at this property at all.** Confirmed directly with Stephanie Simmons (Director of Sales) on 9/9, and independently reconfirmed during Thursday's manager training (9/10): event/BEO-driven bar staffing is currently scheduled based on occupancy, not beverage revenue. This is the property's most significant remaining open standards gap, and matches the same pattern independently found the same week at two other HMAlpha properties (Hilton Scottsdale, Westin La Paloma) — worth raising as a portfolio-wide methodology question rather than fixing property by property. **Distinct from this — see below:** Arterra's regular restaurant/bar outlet Bartender standard is confirmed working.

**Security Officer standard has no AM shift coverage on Saturday or Sunday** — found live 9/10 with John Davis (Loss Prevention Supervisor); officers appear to be covering those shifts in practice today regardless, likely by pulling from other shifts or DoubleTree-shared staff (the DoubleTree-shared-security-staff question is itself still open — see Labor Structure below). Likely needs 2 additional shifts added to the standard; not yet corrected.

**Cook labor standard is entirely fixed, with no banquet variability** — confirmed 9/10 ("donut chef" 5 AM shift, fixed AM/PM coverage, Sunday–Thursday lunch coverage). Not unusual at this stage of an implementation, but worth revisiting once the property has more forecast history, consistent with the same limitation flagged generically across other HMAlpha properties.

**Housekeeping department-level variance:** ran 6% over standard for the most recent complete week and is projected 25% underscheduled for the upcoming week — the same two figures independently confirmed across two sessions three days apart (9/10 and 9/11), a useful internal consistency check but not yet a resolved finding.

**Arterra (F&B outlet) department-level variance:** a spontaneous check during the 9/10 session showed individual job variances that were modest (Bartender -1%, Buser -17%, Supervisor -3%) but a **whole-department total of -21%** — flagged by Mark Ziomek as worth investigating, not yet looked into.

**Arterra Bartender — resolved, update 9/12/26:** confirmed via a KBI Actuals check that Arterra's Bartender standard is now driven by beverage revenue (the Bar Revenue KBI), with real actuals flowing correctly for the week just completed (9/5–9/11/26). A genuine positive development since the training week — distinct from the still-open Banquet Bartender gap above, and not itself an explanation for the still-unresolved -21% Arterra department variance noted directly above.

**One of two schedule anomalies from the 9/11 session is now resolved:** a Laundry placeholder employee had been drafted into back-to-back AM and PM shifts with no gap (system normally prevents this) — root cause confirmed as missing Employee Maintenance availability restrictions on that placeholder, and **Pete corrected it 9/12/26**. Broader lesson: placeholder employees need real availability settings, not just the standard Sub Only/schedule-export-exclusion configuration, or they're eligible for any shift they're otherwise qualified for — worth a portfolio-wide placeholder audit, not just a one-off fix. **The second anomaly remains open:** a separate employee showing every single day blacked out in availability for no confirmed reason (possibly termination/leave-related, unconfirmed).

**Contract-labor placeholder employees** — built live 9/11 with Valeria Ruvalcaba, one Room Attendant model completed as a template. Naming convention settled: Employee ID built from the job code with a two-digit incrementing suffix (e.g., `L2655-01`), display name as job title (first name) + staffing agency (last name). Half sub-only (to control auto-scheduling volume, matching the same placeholder-capacity technique documented in the PWS methodology doc), "Include in Schedule Export" unchecked on all of them to prevent a Paychex import failure. **Per-department headcount still needs validation** — the agreed 12-placeholder figure was for Room Attendants specifically; other departments (Laundry, Houseman) likely need far fewer and haven't been surveyed individually yet.

**Labor Structure**
Marty (Laundry) remains miscoded as Houseman, a legacy from the prior HR director (before Valeria's June 2026 start) — not corrected as of this draft. Security and Engineering share staff with DoubleTree San Diego Del Mar; the full standard is built at Marriott (payroll originates there), but whether DoubleTree-shared Security staff need to be added to this property's own Unifocus database is still an open question, distinct from the AM-shift coverage gap above. Actual KBI entry ownership (who enters real banquet numbers after the fact — Sales vs. Finance vs. Mark) is undecided, a segregation-of-duties question raised 9/9 and not yet resolved. Whether Taylor Walton built any Job Assignments (sub-skill tagging) during original configuration is unconfirmed.

**Planning & Schedule Timeline**
Confirmed correctly timed and Monday-rolling, matching the portfolio-standard weekly cycle (rooms/banquet forecast Monday morning, revenue center forecast midday Monday, Generate Projected Hours/Generate Schedules Tuesday ~11:00–11:30 AM, schedule editable Tuesday noon through Wednesday 3 PM, labor meeting Wednesday, property-wide publish end of day Wednesday). No property-specific timeline defects found this week, unlike Moran's Task Scheduler misconfiguration.

**Database Status**
Settling normally. Recurring secondary-job miscoding pattern (see Interfaces above) is the main database-quality issue, property/HMA-owned. No anomalies on the scale of Moran's Work Class or guest-count issues found here. **Two open support tickets, both user-access/functionality issues rather than database defects:** Carlos Dela Cruz's login remained broken all week (ticket opened 9/9, unresolved as of this draft); **UNIFOCUS-262725** (opened 9/10) — Jose Lopez (Director of Engineering) cannot launch Reporter/Reports (a partial dialog flashes then the screen goes blank), User Administration checked and appears in order, no other users report the issue, awaiting Unifocus support triage.

**Unifocus Mobile App**
Not yet activated for this property. No timeline discussed this week; consistent with the portfolio-wide pattern of holding off until managers are comfortable with core scheduling first.

**Standards Test**
No formal budget-vs-standards pass has been completed for this property. The Housekeeping productivity-goal question (6% over / 25% underscheduled) and Arterra's -21% department variance suggest this is worth a deliberate look once more forecast history accumulates and the remaining open standards gaps (Banquet Bartender, Security AM coverage) are addressed.

---

## Planning Going Forward

**Training**
- Confirm and schedule the real follow-up Admin session(s) with Sandra Academia — Tuesday 9/15/26, 10 AM–12 PM PT is booked, but Friday's compressed session left significant curriculum uncovered (her own three-page checklist of topics still has items remaining).
- Val (HR) to survey each department for actual per-job contract-labor headcount need, rather than defaulting to a flat 12 placeholders across the board.
- Consider a dedicated working session on Assignments (Banquet Cook vs. Outlet Cook split) — raised by Sandra 9/11, not yet built.

**Configuration**
- Build a Banquet Bartender job code and labor standard from scratch — currently doesn't exist at all; no event type reliably triggers banquet bar labor. (Distinct from Arterra's outlet Bartender standard, confirmed working as of 9/12/26.)
- Correct the Security Officer standard's missing AM shift coverage on Saturday/Sunday — likely needs 2 additional shifts.
- Investigate the remaining unexplained schedule anomaly from the 9/11 session (an employee fully blacked out in availability) — the back-to-back AM/PM shift anomaly is resolved (Laundry placeholder, fixed by Pete 9/12/26).
- Audit other existing placeholder employees for missing Employee Maintenance availability restrictions, portfolio-wide, not just at this property — the root cause behind the resolved anomaly above.
- Investigate Housekeeping's 6% over/25% underscheduled variance.
- Investigate Arterra's -21% whole-department variance (individual job numbers were modest: Bartender -1%, Buser -17%, Supervisor -3%).
- Correct Marty's job coding (Laundry, currently shown as Houseman).
- Decide Actual KBI entry ownership (Sales/Stephanie vs. Finance vs. Sandra/Mark) — segregation-of-duties question, unresolved since 9/9.
- Confirm which CI field Unifocus reads for booking type (Business Type vs. Group Type) and correct if it's the coarser one.
- Resolve the "AA" booking-type code source and complete the Menu Tasting mapping decision (same open question recurring at Baha Mar).
- Cashier vs. host job code — confirm whether "cashier" is still real or should move to Do Not Use.
- Confirm the third-party contract-labor agency's correct name/spelling ("Quick...", unconfirmed).

**Interfaces**
- **Confirm the Paychex Schedule Export actually works at the first go-live publish, week of 9/19/26** — this is the one-time event that will finally verify it; can't be tested before then.
- Extend the ProfitSword forecast/actuals window from 10 to 16 days — confirmed independently three times this week, worth escalating.
- Confirm scope of Nicole Mendez's daily CI/Delphi/Envision combined feed — portfolio-wide or property-specific — and which system(s) actually carry Del Mar's banquet data.
- Confirm whether DoubleTree-shared Security staff need to be added to this property's own Unifocus database.

**Other**
- Resolve UNIFOCUS-262725 (Jose Lopez, Reporter launch failure) and Carlos Dela Cruz's still-broken login — user-access issues, not interface defects.
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
