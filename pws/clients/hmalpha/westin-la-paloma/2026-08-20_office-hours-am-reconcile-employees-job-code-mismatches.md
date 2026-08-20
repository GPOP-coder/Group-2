<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Office Hours (Thursday AM), Part 5: Employee Reconcile — Job Code Mismatches

**Date:** August 20, 2026, AM
**Attending:** Peggy Taylor (DOF); Charles James; Pete Castellano; Chef (dropped in briefly, unrelated question — see [Part 6](2026-08-20_office-hours-am-quick-hits-and-interruptions.md)).
**Source:** Raw voice-memo/session transcript, rough auto-transcription with crosstalk, not cleaned verbatim; job-code strings below are Pete's best live reads of a garbled transcript — treat exact punctuation as approximate, not authoritative, until verified directly in Unifocus/Paychex.

---

## 1. The Core Problem — Paychex Job-Code Strings Don't Match Unifocus Exactly

- **Root mechanic:** Unifocus's daily **Employee Reconcile** report doesn't just match on the 4-digit job code (e.g., "4140") — it matches the **entire code string** Paychex sends, including spaces, dashes, and periods (e.g., `PCA 4140 Supervisor - Banquet 1.` vs. `PCA-4140 Supervisor Banquet 1`). If any punctuation differs from what's registered in Unifocus's labor structure, the job is treated as **not found**, and the employee throws a reconcile error.
- **This is a Paychex-side data problem, not a Unifocus bug** — something (unclear what, or who) is altering job title/description formatting inside Paychex over time, and each time that happens, everyone carrying that job code starts erroring in Unifocus even though nothing changed on the Unifocus side.
- **Working theory, unconfirmed:** whoever controls the Paychex job dropdown may be periodically editing job names/descriptions for their own formatting reasons (adding/removing dashes or periods), unaware that any change breaks the exact-string match Unifocus depends on. Peggy: *"we technically don't enter anything. We just choose from the drop down"* — confirming property-level users aren't the ones introducing the drift.
- **Pete's blunt assessment:** *"I wish we could just pick up [the 4-digit code alone]... but that's not a decision I get to make."* This is a known, standing limitation of the interface, not something fixable at the property level.

## 2. Errors Found and Fixed Live

