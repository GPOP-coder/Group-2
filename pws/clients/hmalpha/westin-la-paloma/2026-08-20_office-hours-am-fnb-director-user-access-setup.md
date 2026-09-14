<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Office Hours (Thursday AM), Part 7: F&B Director User Access Setup

**Date:** August 20, 2026, AM
**Attending:** An F&B-side director-level contact (oversees banquets; referred to in the transcript alongside the name "Bradfield" — **attribution uncertain, see note below**); Pete Castellano.
**Source:** Raw voice-memo/session transcript, rough auto-transcription with crosstalk, not cleaned verbatim.

**⚠️ Note on names:** This segment's transcription is rough enough that the attendee's identity isn't fully certain. A "Charles Bradfield" and a "Jordan Bradfield" both appear in the surrounding raw audio in ways that don't cleanly resolve to one consistent person — it's possible "Bradfield" is a department/area name, a different staff member being referenced, or a mis-transcribed name entirely. **Confirm the actual attendee's name directly before treating this file as a contact record** — cross-check against [contacts.md](contacts.md) and the [property KB](kb.md#contacts), neither of which currently lists a Bradfield.

---

## 1. Purchasing Clerk Visibility — Two People, One Job

- Property has **two purchasing clerks**, both under the single "Purchasing Clerk" job — both report jointly to Finance and to the Kitchen.
- Confirmed: it's fine for **both** the attendee and **Charles (James)** to have visibility into these two employees — no conflict in giving both parties access to the same job.
- **Charles James is described as "the timekeeper for the area"** in this context — worth noting alongside his existing role coordinating admin-session logistics (see [property KB](kb.md#contacts)).

## 2. Department Head Role Configuration

- Pete configured the attendee in **User Administration** as: **Department Head, Scheduler, and (likely) Approver** — these permission layers can stack; lower/redundant ones can be removed later without much practical difference.
- Given as **F&B Director**, granted:
  - **Forecasting** access for outlets they oversee, plus banquets.
  - Explicit exchange: *"are you going to be entering [forecasts]?"* → **No** — access was granted for visibility/oversight, not data entry. Pete's framing: *"I don't want you to have to enter anything... I don't want to have to enter anything either."*

## 3. Labor Structure Access — Full F&B, Not Individual Jobs

- As Director, the correct access pattern is **all of F&B** at the department level, not individually selected jobs — Pete noted the system was, somewhat redundantly, also offering individual job-level grants underneath the department-level grant, but department-level is what matters and what was applied.
- **Confirmed: cannot grant salary-level job access this way** — could offer **"FLP Management All"** as a workaround for salaried-role visibility, but true salary access is out of scope for this permission type.
- Also granted: **Kitchen** access, and **Administrative → Purchasing/Receiving only** (not full Administrative).
- **⚠️ Real mechanic flagged:** access is granted at the department/category level (e.g., "all of F&B"), but **new KBIs or outlets created later are not automatically included** in that grant — someone with "all of F&B" today will not automatically see a brand-new outlet added after the fact; access would need to be revisited.

## 4. KBI / Revenue Center Access

- Forecasting requires separate access to the underlying **KBIs and Revenue Centers** — granted broadly (attendee ends up with visibility into more than they'll actually use, which is acceptable/expected).
- **Spa was deliberately excluded** from this grant — not relevant to this role.
- **Swing Suite was included** — because cocktail servers from F&B outlets also work the swing suite, even though it's not a distinct "job," it's a revenue center this director needs forecasting visibility into.

## 5. Schedule Groups

- Reviewed schedule groups available under this access profile — mostly F&B-specific groups (e.g., Prep Cook) that were **created recently** and can't be selectively pruned from the assignment view; existing groups largely already fit.
- Confirms the same schedule-group mechanic discussed in [Tuesday PM §12](2026-08-18_manager-training-tuesday-pm.md#12-schedule-groups--reconfirmed-with-new-detail) — groups are decoupled from job creation and can accumulate over time.

---

## Open Items From This Session

- [ ] **Confirm the actual identity/name of this session's attendee** — "Bradfield" attribution is uncertain from the raw transcript; update contacts.md once confirmed
- [ ] Remember that **newly created KBIs/outlets won't automatically appear** under this director's "all of F&B" access grant — will need a manual follow-up whenever WLP adds a new outlet or KBI
- [ ] Consider whether the redundant individual-job grants underneath the department-level F&B grant should be cleaned up (cosmetic, not functionally necessary)

---

## Related Files

- [Westin La Paloma — Property KB](kb.md)
- [Office Hours AM, Part 1 — Spa Scheduling](2026-08-20_office-hours-am-spa-scheduling.md)
- [Office Hours AM, Part 2 — Paychex Sync & Publishing Mechanics](2026-08-20_office-hours-am-paychex-sync-mechanics.md)
- [Office Hours AM, Part 3 — Finance Dept Scheduling & Contract Labor](2026-08-20_office-hours-am-finance-dept-scheduling-and-contract-labor.md)
- [Office Hours AM, Part 4 — Budget vs. Standards Sign-Off](2026-08-20_office-hours-am-budget-vs-standards-signoff.md)
- [Office Hours AM, Part 5 — Reconcile Employees / Job Code Mismatches](2026-08-20_office-hours-am-reconcile-employees-job-code-mismatches.md)
- [Office Hours AM, Part 6 — Quick Hits & Interruptions](2026-08-20_office-hours-am-quick-hits-and-interruptions.md)
- [Manager Training, Tuesday PM, 8/18/26](2026-08-18_manager-training-tuesday-pm.md)
- [HM Alpha Client KB](../kb.md)

---

**Note:** This same working session with the F&B director continues directly into reporting tools, forecasting/KBI mapping, the La Luz Lounge standard walkthrough, and a live contract-labor build — see Parts 8–11 below.

---

*© Peter A. Castellano. All rights reserved.*
