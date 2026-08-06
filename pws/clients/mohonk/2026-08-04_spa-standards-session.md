<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Spa Standards, Scheduling Strategy, and KPI Alignment

**Date:** August 4, 2026, ~10:39 AM (1hr24min recording)
**Location:** Mohonk Mountain House
**Context:** This is the full recording of the Spa segment referenced but not fully captured in the [8/4 F&B session file](2026-08-04_fnb-labor-standards-transcript.md#11-spa--see-full-session-file) — that file guessed attendees as "Joanna Taylor and Jen" based only on calendar invite emails; **this transcript corrects that.** Confirmed attendees per the actual recording: **Barbara Stirewalt** and **Lou Petruzzelli**, not Olivia Andrews — she was out sick that day (see Participants below). "Jen," "Joanna Taylor," and "Nelson" are referenced repeatedly in the dialogue as real Spa staff whose work is being reviewed, but none of them were confirmed present in the room.

**Pete's own summary (post-session):** "Coming around to recognizing Spa can work. Fixed Spa KBI import today. We didn't have Spa Treatment KBIs until now." — **this directly updates the existing [🔴 Spa Interface Not Processing](kb.md#-spa-interface-not-processing) ticket.** The live meeting still treated all three volume KPIs (day/transient, overnight, employee treatments) as broken/not pulling — see item 2 below — so this fix likely happened during or shortly after the session itself, not before it. Reconcile directly in Unifocus before assuming full resolution; unclear whether the fix covers all three sub-metrics or just gets Total Treatments (the one metric the group actually agreed to use) flowing.

## Participants
- **Pete Castellano** (PWS)
- **Lou Petruzzelli** (budget authority)
- **Bron Walis** (IT Director)
- **Barbara Stirewalt** — deeply familiar with Spa Reception numbers and the (separate, Unifocus-external) staffing guide; likely the Spa operations/reception lead. Role title not confirmed.
- **Olivia Andrews** — Spa Director. **Listed on the calendar invite but confirmed absent** ("Olivia is ill today, so she is not here today"). She is expecting a baby and the team is already planning around her upcoming leave (see item 12).
- **Referenced but not present:** **Jen**, **Joanna Taylor**, and **Nelson** (attendance supervisor, owns Spa Attendant scheduling) — all real Spa staff whose standards/schedules were discussed in absentia.

---

## 1. Book4Time / Scheduling Philosophy — Confirmed, Not Changing
- **Provider (treatment professional) schedules stay in Book4Time, not Unifocus.** Book4Time runs a **year-out open book** — providers' availability slots must be actively opened for guests to book against, the opposite model from a typical banquet request (you're not requesting "10 servers," you're putting specific professionals on the calendar to catch whatever comes in).
- Unifocus will **not replace or disrupt** this — when Unifocus generates projected hours/schedules, it's built not to interfere with what's already been entered in Book4Time. Same logic already applies to banquets booked far in advance (e.g., a wedding 3 months out) — Unifocus can schedule around known advance demand without duplicating the source system.

## 2. Spa Performance & the Total-Treatments KPI Decision
- **Spa generates ~$6M/year, vs. the resort-spa industry average of ~$2.2M** (per a recent spa industry report Pete referenced) — explicitly called out as a top-performing revenue center worth eventually getting more granular data on.
- **Three planned volume KPIs — day/transient guest treatments, overnight guest treatments, employee treatments — were not functioning in Unifocus as of this meeting.** (See the header note above re: Pete's post-session fix.)
- **Decision: use Total Treatments (the sum of all three) as the interim/primary labor driver.** Rationale: unlike meal periods (breakfast/lunch/dinner), which genuinely take different labor, a treatment's labor doesn't meaningfully differ by *who* is receiving it (day guest vs. overnight guest vs. employee) — only by treatment type/duration, which is a separate, deferred refinement (see below).
- **Deliberately not chasing more granularity right now:** treatment-type/duration-level detail would require deeper DataVision integration; the group's stated limitation is "what's available to pull from DataVision," not appetite for building dozens of new KPIs. Revisit once DataVision availability is clarified.

## 3. Capacity & Services
- Services: massage, facials, body treatments, nail services; **hair is being phased out.**
- **16 treatment rooms** (1 couples room, 1 seasonal outdoor-only room) — up to 16 simultaneous treatments, ~20 including the salon.
- **Up to 90 appointments/day.**

## 4. Scheduling Strategy vs. Labor Standard — Core Principle
- **Spa intentionally overschedules providers ~100% to catch whatever bookings materialize** — this is not something the labor standard should try to control or "fix." The standard exists purely for **after-the-fact actual-vs-standard comparison and budgeting**, not for driving or limiting the schedule itself.
- **Explicitly mirrors the fix already made with James (Dining Room):** his standard used to have overscheduling baked directly into it, which meant he was always running "below standard" even though that was by design. The fix there — and now here — is to **separate scheduling strategy from after-the-fact labor comparison** as two different questions.
- **Provider hours are tracked in ADP/time & attendance** even though Book4Time drives their actual bookings — worth building even a rough, generic labor standard for providers purely so there's a number to compare actual against for budgeting, not to control labor. **Not built in this session.**

## 5. Provider Pay Structure
- Providers earn **minimum wage when not productive**; when productive, they earn **commission + a lower base wage**, reconciled weekly in payroll to guarantee at least minimum wage overall.

## 6. Job Code / ADP Structure Issues
- **Fitness Reception and Spa Reception are the same rotating team but carry separate ADP job codes** (a historical, budget-driven split) — each needs its **own labor standard**, even though staffed by the same people.
- **Structural problem, same class already fixed elsewhere at Mohonk** (e.g., the beverage/bartender job-code cleanup): Fitness Reception's job code is **buried underneath Spa Reception** in Labor Structure, which breaks reporting — you can't run a report on Fitness alone. Recommendation given: pull it out as its own top-level job. **Not executed live** ("I'm not going to do that in front of you today," but flagged as clearly the right fix).
- **Spa Attendant is currently structured backwards:** it shows up as a Department in the system, when it should be a **Job** nested under a proper Department (matching how it's actually organized in the P&L). Not fixed live, flagged as a recommended cleanup.
- **Housekeeping cross-training exists** — Spa Attendants carry secondary job codes to pick up Housekeeping shifts as a working "bench." Confirmed functional but imperfect ("beautiful, but not so beautiful when you're counting on them").

## 7. Overnight Spa Cleaner
- One person, a 40-hour/week job — but the entered standard only totaled **36.5–37 hours**. **Corrected live to 37.5 hours** by extending a shift (classic "cup"-filling mechanic, same pattern as the Mohonk room-attendant productivity model — see the [Rooms Division session](2026-08-05_rooms-division-standards-review.md#4-housekeeping--room-attendant-productivity-model-the-cups)).
- **Shift timing in the system is wrong:** the standard shows the shift starting around 11:00 AM, but the real start time is **~7:30–8:00 PM** (after the spa closes). **Not corrected live** — flagged to come back and fix the actual times while preserving the 37.5-hour weekly total.
- **Reiterated principle:** exact time-of-day placement in the standard doesn't matter for budgeting purposes — what matters is the total weekly hours; Unifocus generates shifts and tries to fill them, but Nelson (attendance supervisor, not present) retains full control over actual scheduled timing as long as employee availability allows.

## 8. Spa Attendant Scheduling Structure
- **Opener at 7:00–7:30 AM, one no matter what, every day** — treated as a true fixed position since the spa effectively never fully closes (closes only ~1 week/year around New Year's, and even then phones stay open and part-time staff come in to hit their hours) — same "no matter what" logic already used elsewhere in the Mohonk KB (e.g., Front Desk's overnight coverage, since hotel occupancy never hits zero).
- **Sunday gets extra coverage** (an additional opener + a noon shift) — **not because Sunday itself is busier**, but because there are no overnight cleaners on Sunday, so daytime attendants are effectively recovering/catching up from Saturday's volume. Post-volume, not pre-volume driven.
- **Laundry:** three dedicated overnight laundry shift patterns run across 3 days/week; every attendant does laundry as part of the role, plus one additional "augment/pickup" shift for high-volume weeks. **Confirmed everything here is fixed, not volume-based** — "wouldn't suggest changing it" as things stand.
- **Forward-looking idea, not implemented:** introduce volume-based variability specifically to the laundry-augment shifts (e.g., only trigger the extra shift when running busy multiple days in a row) — explicitly deferred, "keep that in the back of your thoughts."
- **J-1 international seasonal staff have guaranteed-hours requirements** — a real, acknowledged structural limiter on how much variability can practically be introduced into attendant scheduling.

## 9. Spa Reception (3rd Floor) — Core Standard
- **4 shifts confirmed genuinely mandatory every day, not to be touched:** opener (6:30), a 7:30 shift, an 11:30 shift, and a 2:30–7:30 closer. This is a hardening of the meeting's earlier looser "opener/closer plus flexible mid" framing — by the end of the discussion, Barbara was explicit that **all four** are mandatory, not just the opener/closer pair.
- **⚠️ Desk-hours figure needs verification:** Pete cited "185.5 hours" for weekly desk-open time off a report, which doesn't cleanly reconcile with the separately-quoted "7 AM–7 PM, 12 hours/day" operating window (~91 hrs/week of guest-facing time) or the "98 hours/week when busy" staffing-guide figure Barbara quoted from her own external staffing guide. These may refer to different scopes (total labor hours vs. desk-open hours vs. a busy-week target) — **verify all three numbers directly in Unifocus/the staffing guide rather than treating any one as authoritative.**
- **Extra Wednesday shift found in the existing standard — determined outdated.** Likely a leftover from 2+ years ago when the spa ran two separate reception desks (the second one on a "Rover" level covering pool access, since eliminated) — no longer real. **Fix applied live:** converted that stray Wednesday row into a **3-person day on Friday/Saturday/Sunday** instead — the actual busy days — using guest count/occupancy as a rough proxy for now, since Total Treatments doesn't cleanly map to what drives this particular role (closer to a hotel-foot-traffic function than a treatment-volume function).
- **Baseline confirmed:** ~2 people on regular weekdays, ~3 on weekends. Friday and Monday called out as naturally higher due to day-visitor retail traffic (spa/fitness doubles as a retail store), independent of overnight-guest volume.

## 10. Lead / Supervisor Coverage
- Four separate positions collectively need to cover **14 total weekly "lead" shifts**: Lead Spa Receptionist, Spa Reception Supervisor, Spa Recruiting & Training Supervisor, Spa Retail Supervisor.
- **Live tally came to 19 shifts, not 14** — reviewed and accepted as legitimate: the **Retail Supervisor doesn't always perform "lead" duties**, so the extra capacity beyond the strict 14-shift minimum was judged reasonable. **No change made** — "nineteen, and it's fine the way it is."

## 11. Second Floor vs. Fitness Reception — Duplicate Found and Partially Fixed
- **Confirmed duplicate:** Fitness Reception (nested under Spa Reception — see item 6) already runs an opener at 6:30/9:30, and a separate **"second floor"** job/assignment was independently also scheduling an opener at 6:30, five days a week.
- **Fix applied live: removed 5 duplicate second-floor opener shifts** (Sun/Mon/Tue/Thu/Sat, 6:30 AM each) — a **37.5-hour reduction** to the standard.
- **Wednesday and Friday second-floor coverage deliberately left in place** — best guess offered live was that these cover a specific person's day off and/or Wednesday inventory/shipment processing plus Friday's known walk-in retail traffic, but this was **not confirmed**, just judged reasonable enough not to block the fix.
- **The second floor's actual purpose was genuinely unresolved by the end of this section** — Pete, Lou, and Bron/Barbara could not fully explain it live; likely a holdover from a different staffing model 2+ years ago, possibly predating people currently in the room. Flagged explicitly as needing further study, not guessed at further.

## 12. Total-Treatments Variability Goal (Aspirational — Not Yet Built)
- **Goal for Spa Reception specifically:** flex from **1 up to 4 shifts** based on actual/forecasted Total Treatments — the main variability lever for the department, since almost everything else (attendants, overnight cleaner, most of reception) is fixed/no-matter-what.
- Running the 3rd floor with just **1 person on a genuinely dead-slow day** was discussed as plausible, but explicitly caveated: walk-in traffic and weather-driven spikes (a recent 3-day rain stretch was cited as sending spa demand way up) mean coverage can't be cut too aggressively even on a paper-slow forecast day.
- **Recommended methodology (not yet executed):** build a 7-day, all-positions matrix — list every spa-adjacent job/shift across a full week, identify what's truly fixed vs. flexible, total the fixed floor, then identify what sits on top and what Total-Treatments threshold should turn each additional shift on/off. Explicitly can't be done inside Unifocus's own UI (shows one job/standard at a time) — needs a separate spreadsheet/whiteboard exercise first. **This mirrors the same methodology already used for Security in the [Rooms Division session](2026-08-05_rooms-division-standards-review.md#9-security) and the Server/Support-role rebalancing in the [8/4 F&B session](2026-08-04_fnb-labor-standards-transcript.md#10-main-dining-serverrunner-standard-redesign-worked-live-in-the-session)** — a recurring cross-department pattern at Mohonk.

## 13. First Labor Meeting Exposure — Weekly Labor Summary Demo
- **Confirmed: neither Barbara nor Olivia had ever attended a labor meeting before this session.** Pete ran a live walkthrough of the Weekly Labor Summary report to show the actual-vs-standard framework already used elsewhere at Mohonk (referencing James/Dining Room as the established comparison point).
- **Spa cannot currently be viewed as one combined grouping** in the report — Unifocus only lets you pick one department at a time. **Recommendation: build a dedicated Spa op code** — same mechanism already used/recommended elsewhere in this KB (the "F&B Main Dining FOH" op code from the [8/4 F&B session](2026-08-04_fnb-labor-standards-transcript.md#3-live-review--fb-standards-vs-actuals-week-ending-726), and the requested combined Security+Gatehouse op code from the [8/4 Basic Training session](2026-08-04_basic-training-security-callcenter.md)).
- **Live numbers pulled for Spa Reception, most recent complete week (week ending ~8/2):** **standard = 503 hours** (fully fixed, zero variability baked in), **scheduled = 316 hours**, **actual = 280 hours**.
- **Reframe:** the large standard-vs-actual gap is **"a bad reflection on us for making a fixed standard," not a knock on how the department is being run** — Pete explicitly called this a sign of active, competent management (deliberately running lean via real-time judgment), the opposite conclusion from what the raw number gap might suggest cold.
- **Explainable-variance example surfaced live:** a week showing 371 actual hours was explained on the spot as weather-driven demand plus a "critical fixed" person on vacation — exactly the kind of story the labor-meeting format is meant to surface and document.
- **8-week trend pulled too:** confirms the same pattern holds over a longer window — flat standard, actual/scheduled flexing somewhat week to week, consistently well under standard.

## 14. Interim Standard Reduction — Agreed, Not Finalized
- Standard is clearly too high relative to reality; agreed it should come down now as a more honest baseline, even before the fuller variability rework happens.
- **Two concrete deductions identified:**
  - **Spa Recruiting & Training Supervisor — 40 hrs/week, currently in the standard but the position is intentionally held open/unfilled.** Context: **Olivia (Spa Director) is expecting a baby** and the team already knows she'll go on leave; this position is being deliberately kept in reserve specifically to cover that leave — not eliminated, just correctly excluded from the standard while genuinely unfilled. A broader org-chart restructuring conversation is also underway that may change how this role gets filled long-term.
  - **Second-floor duplicate removal (item 11) — 37.5 hrs/week.**
  - Combined, these would bring the 503-hour standard down toward **~463 hours** — **not locked in as a final number in this session.**
- **Lou independently floated a tentative summer target of ~380 hours**, with an acknowledgment that the standard will likely need to run **higher in cold-weather months** (spa gets busier when outdoor recreation isn't an option) — i.e., **true seasonality**, not just week-to-week volume swings, may eventually need to be layered on top of the Total-Treatments variability, not instead of it.
- **Explicit design principle, mirroring the dining-room precedent:** the target isn't "no variability, just a lower fixed number" — it's the same busy/slow variability model already proven with James's dining-room server standard (where higher volume triggered *proportionally less* labor per cover — efficiency gains at scale, not a straight multiplier). Cited directly as the template to reapply here once Spa's own numbers are worked out.
- **Sign-off needed:** explicitly framed as still requiring the Spa Director's (Olivia's) input before locking in a new baseline — she was out sick this session.

## 15. Follow-Up Plan
- **A dedicated work session with Olivia is needed** to build out the actual variability model — **not scheduled to a specific date**; Lou is out the rest of that week and will coordinate timing after returning.
- **Explicitly framed as a multi-session project, not a quick fix** — "structurally it's kind of out of whack already."
- **Already done:** Pete generated and saved a PDF snapshot of the current (unmodified) labor standard before making any changes — a reference/audit-trail artifact, "just in case we have a meeting with the board of directors or something."

---

## Decisions / Changes Made Live
- Overnight Spa Cleaner standard corrected to 37.5 hours/week (shift-timing fix still outstanding).
- Extra/outdated Wednesday reception shift converted to a 3-person Fri/Sat/Sun pattern.
- **Removed 5 duplicate second-floor opener shifts** (37.5 hrs/week) — confirmed redundant with Fitness Reception.
- Generated and saved a PDF snapshot of the pre-change labor standard for audit-trail purposes.

## Open / Unresolved
- **Reconcile Pete's post-session "fixed Spa KBI import" note against what was still broken live** (all three volume KPIs) — verify directly in Unifocus which metrics actually flow now.
- Fitness Reception job code still buried under Spa Reception in Labor Structure — recommended fix, not executed.
- Spa Attendant still structured as a Department instead of a Job — recommended fix, not executed.
- Overnight Spa Cleaner's shift *timing* still doesn't reflect the real ~7:30–8 PM start (total hours are correct, timing isn't).
- Second floor's actual purpose remains unresolved — Wed/Fri coverage kept on a guess, not confirmed.
- Total-Treatments thresholds for flexing Spa Reception 1→4 shifts — not defined, deferred to the Olivia work session.
- Spa Reception weekly desk-hours figures (185.5 / ~91 / 98) don't cleanly reconcile — verify in Unifocus.
- Interim standard reduction (~503 → ~463 hrs) — not finalized, needs Olivia's sign-off.
- Seasonality (cold-weather increase, e.g. ~500 hrs in October) — acknowledged as likely necessary, not designed.
- Provider (treatment professional) labor standard — recommended for budget-comparison purposes, not built.
- J-1 guaranteed-hours constraint on variability — acknowledged, no workaround designed yet.
- **Work session with Olivia** — needed, not scheduled to a date.

---

*© Peter A. Castellano. All rights reserved.*
