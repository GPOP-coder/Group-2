<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# HM Alpha — Weekly Project Call, September 17, 2026

**Date:** September 17, 2026
**Attendees:** Alain Derderian, Taylor Walton, John Grech, Monali Desai, Devon Peters (joined ~12 min late), Matthew Schupbach. Nicole Mendez on PTO. Pete Castellano present, largely listening (joined muted, unmuted once for the standards-philosophy discussion below).

**Sources (two, merged):** the AI-generated meeting summary/action-item list, and Pete's own full call transcript (used to correct sequencing and attribution where the AI summary was ambiguous — noted below where relevant).

---

## Interfaces

- **La Paloma laundry hours gap (John Grech):** Work Records is showing only ~8 hrs/day of laundry-attendant hours for the hotel's own (non-contract) employees, against an expected ~80 hrs/day for their ~10 employees — no Reconcile error on the job code, so the hours simply aren't arriving. **Monali asked for screenshots** to check whether the file is even receiving the data; John to send. **This is the same finding already logged in WLP's kb.md as "Missing Laundry Attendant hours (9/17/26)"** — cross-reference confirms it's not WLP-isolated noise, it was raised live on this same-day internal call too. *(Update, 9/18/26: John resolved this the next day — added job code PCA-9455 and re-imported hours; see WLP kb.md.)*
- **Scottsdale — group vs. transient villa mapping:** Devon confirmed HMAlpha is working with ProfitSword (Provisor) to build separate group/transient villa jobs; once live, Monali will update the mapping to split them. **No fixed deadline** — Monali just needs to be told when the ProfitSword-side change goes live. John noted the DOF is aware manual forecast/actuals entry is fine as a short-term stopgap.
- **Paychex API — terminated-employee hours disappearing (Taylor Walton, flagged first):** Root cause, explained live by Monali: the system only pulls hours for *active* employees (to avoid double-counting — a previous, separate issue), and does a rolling 21-day delete-and-reimport. When an employee terms, their hours simply stop being pulled, and the delete/reimport wipes what was previously there with nothing to replace it. **This is the first API-based (not file-based) Paychex integration** for Unifocus — genuinely new territory. Monali is working directly with **Scott Ames at Paychex**, who's been responsive (24-hour turnaround); Unifocus has sent Paychex the actual API payloads and is waiting on them to identify the correct field to use. Devon's takeaway: important to resolve since the whole point of the system is comparing actuals to standards, and dropped hours break that.

---

## Property Follow-Ups (John Grech)

**Westin La Paloma — Call #4, 100%.** Forecasting/scheduling still strong. Property needs to finish entering employee availability for auto-scheduling to work as intended (next week). Peggy Taylor reported some Paychex-vs-Unifocus schedule mismatches (no examples yet — asked to bring some to the next call) and wants an **informal review of the labor standards**, since she wasn't part of the original standards review (that happened with Fabrizio and Charles, per Devon). John couldn't get everyone together for a call this week, so **Call #5 is being scheduled for next week**, same time slot if Taylor's calendar allows — Taylor to reach out to Peggy directly to lock the time and try to get discrepancy examples in before the call rather than during it. Devon's guidance: keep the standards-review conversation itself on the regular weekly call if it's a normal check-in, but if anything drastic comes out of it, consider a separate call and possibly rerunning the BLSBD for just the changed items so there's financial-impact context. *(Note: John briefly misspoke live and attributed this to Valencia/Cynthia before self-correcting — the standards-review request is La Paloma/Peggy's, not Valencia's; the written recap already reflects the corrected version.)*

**Hyatt Regency Valencia — Call #2, 100%.** No standards concerns here (see correction above). One minor forecast adjustment: an item moved from "banquet heavy" to "banquet light" after a conversation with Cynthia and Clifford — covers move automatically the next day (9/18).

