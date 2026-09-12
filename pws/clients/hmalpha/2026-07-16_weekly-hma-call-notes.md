<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Unifocus — HMAlpha Weekly Coordination Call
**Date:** July 16, 2026
**Context:** Regular recurring Unifocus/HMAlpha coordination call, held immediately following the conclusion of Pete's 3-day Nashville corporate admin training (Devon and Nicole came straight from that final training session). Recording stopped and restarted several times per the source note — some gaps in the transcript are marked below.
**Related:** `corporate-admin-training/agenda-notes.md` — several threads on this call are direct follow-ups to Day 3 training open items (standard rate methodology, CI/Delphi mapping, Union Station region bug); cross-referenced in that doc's "Decisions still needed" list.

---

## Participants
- Ralph Varble (Unifocus) — appears to be running/moderating the call alongside Devon
- Kevin — mentioned as running a few minutes late at the start; role/attribution unclear in transcript
- Devon Peters (HMAlpha)
- Nicole Mendez (HMAlpha)
- Taylor Walton (Unifocus — post-go-live support lead, joined partway through, left partway through for another call)
- Monali (Unifocus — data/interfaces team)
- Raman/Taman (Unifocus — dev team; name uncertain, phonetically closer to "Taman" in the transcript)
- Steve Carrell (Unifocus)
- John (Unifocus — role unclear, briefly acknowledged near the close)
- Pete Castellano (PWS) — on the call, thanked publicly near the close

---

## Summary
Devon and Nicole opened with a strongly positive debrief of the three-day training. The call then worked through several open items directly with Ralph and the broader Unifocus team: the still-unresolved standard-vs-actual cost/rate methodology question, Ralph's proposed approach to budgeting and a strategic timing question from Devon, a live confirmation of the banquet-budgeting "spiky zeros" problem, Wave 2 property setup status, Nicole's KBI-mapping continuation with Monali, and a scheduling/Paychecks sync bug that Taylor's update confirmed as the top pain point across all live properties.

---

## Training Debrief
- Devon and Nicole both gave the three days a strong review — deeper understanding of how the system is actually built (Labor Structure, Standards, reporting), more confidence explaining things to properties.
- **Open items carried over, not resolved on this call alone:** portfolio-level reporting best practices, and the standard-vs-actual rate question (see below).
- Devon specifically raised the **Property Ranking** dashboard as the report closest to what HMAlpha's executive team wants — a single view showing all hotels side by side rather than one property at a time. Same gap flagged in training (Day 3, Session 2): no true all-properties comparison chart exists yet.

---

## Standard vs. Actual Rate/Cost — Raised Directly with Ralph
Same open question from Day 3 training (Session 2), now put to Ralph directly:
- **Ralph's answer:** the actual rate comes from Paychex per employee. The "standard" rate shown on corporate dashboards is a **blended amalgam across every employee in that job** (housekeeper rate + steward rate + server rate, etc. all rolled together) — not a single true rate, and it's expected to differ from what Paychex itself would report, since Paychex factors in things Unifocus doesn't account for. Ralph: "it should be similar... but it may not be the exact same number."
- Devon specifically clarified she's not confused about the *actual* cost's origin — the open question is **where the standard/projected rate comes from and why it's different** (live example from training: union housekeeping actual $21.55/hr vs. standard $20.86/hr).
- **Ralph's change-management framing:** treat hours as "the top of the funnel — widest point" and get managers anchored there first. His caution: some managers will seize on any rate/wage discrepancy to dismiss the whole system as wrong, and that skepticism (roughly the "10% who'll never buy in" segment, per Ralph's rule of thumb: 10% all-in, 10% resistant, 80% wait-and-see) can spread to the wait-and-see majority if not managed. Devon accepted the change-management point but was clear she still needs the actual mechanism explained, not just deflected — she doesn't want to tell property managers "don't worry about it" without being able to back that up if pressed. **Not fully resolved on this call — flagged as needing a real answer, not just messaging guidance.**
- **Cost visibility can be restricted by security role** — Ralph confirmed you can flag costs (but not hours) as hidden from lower-level managers via security settings. This restriction is typically **not** applied at the corporate level.

---

