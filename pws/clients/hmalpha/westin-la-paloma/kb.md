<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Property KB

**Property:** Westin La Paloma Resort & Spa
**Address:** 3800 E Sunrise Dr, Tucson, AZ 85718
**Brand:** Westin (Marriott family)
**EMS:** CI/TY
**Email domain:** @westinlapaloma.com
**HMAlpha wave:** W14 — training week of Aug 17–21, 2026
**Pete's role:** Trainer
**Config:** Steve Carrell (Unifocus)
**Post-config:** John Grech (Unifocus)

---

## Contacts

| Name | Role | Email |
|---|---|---|
| Fabrizio Poli | General Manager | fabrizio.poli@westinlapaloma.com |
| ~~Mark McSteen~~ | ~~Director of Finance (DOF)~~ — **retired 7/31/26** | mark.mcsteen@westinlapaloma.com (inactive) |
| **Peggy Taylor** | **Associate/Assistant Director of Finance — new finance contact** | Peggy.Taylor@westinlapaloma.com \| (D) 520.618.4006 |
| Jannett Sanora | Human Resources | jannett.sanora@westinlapaloma.com |
| Charles James | Property contact — coordinating manager laptops, admin session attendee | charles.james@westinlapaloma.com |

*Source: Nicole Mendez email 6/30/26 ("WLP & GHY Contact Information"); DOF change discovered 8/7/26 via Mark's retirement auto-reply — see [contacts.md](contacts.md) for detail. Charles James added 8/12/26 from impromptu planning call — see [2026-08-12_impromptu-planning-call.md](2026-08-12_impromptu-planning-call.md).*

---

## Property Notes

- **Added complexity** vs. rest of the HMAlpha portfolio — flagged during Wave 2 planning; left closer to a blank slate during the Wave 2 cloning pass (unlike the 8 standard clones). Config work by Steve Carrell should confirm readiness before training week.
- **EMS is CI/TY** — same as other Marriott properties in the portfolio; interface mapping approach consistent with Union Station Nashville and Marriott Del Mar.
- Indianapolis was originally slotted for this training week and was swapped for La Paloma.

---

## Training Week — Aug 17–21, 2026

**Format:** Standard HMAlpha admin + manager training structure
- Day 1: Admin session (GM, DOF, HR + corporate)
- Days 2–3: Manager training sessions
- Days 4–5: TBD based on property needs

**Kickoff invite:** Sent 8/9/26 — see [`2026-08-09_training-kickoff-invite.md`](2026-08-09_training-kickoff-invite.md). **Still not actually sent to the property as of 8/12/26** — waiting on Peggy to finalize session times (see 8/12 call below).

**Schedule:**
- Mon 8/17: Admin Training (9am–12pm + 2pm–5pm CT) — GM, DOF, HR; admins also attend one manager session
- Tue 8/18: Manager Training options A (9am) + B (2pm) MST
- Wed 8/19: Manager Training options C (9am) + D (2pm) MST
- Thu 8/20: Office Hours options E (9am) + F (2pm) MST
- Sessions delivered live over Microsoft Teams; managers bring own laptops
- **4-day, admin-first format confirmed live on the 8/12/26 planning call** — see below

**Hotel dates corrected 8/12/26:** Pete needs **Sunday 8/16 arrival through Friday 8/21 departure** (5 nights), not Mon–Fri — driven by flight timing constraints flying east. Comp room requested; Peggy to send confirmation, which blocks Pete's own flight booking.

**✅ Day 1 Admin Training held 8/17/26 (full day)** — full detail in [2026-08-17_admin-training-day1-monday.md](2026-08-17_admin-training-day1-monday.md). Attended: Charles James, Fabrizio Poli (GM), Elizabeth, Jannett Sanora (HR), Peggy Taylor (left mid-afternoon for a family commitment). Confirmed the 8/12 User Administration gap is resolved. **⚠️ Two urgent findings, both unresolved as of session end, both need answers before Tuesday manager training:** (1) Unifocus is already auto-exporting schedules to Paychex, but managers still edit schedules directly in Paychex and WLP hard-blocks clock-ins without a matching Paychex schedule row — Jannett may be able to disable that Paychex lockout herself. (2) Hourly supervisors can see each other's pay rates in Employee Maintenance — Steve had told the property only admins could see wages, which Pete demonstrated live is incorrect; fix requires either per-user permission denials (no bulk option) or reconsidering whether supervisors need Unifocus logins at all, since their main reason for access (entering schedules into Paychex) goes away once Unifocus auto-exports. HR (Jannett) needs to be involved in both. Also completed live: Employee User Maps for WLP's ~25–30 users (needed for Schedule Editor + mobile to work). WLP's room attendant standard was found to have been entered as a flat productivity number rather than a real labor standard — Steve corrected it over the weekend into a proper departures/stayovers(20min×85%)/fixed-time formula (departures figure disputed between sessions, 38min vs 30min — see Day 2 for the reconciliation flag), and the initial actual-vs-goal read tentatively suggested the standard ran too high — **corrected the next day, see below.** First live Unifocus labor meeting targeted ~Wed 8/26; system goes fully live Fri 8/21 3:30pm. New DOF start date confirmed as **Sept 3, 2026** (name still unconfirmed, "Nelly"). Other open items: CI banquet import missing service-style detail; arrivals/departures ProfitSword import still not populating reliably; contract-labor scheduling approach unresolved (WLP housekeeping ~60% contract labor); pending new "houseman" job code from HM Alpha corporate (Belle); missing PM phone/PBX shift on the Front Desk standard to be added Tuesday.