**Marriott Del Mar — Call #1 scheduled for 9/18/26** (the call processed separately this session — see `marriott-del-mar/2026-09-18_weekly-call-1-scorecard.md`). Alain asked to be forwarded the invite so he can join.

**DoubleTree Charlotte — potentially the final weekly call, 9/18/26.** Property's been doing well; John expects Charlotte to graduate off the weekly-call cadence next week.

**DoubleTree Del Mar — property profile still not received.** John has asked "a couple times now" with no response; wants it before he's onsite at Scottsdale next week so he can get a head start. Devon to follow up directly right after this call. *(Cross-reference: this is DoubleTree San Diego Del Mar — John Grech has the config, but Pete wants the training assignment back, confirmed 9/18/26; date under review, see Marriott Del Mar kb.md.)*

**Marriott Warner Center (Taylor Walton) — on-site, strong engagement.** Working closely with Yvonne (DOF); Breanne (GM) sitting in on meetings too. 1:30 PM follow-up meeting planned to finalize the weekly timeline's task ownership (the "who," not just the "what").

---

## Warner Center — Arrivals/Departures Data Problem (real, worth tracking)

Same structural issue already seen at Marriott Del Mar (see that property's kb.md), now confirmed at a second property: the PMS's overnight report gives a **projected**, not actual, arrivals/departures number, and that projection doesn't reconcile against occupied rooms as the day progresses (rooms sold intraday aren't reflected). Taylor found the front office manager's team was manually keying these already-inaccurate projected numbers into ProfitSword. **Workaround devised on the spot:** instead of the AM projection, run an "arrivals today" report right before date-rollover to capture what actually happened that day, and back into departures from that plus the (accurate, auto-imported) occupied-rooms number. **Permanent fix:** property is switching PMS to "Power of M" (Marriott's newer platform) in December 2026 — this workaround is a bridge until then. Devon flagged this is likely a portfolio-wide pattern (arrivals/guest counts probably aren't mapped into ProfitSword at most HMAlpha properties because nobody's needed the field before) rather than a Warner Center-specific gap — worth Taylor asking Avon whether it's even mappable. **Pete offered a housekeeping-report-based workaround he's used before at other Marriotts** — didn't share details live since it's likely not worth the effort given the December PMS switch, but offered to share it if the timeline slips.

---

## Standards Governance — Centralized vs. Decentralized (Devon's question)

Devon asked the group for best-practice input on whether hotel admins should be able to freely change labor standards, or whether changes should require some kind of review/approval window.

- **John's Hilton-era answer:** fully centralized. Properties had to submit financial justification and reasoning for any standard change; head office signed off before Unifocus (or the property, if permitted) made the change.
- **John's alternate model from another client:** property gets the year's budget-derived standard as the fixed "master" for that year; before any annual update, the prior year's standard set gets copied/archived first so there's always a historical reference to fall back to if a change goes wrong.
- **Pete's live contribution (unmuted specifically for this):** framed it as depending entirely on what outcome you want, using two contrasting real examples from his casino background — **cocktail servers**, where the standard deliberately ran high and staff were encouraged to overschedule (up to 150% of the standard on weekends) because that behavior is what actually hit budget; and **cage cashiers**, who balance a $2M drawer to the penny daily, where the standard needs to match exactly what you expect them to run, no slack. His summary framing: decide whether you want centralized control, or decentralized autonomy with accountability enforced elsewhere (labor % on the P&L) — both are legitimate, the choice just depends on what you're actually trying to hold people accountable for. **Possible new addition to the training-methodology signature-hallmark list** (see CLAUDE.md) — this "match the standard's tightness to the job's actual tolerance for variance" framing, illustrated via the cocktail-server/cage-cashier contrast, reads as a distinct, reusable Pete-ism worth watching for in future sessions.
- **Outcome:** no decision made — Devon to think it through with Matthew Sylvester. Confirmed as of now: hotel admins currently *do* have the ability to change their own standards during this implementation phase.

---

## Executive/Portfolio Reporting (Devon's second item, deferred)