## Budgeting — Ralph's Proposed Approach and Devon's Strategic Timing Question
- **Ralph's recommendation:** don't teach budgeting inside property-level training (it gets lost among reports/scheduling basics) — instead run a **dedicated session** for HMAlpha's finance/ops folks (Devon, Nicole) plus property DOFs, once more properties are live.
- **Standard Sets, explained (new concept, not covered in the Nashville training):** a Standard Set is a **cloned copy of your live labor standards** that can be edited freely (e.g., "Budget 27") without touching the live standards driving next week's actual schedules. Budgeting = running a chosen volume/data set against a chosen Standard Set (live or a hypothetical clone) and letting the system calculate resulting hours — completely independent of week-to-week live operations. This directly extends the budget-data-set structure covered in training (Day 3, Session 2): a budget data set is volumes + standard-generated hours; Standard Sets are the mechanism for testing *different* standards against that volume without disturbing production.
- Some KBIs can also run on a **budget-only formula** distinct from the live week-over-week formula — Ralph's example: arrivals are calculated live day-to-day, but for budget purposes a formula (occupied rooms ÷ average length of stay) can generate a reasonable daily arrivals estimate without requiring real granular input.
- **Devon's strategic question, explicitly flagged as needing a separate sidebar conversation, not resolved on this call:** how much to actually lean on Unifocus for *this* year's budget cycle, given the portfolio is mid-rollout (not every property live yet) — vs. waiting for a full year of data to maximize it next year. Ralph's partial answer: this year won't give full budget-season use, but **DOFs can use Budgeter anytime** since it's a separate sandbox from live scheduling — doesn't require waiting for "budget season." Getting volumes into the system this year, even without full budgeting maturity, means projected hours can at least correlate with whatever HMAlpha's other budgeting platform produces. Full budgeting capability is realistically a **next-year** capability once more properties have a full year of history.

---

## Banquet Budgeting — Ralph Independently Confirms the "Spiky Zeros" Problem
Ralph, unprompted, described the exact same mechanical issue Pete taught in Day 3 training:
- Importing one flat monthly total (e.g., 1,000 continental breakfast covers/month) gets evenly spread by the system (≈33/day), which **incorrectly triggers that standard's minimum requirement every single day** instead of reflecting the real event-day spikes (a handful of zero days, then a 200-cover day). Same principle applies to non-banquet F&B outlets, just less severe.
- **Partial system-side mitigation Ralph described, not previously covered in training:** if you know your rough event-type mix (e.g., "continental is typically 38% of banquet breakfast covers, plated 25%, buffet the rest"), those percentages can be entered so a single monthly total auto-splits across event types — but **the day-by-day "zero-heavy" pattern still has to be built manually**; the system has no automatic way to manufacture that shape. Ralph's framing: doing the percentage-split-only version is a perfectly fine starting point for year one; the manual zero-pattern refinement is the "advanced" version.
- **Devon's follow-up question, not resolved on this call:** what level of granularity does HMAlpha actually need to provide for F&B/banquet volumes — full event-type detail (current level) or can it be more aggregated? Left open.
- **Context for why this matters to Devon right now:** HMAlpha currently does **no day-by-day forecasting for F&B, banquets included** — something she's wanted to build for a while, independent of Unifocus. Her concern is making sure that when that forecasting process gets built, it's structured to actually feed Unifocus correctly rather than needing rework later.

---

## Wave 2 Property Setup Status
- **All 10 next-wave properties have been cloned**, except:
  - **Grand Hyatt** — deliberately left mostly blank; only the Hyatt-specific forecast structure and banquet KBIs are populated.
  - **Westin La Paloma** — also left closer to a blank slate due to added complexity versus the rest of the portfolio.
- Interfaces and employee-mapping work is already starting in the background for these properties, ahead of their kickoff calls, so that by the time each property needs to get involved, the outstanding question list is short.
- **Kickoff calls** planned for next week or the week after; format will mirror the prior kickoff calls, though Ralph suggested trimming the number slightly since a few of the prior round were sparsely attended. Devon had already sent Nicole a note earlier that day about confirming the right contacts for 3 of the properties.
- **Data-quality bug reconfirmed directly with Ralph:** Union Station is grouped under region "NA" instead of region one like the rest of the portfolio — same bug independently found during Day 3 training.

---

## KBI Mapping Continuation — Nicole & Monali
Nicole is extending the InterContinental New Orleans Delphi/CI dummy-file mapping exercise (built during Day 1 of training) to the rest of the portfolio, to make sure every property's full set of possible event types is captured up front.