| Paychex string (as received) | Job | Resolution |
|---|---|---|
| `PCA 3140 Supervisor.` | Unidentified — no matching job anywhere in WLP's labor structure; likely a stale/mistyped code from setup | **Not fixed** — deliberately left alone rather than creating a new "Supervisor" job no department actually uses. Pete: creating an unused job to silence the error is "easy to do, hard to undo." Plan: reach out to **Gideon** (consultant on another property, New Orleans or Union Station) to see how they resolved the same class of error before deciding whether to add or ask Paychex/corporate to fix at the source. |
| `PCA 4140 Supervisor - Banquet 1.` (vs. existing `PCA-4140 Supervisor Banquet 1`) | Banquet Supervisor | **Fixed** — corrected the labor-structure entry to match the exact Paychex string, punctuation included. |
| `PCA 3145 Attendant.` | La Lu's (pool bar/outlet) attendant — no current labor standard exists for this job; department confirmed they still use "attendant" as a real role, not fully retired | **Fixed** — added the job under La Lu's, mapped as a Casual Dining—type role (only "Casual Dining" options were available in the master-job list: bar back, bartender, bus person, cook, host, runner). No labor standard attached (deliberately, since one didn't exist before). |
| `PCA 4150 Server - Banquet 1.` (colliding with existing Banquet Bartender code) | Banquet Server vs. Banquet Bartender — the two were sharing/colliding on the same string, causing bartender hours to land under server and zero real bartender hours to come through | **Fixed** — removed the broken bartender mapping (it wasn't working anyway) and re-added the code as **Banquet Server**, matching Paychex's exact string. |
| `PCA 4185 Server - Banquet 1.` | Banquet Server (second/duplicate code, separate from 4150) | **Fixed** — added to match the exact Paychex string. Left an open question about why banquet server has two different codes (4150 and 4185) coming from Paychex at all. |
| `PCA-4685-Server-RS` (Room Service) | Room Service Server | **No reconcile error was actually present** for this one — flagged by Peggy as a suspected issue, but on inspection the string already matched. Pete updated the TK (timekeeping) code as a precaution since it looked like a possible hours-import issue distinct from the reconcile-error mechanism, but this was **not a confirmed fix** — outcome unverified as of session end. |
| `PCA 9266 Cafeteria Cook.` (vs. registered `PCA 9264 Cafeteria Cook`) | Cafeteria Cook — a specific new hire ("Kyle") was entered under 9264 in Paychex correctly, but somehow the reconcile report was reading his job as 9266 (a code that doesn't exist in Unifocus at all) | **Root cause identified as likely a genuine Paychex-side coding error for this one employee**, not a punctuation mismatch — flagged for Peggy to double-check directly in Paychex whether Kyle is actually coded 9264 or 9266 there. **Not fully resolved live** — Peggy's screen dropped momentarily due to a network issue before this was confirmed closed out. |

## 3. Why Errors Appear/Disappear When People Move Jobs

- **Live, unexplained pattern flagged by Peggy as concerning:** moving a person *out* of a job sometimes makes a **previously-invisible error suddenly appear** for that job code (e.g., a supervisor code that wasn't erroring while occupied showed up on the reconcile report only after the last person was moved out of it). Pete could not explain this mechanically, agreed it was "weird and concerning," and did not resolve it — logged as a genuine open technical question, not dismissed.
- **Practical risk flagged from this:** as WLP moves into its seasonal staffing-shuffle period, **job-code errors may appear reactively as people are moved around**, not just at initial setup — the Reconcile report needs to be checked regularly going forward, not treated as a one-time cleanup.

## 4. Reporting Housekeeping — Two Separate Daily Emails

- **Two distinct automated emails exist and should both be monitored:**
  1. **"Employee Reconcile Errors"** — the job-code mismatch report walked through above.
  2. **"Hours Transfer" (errors)** — a separate report specifically for hours that failed to import (a downstream consequence of the same underlying mismatches, but tracked separately).
- **Action given directly to Peggy:** forward/reply to the daily Reconcile email to **support@unifocus.com** and ask that the same distribution list (currently reaching Peggy, Charles, and possibly others) also be added to the **Hours Transfer** email, since right now only some recipients are getting both.
- Fixing a Reconcile error for a given job code generally also resolves the associated Hours Transfer error for that same code — the two are linked, not independent problems.

## 5. Contract Labor — Reaffirmed Mid-Session

- The placeholder/mock-employee contract labor policy (full detail in [Part 3](2026-08-20_office-hours-am-finance-dept-scheduling-and-contract-labor.md#6-contract-labor--decision-explained-for-the-first-time-to-peggy)) was reaffirmed again at the tail end of this job-code cleanup session, prompted by Peggy asking why WLP needs to do this at all. Same guidance repeated: schedule against generic numbered placeholder jobs, never real names; actual contract-labor hours come in via Work Records in bulk, unconnected to the placeholder schedule entries.

---

## Open Items From This Session

- [ ] **Contact Gideon** (consultant, prior property — New Orleans or Union Station) to learn how a similar unmatched `PCA 3140 Supervisor.` code was resolved elsewhere before deciding whether to add it or escalate
- [ ] **Confirm Kyle's actual Paychex job code (9264 vs. 9266)** — not resolved live due to a network drop; likely a genuine Paychex-side data entry error, not a punctuation mismatch
- [ ] **Verify the Room Service (`PCA-4685-Server-RS`) TK code change actually fixed the suspected hours-import issue** — no confirmed error existed, fix was precautionary and unverified
- [ ] **Get Peggy (and Charles, and anyone else on the Reconcile distribution) added to the Hours Transfer email** — send the request to support@unifocus.com
- [ ] **Investigate why job-code reconcile errors appear only after an employee is moved out of a job**, rather than while they're actively assigned to it — genuine unexplained mechanic, not resolved
- [ ] **Establish a recurring cadence for checking the Reconcile report** — flagged as newly important given the upcoming seasonal staffing shuffle, not just a one-time setup cleanup
- [ ] Confirm why Banquet Server has two separate Paychex codes (4150 and 4185) — not investigated, just both individually fixed

---

## Related Files

- [Westin La Paloma — Property KB](kb.md)
- [Office Hours AM, Part 1 — Spa Scheduling](2026-08-20_office-hours-am-spa-scheduling.md)
- [Office Hours AM, Part 2 — Paychex Sync & Publishing Mechanics](2026-08-20_office-hours-am-paychex-sync-mechanics.md)
- [Office Hours AM, Part 3 — Finance Dept Scheduling & Contract Labor](2026-08-20_office-hours-am-finance-dept-scheduling-and-contract-labor.md)
- [Office Hours AM, Part 4 — Budget vs. Standards Sign-Off](2026-08-20_office-hours-am-budget-vs-standards-signoff.md)
- [Office Hours AM, Part 6 — Quick Hits & Interruptions](2026-08-20_office-hours-am-quick-hits-and-interruptions.md)
- [Office Hours AM, Part 7 — F&B Director User Access Setup](2026-08-20_office-hours-am-fnb-director-user-access-setup.md)
- [Office Hours AM, Part 11 — Contract Labor Live Build](2026-08-20_office-hours-am-contract-labor-live-build.md)
- [Admin Training, Day 2 (Tuesday), 8/18/26](2026-08-18_admin-training-day2-tuesday.md)
- [HM Alpha Client KB](../kb.md)

---

*© Peter A. Castellano. All rights reserved.*