Devon wants two report types eventually: a **monthly** high-level executive/ownership summary and a **weekly** operations-lead report, ideally portfolio-wide (rolled up across all HMAlpha properties, not per-property). John confirmed portfolio rollups are doable — Unifocus has built a rolled-up Labor Effectiveness Report for another client before. Alain flagged they'll need to loop in a DevOps team member (name not recalled live) who's helped build this kind of thing previously. **Pushed to next week's call** for real discussion — this was Devon's own second item and he explicitly deferred it given time.

---

## Transition Plan (first 5 completed properties)

- **Model:** the consultant who did the four post-go-live coaching calls (mostly John, since he's covered the most properties) leads the transition call, alongside the property's CSM (Susanna) and Alain. The original config consultant owns building the transition documentation file; if they're unavailable (onsite elsewhere), they're not required to join live.
- **Target dates: October 9 and October 23, 2026** — two properties per day (AM/PM), chosen partly around Steve Carrell's on-site back-to-back schedule that week.
- Consultants to get documentation to Susanna by **end of next week** (week of 9/21) so she has 1–2 weeks to get familiar with each property before taking over.
- **Scope confirmed: this is only for the first 5 properties that have fully completed weekly-call follow-up** — not a general rollout.
- Devon is comfortable with Alain/team reaching out to properties directly (cc Devon, Nicole) — asked to see the standard agenda first; John confirmed one exists and will share it.

---

## Open Items

- [x] **La Paloma laundry-hours gap** — John to send Monali screenshots. *(Resolved 9/18/26 — see WLP kb.md.)*
- [ ] Monali to verify whether laundry-attendant hours are present in the inbound file / correct job-code nomenclature.
- [ ] Monali to update ProfitSword mapping for Scottsdale's group/transient villa split once that change goes live on ProfitSword's side.
- [ ] Continue working with Scott Ames (Paychex) to identify the correct API field for terminated-employee hours; this is the first API-based Paychex integration, so there's no prior playbook.
- [ ] John to schedule La Paloma Call #5 (labor-standards review + Paychex-schedule-mismatch examples) — Taylor to coordinate timing with Peggy.
- [ ] Taylor to get Peggy's Paychex-vs-Unifocus schedule discrepancy examples ahead of Call #5 if possible.
- [ ] Devon to follow up directly with DoubleTree Del Mar for the property profile John's requested multiple times.
- [ ] Alain to forward John the Marriott Del Mar Call #1 invite (9/18/26).
- [ ] Taylor to ask "Avon" (ProfitSword contact, spelling uncertain from transcript) whether arrivals/departures can actually be mapped, for both Warner Center and portfolio-wide.
- [ ] Devon to think through centralized-vs-decentralized standards-change policy with Matthew Sylvester; no decision yet, admins currently retain change access.
- [ ] Executive/portfolio-wide reporting (monthly exec summary + weekly ops report, portfolio rollup) — deferred to next week's call; Alain to loop in a DevOps resource.
- [ ] John to share the standard transition-call agenda with Devon.
- [ ] Transition calls for the first 5 completed properties — target Oct 9 and Oct 23, 2026; documentation due to Susanna by end of week of 9/21.

---

## Related Files

- [HM Alpha Client KB](kb.md)
- [Westin La Paloma — Property KB](westin-la-paloma/kb.md)
- [Westin La Paloma — Weekly Call #4, 9/17/26](westin-la-paloma/2026-09-17_weekly-call-4-followup-and-handoff-discussion.md)
- [Marriott Del Mar — Weekly Call #1 Scorecard, 9/18/26](marriott-del-mar/2026-09-18_weekly-call-1-scorecard.md)
- [Marriott Del Mar — Property KB](marriott-del-mar/kb.md)
- [HM Alpha Weekly Call Notes — September 10, 2026](2026-09-10_weekly-hma-call-notes.md)

---

*© Peter A. Castellano. All rights reserved.*
