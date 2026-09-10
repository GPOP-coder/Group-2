<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — Property KB

**Property:** San Diego Marriott Del Mar
**Address:** 11966 El Camino Real, San Diego, California, USA, 92130
**Main phone:** +1 858-523-1700
**Brand:** Marriott
**EMS:** CI/TY
**HMAlpha wave:** W17 — training week of Sep 7, 2026 (✅ confirmed 9/2/26)
**Pete's role:** Trainer
**Config:** TBD (per HM Alpha portfolio tracker, unconfirmed)
**Post-config:** Taylor Walton (Unifocus)

---

## Contacts

| Name | Role | Email |
|---|---|---|
| Mark Ziomek | General Manager (EC) | mziomek@hmalpha.com |
| Valeria Ruvalcaba | Human Resources (EC) | vruvalcaba@hmalpha.com |
| Sandra Academia | Director of Finance (EC) — **key user, runs the system day to day** | Sandra.Academia@marriott.com |
| Jesse Frost | Director F&B (EC) | jesse.frost@marriott.com |
| Jose Lopez | Director of Engineering (EC) | jlopez@hmalpha.com |
| Stephanie Simmons | Director of Sales and Marketing | ssimmons@hmalpha.com |
| Al Catino | Accounting — Payroll | al.catino@marriott.com |
| Ramon Silva | Director of Housekeeping | ramon.silva2@marriott.com |
| Jason Chang | Front Office Manager | jason.chang3@marriott.com |

*Full roster (restaurant managers, chef, banquet manager, loss prevention): see [contacts.md](contacts.md).*

---

## Property Notes

- **EMS is CI/TY** — same as other Marriott properties in the portfolio (Westin La Paloma, Union Station Nashville).
- **Legacy PMS does not export arrivals cleanly to ProfitSword** — a known Marriott-lineage quirk at this property specifically ("makes Windows 95 look modern," per GM Mark Ziomek). Since Unifocus calculates departures from arrivals + change in occupancy, and housekeeping's labor standard runs primarily off departures, this is a real forecast-accuracy risk until resolved. **This is a Paychex/ProfitSword-side data gap, not a Unifocus configuration issue** — property/HMA-owned, not a Pete/PWS action item. Current workaround: revenue team manually reconciles PMS on-the-books arrivals against expected pickup and enters corrected numbers directly in Unifocus's Rooms Forecast screen. **PowerAdmin** (a cloud-based PMS replacement) was mentioned as a possible future fix, no committed date.
- **Shared departments with DoubleTree San Diego Del Mar:** Security, Accounting, Sales, and Laundry are budgeted split between the two properties, but all employees/scheduling live at Marriott (payroll originates there) — build the full standard at Marriott, do not attempt to move any of it to DoubleTree. Engineering is the exception: each property has its own engineering staff/budget, only the manager is shared. Full detail: [2026-09-02_taylor-walton-prep-call.md](2026-09-02_taylor-walton-prep-call.md).
- **Third-party contract labor agency ("Quick..." — name/spelling unconfirmed)** does not interface hours into Unifocus at all; actual hours for this specific vendor must be entered manually. Distinct from this property's other, normal Work Records-based contract labor.
- **DoubleTree San Diego Del Mar was originally expected to also be Pete's engagement** (geographic proximity) — reassigned informally to John Grech (config Oct 5, training Oct 19, 2026) per the 9/2/26 prep call. No action needed from Pete on that property going forward.

---

## Training Week — Sep 7–11, 2026

**Format:** Standard HMAlpha admin + manager training structure, condensed to one day of admin content (curriculum historically ran 3 days in Dallas).