**✅ Day 2 Admin Training AM session held 8/18/26 (replaced a Tuesday manager slot)** — full detail in [2026-08-18_admin-training-day2-tuesday.md](2026-08-18_admin-training-day2-tuesday.md). Attended: Charles James, Jannett Sanora (her last session this week), Peggy Taylor, Pete. Deep KBI/forecast-structure and labor-standards session, and it surfaced real, unresolved data problems: **Work Records contract-labor hours are not flowing into House Attendant, Public Area, or Banquet Server jobs at all** (Charles's own hand-kept tracker showed ~350 actual House Attendant hours vs. ~200 in Unifocus) — given WLP housekeeping is ~60% contract labor, current "over/under standard" readings are likely distorted until this is fixed. **Public Area's standard is missing 4 full-time contract staff who actually cover the neighboring country club** — never part of the original standard-building conversation. **Security is essentially untracked in Unifocus** — all contract labor, left out of the original implementation entirely, no Work Records feed or manual-hours process in place. **⚠️ Important correction to Day 1:** a more careful productivity read found WLP's real Room Attendant productivity (0.584) sits close to its own budget goal — meaning the standard (0.44) is actually too *low* relative to budget, the opposite of Day 1's tentative "too high" read. Also found: WLP runs 4–6 Runners/day against a flat 1/day standard (real gap); a stale "Supervisor" job code that Steve reported removed is still appearing in the daily Employee Reconcile feed; WLP's property-wide unpaid-lunch rule triggers after only 4 hours (unusually low); no Hours Distribution overtime rule exists at all. Pete gave an explicit multi-year roadmap for aligning standards to budget (meaningful work starting ~2027 budget cycle). Jannett will not attend the rest of this week's sessions — her pending Monday action items (Paychex clock-in lockout, supervisor pay-visibility fix) need a new owner or a check-in before she's unavailable.

**✅ Tuesday PM Manager Training held 8/18/26, 2–5pm** — full detail in [2026-08-18_manager-training-tuesday-pm.md](2026-08-18_manager-training-tuesday-pm.md). Attended: Housekeeping, Front Desk (Abigail Edward(s), Ariel Gonzalez), and Stewarding leads. Confirmed labor meeting times: **Rooms 2pm / F&B 3pm Wednesdays.** Real findings: managers currently can't edit the one field they're meant to control (Sub Only) — acknowledged as needing admin follow-up; Ariel had zero KBI access, partially fixed live; the House Attendant Work Records gap was reconfirmed a third time (some hours may also be cross-contaminating with Stewarding, unresolved); **Housekeeping specifically will NOT go live for real scheduling this week — their first real live week is Aug 29–Sept 4**, not the Friday 8/21 cutover used elsewhere, since only half the team is trained; a live Unifocus-vs-Rick's-Friday-forecast discrepancy surfaced (Unifocus's continuously-refreshed numbers likely more current than Rick's static Friday distribution). Confirmed contract labor will use the placeholder-employee pattern for all departments. Also: WLP's Hotel Manager was just announced as promoted to GM at the Hilton Scottsdale (another HMAlpha property).

**✅ Wednesday Manager Training AM + PM held 8/19/26** — full detail in [2026-08-19_manager-training-wednesday-am.md](2026-08-19_manager-training-wednesday-am.md) ("Manager 2") and [2026-08-19_manager-training-wednesday-pm.md](2026-08-19_manager-training-wednesday-pm.md) ("Manager 3"). Headline finding (PM session): a live CI/BEO mapping discussion with Joey Bradfield (Director of Events) uncovered **unmapped CI booking-type values ("Multi Year," "Rooms Only," etc.) beyond Group/Local/In-House — any BEO written with one of these silently drops its covers from Unifocus with no warning.** Real, unresolved banquet-labor risk; needs a CI history pull to determine actual exposure. Also: front desk and security standards walked through in full live detail; Coffee Break + Continuous Beverage both mapped to a single Break KBI; second-source confirmation (from Events, not just Culinary) that DMP/wedding packages are correctly excluded as CI event types by design.

**Scheduled sessions complete as of 8/19/26 evening.** Thursday 8/20: Pete has an 8am update coffee meeting with GM Fabrizio Poli, then has kept the full day open for Peggy/Charles to book time with any department that has questions or a legitimate challenge to their standard (no fixed office-hours session times booked as of this entry — see Open Items). Pete also expects to work with Peggy and/or Jannett on the small number of open Employee Reconcile errors and recently-discovered Hours import errors — probably mapping issues, not yet diagnosed.

**⚠️ 8/12/26 planning call — key findings, full detail in [2026-08-12_impromptu-planning-call.md](2026-08-12_impromptu-planning-call.md):**
- **User Administration gap found live on the call — ✅ Resolved 8/13/26.** WLP employees existed under Employee Maintenance but were NOT set up under User Administration — only admins (Peggy) had real login access. **Adding users is the consultant's job, not Pete's** — Steve Carrell (config consultant) is handling it; confirmed on a call with Steve 8/13/26. Pete's role was surfacing the gap, not fixing it.
- Jannett Sanora's Admin Training attendance is at risk — HR is short-staffed (newest hire ~1 week in).
- Some scheduling managers lack laptops for hands-on training — Charles James coordinating loaners.
- Sign-up/attendance spreadsheet Peggy has is still filtered for Union Station, not WLP — Pete owes her a corrected copy.
- Devon and Nicole will NOT be onsite for WLP training (unlike prior properties) — Pete asked that at least one property admin sit in on each manager session to help cover that gap.
- Property occupancy favorable for training week: ~50%, no major groups.

**Pre-training checklist:**
- [ ] Confirm attendee sign-ups received — blocked on Peggy finalizing times (target 8/13)
- [ ] Confirm config complete with Steve Carrell before 8/17
- [x] Hotel confirmed — Westin La Paloma, confirmation #1488816, COMP (room, tax, resort charge, parking, F&B no alcohol), Sun 8/16–Fri 8/21. Dawn Glass made the reservation; Rick Newman cc'd.
- [ ] Book Pete's flight OMA → TUS — waiting on hotel confirmation first
- [ ] Review CI/TY interface mapping (Nicole Mendez tracker)
- [ ] Review any open BLSBD or labor-standards flags specific to La Paloma
- [ ] Get property profile / org chart from Fabrizio/Jannett
- [x] Confirm Steve Carrell has completed User Administration setup for all attendees before 8/17 — confirmed complete 8/17/26 (Pete en route to TUS)
- [ ] Send Peggy the corrected sign-up/attendance spreadsheet (WLP unhidden, Union Station hidden)

---

## Open Items

- [ ] Confirm config status with Steve Carrell before Aug 17
- [x] Flight and hotel booked — SW BQR3JN outbound 8/16, SW A9QZXC return 8/21; hotel confirmed #1488816 COMP
- [ ] Obtain property profile
- [ ] Review interface mapping tracker for WLP-specific issues
- [x] **Loop in Peggy Taylor directly** — done; Peggy fully looped in as of the 8/12/26 planning call, actively driving logistics.
- [x] User Administration gap (see 8/12/26 call) — resolved 8/13/26; Steve Carrell (consultant) owns adding users, confirmed on call with Pete
- [ ] Follow up on manager laptop procurement (Charles James)
- [ ] Send Peggy the corrected sign-up/attendance spreadsheet
- [ ] Confirm training room booked (classroom style, folding tables, HDMI, same room all 4 days)
- [ ] Check back on Jannett Sanora's Admin Training attendance given HR staffing gap
- [ ] Confirm new DOF's actual name (start date now confirmed: Sept 3, 2026) — update contacts.md
- [ ] Revisit CI banquet import granularity (plated/buffet/continental/boxed) — no owner assigned yet
- [ ] Arrivals/departures ProfitSword import still not populating reliably as of 8/17/26
- [ ] **🔴 CI unmapped booking-type gap (found 8/19/26)** — determine real exposure by pulling a full year of CI BEO history and checking for "Multi Year," "Rooms Only," or other unrecognized booking-type values; map any genuinely-used ones. See Wed PM session file §1.
- [ ] Thursday 8/20 office hours — Peggy/Charles to book Pete's open day with departments needing standards follow-up; no fixed session times set as of 8/19/26 evening
- [ ] Employee Reconcile errors + recently-discovered Hours import errors — likely mapping issues; work with Peggy and/or Jannett, not yet diagnosed