- Confirmed Monali received and approved the CI mapping file Nicole sent for InterContinental; Nicole finishing the remaining event-type mapping the same day.
- **Field-mapping questions resolved live, directly relevant to the open item from Day 3 training** (whether CI has an equivalent to Delphi's Group/Local/In-House rollup field):
  - CI's **"Function Type"** field ≈ Delphi's event/booking type field — confirmed equivalent by Monali.
  - CI's **"Group Type"** field (values include Group, In House, Local Rooms Only, Tour Series Group, and others) is the field that maps down to Delphi's three-way **Booking Revenue Type (Banquet/Catering/In-House)** distinction — **this resolves the open Day 3 question**: CI does have an equivalent rollup field, it's just named differently and has more granular values than Delphi's three. Monali confirmed: map whichever Group Type values apply to the corresponding function type/category.
- Nicole is only currently working from two source files (a source system referred to in the transcript as something like "Shell 5" — name unclear/likely mistranscribed — and CI); broader access is still pending:
  - **Hilton Delphi access** — license signed, access itself still pending; hoped for by the next day or early the following week.
  - **Envision access** — also actively being worked on Unifocus's side; hoped for by the next day.
- **Process decision:** Nicole will **centralize sending these mapping files daily** herself rather than asking each property to do it individually — reasoning: properties already have a lot on their plate day to day, and a decentralized ask risked getting missed.
- **Timing question, resolved:** since the data covers a rolling 21-day lookback, send whenever the latest complete data is available from the source system — could be as early as ~6 AM CT or as late as early afternoon CT, depending on when the source system's own report refreshes. Nicole to determine the right time empirically once she's sending these regularly.

---

## Scheduling / Paychecks Sync Bug — Confirmed Top Pain Point

### Taylor's Go-Live Status Update (First-Wave Properties)
- **Union Station, Westlake, Raleigh** — now in their second week; good progress, timeline being followed more closely than week one, manager questions getting more detailed as familiarity grows. No major blockers.
- **Houston (InterContinental)** — first go-live call happened the same day (Taylor joined late because of it). Some hours aren't interfacing correctly, possibly tied to secondary job codes not coming through for some employees — Taylor investigating, consistent with a pattern seen at other properties.
- **Houston — decision not to publish this week's schedule:** the property is slightly behind on manager edits and has been running Paychex-native and Unifocus-edited schedules in parallel; publishing now risked overwriting correct Paychex data before edits are complete. Decision: hold publish until next Wednesday's cycle, giving managers Monday–Wednesday morning to finish edits. Devon confirmed directly with Taylor that Houston had indeed been double-running both systems — validating the call to hold.
- **The universal pain point, called out explicitly by Taylor:** when a shift or an entire day is deleted in Unifocus **after** it was already exported to Paychex, the deletion doesn't propagate — Paychex keeps showing the stale data, producing duplicate schedules. Root cause: the interface was originally built assuming Paychex would cleanly "delete and replace," but Paychex isn't actually behaving that way. A support ticket is open with Paychex, who has provided guidance on next steps; Unifocus's dev team has started the fix.

### Fix in Progress
- **Monali** is separately investigating whether a **third daily schedule-send run** (in addition to the current AM/PM sends) is feasible — contingent on a concurrent dedup fix (avoiding duplicate schedule sends to Paychex) that's expected to land **early next week**; that work will determine whether Paychex's task volume can support a third sync.
- **Dev team (Raman/Taman) needs a live test environment** to validate a bulk multi-shift-deletion fix safely, without touching real production payroll data — requested a "dummy" schedule scenario on a property already using the live scheduling interface.
  - **Suggested to scope the test at the manager (salaried) level** specifically, so a mistake wouldn't affect hourly employee pay data.
  - **Considered and rejected:** faking a schedule on a not-yet-live Wave 2 property — even moving dates into the future would eventually collide with that property's real Paychex schedule and require manual cleanup once they go live for real.
  - **Decision: use an already-live Wave 1 property with an existing working relationship — JW Marriott suggested as the friendliest/simplest candidate.** Devon/Nicole to coordinate directly with the dev team on test scope and property communication; Taylor will build the front-end schedule scenario so the team can inspect the resulting export file together with the dev team.
  - **Timeline:** dev team indicated they could be ready as soon as the next day, contingent on getting client coordination started immediately.

---

## Closing
Devon publicly thanked **Taylor** (for patience through the post-go-live Q&A, especially with managers less enthusiastic about change) and **Pete** (for the three days of Nashville training — specifically noting there were things she didn't know she didn't know before). Steve was also thanked by Nicole/Devon. Call closed with brief, lighthearted banter (no further substantive items).

---

## Open Items
- [ ] **Get a real, confirmed answer on standard/projected rate methodology** (blended-rate calculation) so Devon can explain rate discrepancies credibly to skeptical property managers — Ralph's change-management framing didn't fully satisfy this; still needs a technical answer.
- [ ] **Devon/Ralph sidebar conversation:** strategic decision on how much to lean on Unifocus for this year's budget cycle vs. waiting for a full year of portfolio data next year.
- [ ] **Resolve F&B/banquet volume granularity question:** does Unifocus need full event-type detail from HMAlpha, or can budget-side volume input be more aggregated?
- [ ] **Union Station region-grouping bug** — now reported directly to Ralph (in addition to being flagged during Day 3 training) — needs an actual fix, not just documentation.
- [ ] **Nicole to build and send a KBI-mapping dummy file to Monali** for the next property (using the CI Function Type / Group Type mapping confirmed on this call), continuing the property-by-property completeness exercise.
- [ ] **Nicole to determine the right daily send time** for centralized Delphi/CI mapping files, once sending becomes routine — depends on when each source system's report refreshes.
- [ ] **Devon/Nicole to confirm the right property contacts** for the 3 Wave 2 properties flagged earlier the same day, ahead of kickoff call scheduling.
- [ ] **Wave 2 kickoff calls** — schedule for next week or the week after; trim the call count slightly versus the prior kickoff round.
- [ ] **Scheduling/Paychecks sync bug fix:** Unifocus dev team to coordinate with Devon/Nicole and JW Marriott to run a live test of bulk schedule deletion; targeting as early as the next day for test kickoff.
- [ ] **Monali's dedup fix** (early next week) will determine whether a third daily schedule-send run to Paychecks becomes feasible.