- **Mon 9/7 — travel day** (Pete flying out, arriving to start Tuesday).
- **✅ Tue 9/8 — System Admin Training, AM + PM sessions held.** Full detail: [AM session](2026-09-08_admin-training-am.md), [PM session](2026-09-08_admin-training-pm.md).
  - **AM (Sandra, Al, Mark, brief Stephanie cameo):** User Administration; full weekly timeline/labor-cycle walkthrough including go-live sequencing (practice on the week-ending-9/18 schedule this week, first real publish is the week of 9/19, one-time Saturday 9/19 publish instead of the normal Wednesday cadence, normal Wednesday cadence resumes 9/26); the arrivals/departures ProfitSword gap (property-side, see Property Notes above); banquet/CI forecast status; revenue center forecast mechanics (currently a 13-week trailing statistical average, not capture ratio — not enough history yet); a live `Generate Projected Hours`/`Generate Schedules` run showing the shifts-first-then-fills model. **1:30pm 9/9/26 follow-up session scheduled with Stephanie Simmons** specifically on CI/banquet guarantees.
  - **PM (Al primary, Sandra, brief Stephanie cameo):** Labor Structure ("Christmas tree" — jobs, Do Not Use division, TK codes vs. Work Records codes vs. Reconcile codes); Employee User Maps completed live for Al; full Employee Maintenance walkthrough (availability, Sub Only, Variable/Regular/Permanent scheduling methods, schedule groups); Labor Standards mechanics (shift-related tab, "no matter what" shifts vs. the departures/stayovers "pitcher and cups" model); the full reports/labor-meeting toolkit (Weekly Labor Summary, Weekly Projected Schedule, Labor Effectiveness Report — cost-visibility caution, Labor Productivity Report — the hours-per-occupied-room-vs-labor-standard budget conversation with Sandra); Labor Dashboard confirmed working. **Two secondary-job miscoding examples found live during the Employee Maintenance audit (a housekeeper coded only as public area attendant despite also working room attendant/laundry; a barista coded under a possibly-defunct job) — this is a Paychex-side data-coding issue, property/HMA-owned, not a Unifocus or Pete action item.**
- **✅ Wed 9/9 — Manager training held (AM, Carlos, Ramon, Edson, Juan Barrios, brief Mark/Val).** Full detail: [Manager Training, 9/9/26](2026-09-09_manager-training.md). Covered: weekly cycle from the manager's seat, Paychex cutover timeline (practice on the week-ending-9/18 schedule, first real Unifocus publish 9/19), scheduling-screen fundamentals, a full Employee Maintenance walkthrough (availability, Sub Only, Permanent/Regular/Variable), labor standards mechanics ("cups" vs. "pitcher and dropper" vs. banquet units-per-shift), the labor-meeting report pair (Weekly Labor Summary, Weekly Projected Schedule), and a live discussion of temp-vs-regular coverage on heavy checkout days. **Carlos's login stayed broken (ticket opened, unresolved as of session end).** **Secondary job-coding gaps found again (Chelsea and others) — same Paychex-side data issue as the 9/8 admin session, property/HMA-owned, not a Pete/PWS action item.**
- **Thu 9/10 — Manager training (AM).** Jesse and JD (John Davis) slotted. Afternoons thin/repurposed as office hours. **This is where Employee Maintenance (availability, scheduling method, sub-only flags) actually gets built out — manager responsibility, not admin/Pete's to complete beforehand.** Blank Employee Maintenance data seen during the 9/8 admin sessions was the expected starting state, not a gap.
- **Fri 9/11 — office hours (AM), Pete departs.**

---

## Open Items

