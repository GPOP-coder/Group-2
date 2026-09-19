<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Accomplishments Log

Running record of confirmed fixes, resolved issues, and completed work at Mohonk Mountain House — the counterpart to the open-items punch list (`2026-08-30_bron-followup-punch-list.md`). Feeds the cross-client rate-justification evidence list in `pws/foundations/07-unifocus-contract-rewrite-2026.md` where the work reflects Pete's own hands-on root-cause resolution (not just advisory input).

---

- **8/30/26 — Banquet Bartender TK/Reconcile code fix, confirmed.** Root cause was a leftover TK code attached to the retired "Banquet Bar" job instead of the correct "Banquet Bartender" job; fix had been held pending James Danks's input on preferred structure. Pete checked directly in the system 8/30/26: Beverage Services - All / Service Bartender Main / "Banquet Bar" now has no TK or Reconcile Codes; "Banquet Bartender" correctly holds TK/Reconcile Code 15400015. Closed — not an open question for James or Bron.

- **8/30/26 — Breakfast server formula, resolved via live meeting.** Earlier framing ("James objected 8/4, never addressed") was incorrect. In a live meeting, agreed to a sliding ratio (lower at low volume, higher as it gets busier) and removing the flat base-2 addition regardless of shift. Pete separately caught an unraised ceiling on the staffing tab that should also go away.

- **8/30/26 — Beverage department structure, resolved.** Beverage confirmed as its own standalone department — already documented in the status letter sent to the property. Not an open question.

- **8/30/26 — On-call Main Dining Room server position, superseded with a better fix.** Original plan (Lou green-lit a new on-call MDR position) replaced with a simpler solution: over-scheduling plus a shift label, no new position needed. **Correction 9/4/26:** the job code itself still exists — James convinced HR to create an "On-Call Server" job code before Pete could stop it (he wanted one per F&B job, not just Server). It shows in Unifocus (`2 - Food and Beverage / Dining Room - Main / Server / On-Call Server`) with zero standards configured — created, but dormant. The shift-label/overscheduling approach is the actual operational fix; the unused job code is a leftover from James's parallel push, not evidence the simpler fix didn't take.

- **8/4/26 — Spa "2nd floor duplicates" job reorganization, done.** Completed same-day during the Spa standards session.

- **8/4/26 — Spa treatment volume KBI, fixed — confirmed for real 8/31/26.** Bron/Casey confirmed on the punch-list review call that Mark Fry independently validated the treatment-count KBI against Book for Time and it matched. Fully closed, not just Pete's inference anymore.

- **7/3/26 — Beverage auto-scheduling fix — root cause explained 8/31/26, confirmation pending.** Carriage Lounge Bartender, Founders Service Bartender, and Central Services Service Bartender jobs were missing from the Generate Schedules task scope; Pete added them. On the 8/31/26 call, Casey identified the deeper cause with Pete: the beverage department hierarchy had a job with two job codes pointing to the wrong one (Carriage Lounge/Service Bar assignment) — believed fixed while Pete was onsite. Casey checking with "Sam" (Beverage) this week to confirm shifts are actually filling.

- **5/26/26 — MDR short-shift fix.** James reported 5/25 that Sun–Thu MDR servers were getting cut off early (7:45pm instead of 10:15pm) — the shift was mislabeled 4.5 hrs vs. the real 5 hrs, tripping the 2.5-hr short-shift floor. Fixed by correcting Daily Hours from 9.0 to 10.0. No further complaints logged in the 3+ months since. Pete verifying directly in the system (rather than waiting on James) as of 8/30/26.

---

## Diagnosed but not yet fully closed (root-cause work done, fix pending elsewhere)

- **RMSOPS-14129 (banquet actuals overwritten)** — Pete found the root cause 7/1/26; fix requested from Monali (export + delete the BQT mapping), still awaiting her action. **Update 8/31/26:** Bron confirmed the auto-overwrite mechanism has been deliberately disabled as a workaround (manual updates in the meantime, James is fine with it), with the permanent banquet interface automation targeted for end of week (9/4-9/5).
- **Forecast-side banquet KBI import** — Pete's live finding 8/3/26: the actuals-side import is confirmed off, but the forecast-side import may still be live, which would explain James's forecast numbers still disappearing. Needs direct confirmation from Monali on which screens were actually disabled.

- **Spa scheduling root cause, diagnosed 8/30/26.** Pete checked directly in Task Scheduler and Employee Maintenance rather than assuming a repeat of the Beverage-style scope-omission bug: Spa is correctly included in the schedule-generation job filter. The real issue is structural — the labor standard isn't designed to generate schedulable shifts for variable Spa positions (all Body Treatment providers, plus about half of Spa Attendants, are set to variable), and separately, Spa isn't configured as a Revenue Center at all, so there's no forecast driving Projected Hours regardless. Explains multiple items on Bron's own Spa list ("Create a Spa Department," "Match standard hours"). Not yet fixed — full detail in `2026-08-30_bron-post-visit-followup-list.md`.

---

*© Peter A. Castellano. All rights reserved.*