- [ ] Confirm final spelling/name of the third-party contract-labor company ("Quick...") — needed for correct property reference
- [ ] Confirm which placeholder-employee naming convention (Taylor's `C01/C02` vs. John Grech's alternate) will be used going forward
- [x] CI/banquet mapping accuracy — 1:30pm 9/9/26 Stephanie Simmons session held. Confirmed Unifocus likely reads the wrong CI field for booking type (coarse "Business Type" vs. granular "Group Type," which is where AA and other mystery codes actually live) — needs correction before full mapping is possible. Also surfaced: no bartender job/standard exists at all, and Actual KBI entry ownership is undecided. Separately, a same-day Teams thread with Taylor Walton made progress on the interface/booking-type side — Group, Local, and Rooms Only mapped, Rooms Only confirmed → Group. Full detail: [Stephanie Simmons CI Integration Meeting, 9/9/26](2026-09-09_stephanie-simmons-ci-integration-meeting.md), [Banquet/CI Mapping Teams Thread, 9/9/26](2026-09-09_taylor-walton-banquet-mapping-teams.md)
- [ ] Confirm which CI field Unifocus reads for booking type (Business Type vs. Group Type) — likely wrong field, needs interface-team correction
- [ ] Build a bartender job code and labor standard — doesn't exist at all currently; no event type reliably triggers bartender labor
- [ ] Decide Actual KBI entry ownership (Stephanie/sales vs. finance vs. Sandra/Mark) — segregation-of-duties question raised 9/9/26, unresolved
- [ ] "AA" booking type — appears in History/Real BEOs but not in CI's current dropdown options; source unclear, Pete researching (9/9/26)
- [ ] Menu Tasting mapping decision (In-House booking type's only sub-option here) — same open question as the Baha Mar Tastings KBI decision; recurring cross-property pattern, unresolved at either property
- [ ] Master booking-type/event-type reference file — doesn't appear to exist per Taylor Walton; check with Steve Carrell directly
- [ ] Confirm scope of Nicole Mendez's daily CI/Delphi/Envision combined feed — portfolio-wide or property-specific, and which system(s) actually carry Marriott Del Mar banquet data
- [ ] Confirm who owns day-to-day F&B revenue-center forecast editing (candidates named informally 9/8/26 were unclear in the raw transcript — cross-check against contacts.md)
- [ ] Cashier vs. host job code — confirm whether the "cashier" code is still real or should move to "Do Not Use" (flagged 9/8/26, property to check)
- [ ] Confirm whether Taylor built any Job Assignments (sub-skill tagging) during original config
- [ ] Confirm config consultant of record for this property (portfolio tracker shows TBD as of 9/2/26 prep call)
- [ ] Arrivals/departures ProfitSword gap — property/HMA-owned; not tracked here as a Pete action item, but worth checking status at future touchpoints since it directly affects housekeeping forecast accuracy
- [ ] Secondary-job Paychex miscoding (public area attendant, barista) — property/HMA-owned Paychex cleanup, not a Pete action item
- [ ] Carlos Dela Cruz's login — invalid as of 9/9/26 manager training, ticket opened, unresolved
- [ ] Temp vs. regular scheduling on heavy checkout days — deferred until more contract-labor placeholders and full Employee Maintenance availability exist; possible future "balanced schedules" trial
- [ ] Decide seasonal room-attendant shift-time approach (manual toggle each season vs. seasonal Assignments with date ranges)
- [ ] Val/HM Alpha to consider a written Unifocus onboarding packet for future new managers

---

## Related Files

- [Marriott Del Mar — Contacts](contacts.md)
- [Taylor Walton Prep Call, 9/2/26](2026-09-02_taylor-walton-prep-call.md)
- [Training Outline Email, 9/2/26](2026-09-02_training-outline-email.md)
- [Logistics Arrangements Email, 9/2/26](2026-09-02_logistics-arrangements-email.md)
- [System Admin Training — AM, 9/8/26](2026-09-08_admin-training-am.md)
- [System Admin Training — PM, 9/8/26](2026-09-08_admin-training-pm.md)
- [Manager Training, 9/9/26](2026-09-09_manager-training.md)
- [Banquet/CI Mapping Teams Thread, 9/9/26](2026-09-09_taylor-walton-banquet-mapping-teams.md)
- [Stephanie Simmons CI Integration Meeting, 9/9/26](2026-09-09_stephanie-simmons-ci-integration-meeting.md)
- [HM Alpha Client KB](../kb.md)

---

*© Peter A. Castellano. All rights reserved.*
