<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — ADP/Unifocus Job Code Reconciliation Call, 9/14/26

**Attendees:** Pete, Bron Walis, Susanna Briggs (left ~1:21:30 for another call); two other Mohonk staff on the call, not introduced by name in the transcript (Plaud diarized as Speaker 4/Speaker 5 — worth identifying if it matters later).

**⚠️ Follow-up meeting scheduled: Thursday, 9/17/26 (today), 10:00 AM ET / 9:00 AM CT** — Pete and Bron, Susanna invited if she can make it. Agenda: remaining labor standards questions (James's outstanding items) and "November" (unspecified — likely Mohonk's November planning/standards, not yet detailed).

---

## Personal note (not client-facing)

Bron mentioned Casey (who was going to own the employee-error cleanup work) is out because **his mother passed away last week** — return status uncertain. Bron is taking over that work himself with Pete's help in the meantime. Worth a quiet acknowledgment if the moment's right, not something to raise unprompted.

---

## 1. Rooms Forecast Reminder Email — Explained, Not a Defect

Bron flagged a recurring "Review and edit Unifocus Rooms forecast" email with no usable data in the attachment. Traced live via Task Scheduler:
- **Task #2** ("Import forecast KBI data") — sends to Jeanette, Kieran, Lou; legitimate data task.
- **Task #5** ("Reminder to review Unifocus Rooms forecast," set up by John Grech) — the actual source of Bron's confusion. It's tied to a report (Unifocus requires every scheduled task to reference a report — there's no way to send a plain reminder without one), but appears to fire **before that week's KBI data has actually been imported**, so the attachment looks empty even though nothing's broken.
- **Resolution:** left as-is for now. Bron knows where to adjust recipients, swap the referenced report, or change the send time if he wants to fix the timing later. Not urgent.

## 2. Employee Reconcile Errors — Root-Caused and Fixed Live

Worked the "home job must be valid" error list top to bottom, cross-referencing ADP's job codes against Unifocus's Labor Structure. **Real methodology, reusable:** always start with the assumption HR might be wrong before creating a new job in Unifocus — "it's really, really hard to get rid of" once created (can be moved to a different department, essentially never deleted).

**Specific employees fixed during the call:**
- **Shiloh Pellegi** (Spa Body Treatments — massage therapist/supervisor) — one-off role explaining her reconcile mismatch.
- **Connor Wise** (Other Operating — Gift Shop Supervisor PM) — Unifocus job row existed but had no TK/Reconcile code entered at all (never tabbed out of the field after pasting). Fixed live.
- **Sophia Torsey** (Spa Salon and Body Technician) — job didn't exist in Unifocus yet; created live under Spa Salon (not Spa Body Treatments), codes aligned to peer jobs.
- **James Adolfe** (Spa Fitness Reception, called "Delfini James" partway through) — likely a transfer/new secondary job Unifocus couldn't process because the job didn't exist yet; flagged for Bron to create once confirmed.
- **Brooke** — promoted from HR Employment Manager to **Head of Recruitment**; ADP still shows the old title. Decision: keep her old job record (Salaried division) since the position may be backfilled, rather than overwrite it.
- A handful of clearly bespoke/test roles reviewed and challenged rather than blindly created (e.g., a literal "test test" placeholder name, an "Archives Planning Project Assistant" role Bron wasn't sure was legitimate, a "Project Specialist" role for a family member — Bron's read: "sounds like a special job created for her").

**Governance fix already in place:** HR was creating new ADP jobs without notifying Unifocus admins. Bron confirmed HR is now under a directive to notify going forward — this was the actual root cause of the accumulating mismatch, not a Unifocus defect.

**Expected timeline:** new/corrected jobs clear tomorrow's reconcile for *new* hours, but historical hours (14–21 days already in the file under the wrong/missing job) may keep throwing errors until they age out or someone backdates the effective date manually.

## 3. Central Service Bar / Founders Bartender — Real Mapping Discrepancy Found, Not Yet Resolved

James (Mohonk, via email, not on this call) asked Bron/Pete to **link two job codes together** in Unifocus after a mistransfer caused hours to go missing — Pete declined that fix on principle: *"He basically wants his mistake to be coded into Unifocus... we can't combine codes into one job in Unifocus to avoid more problems in the future. It's not a good idea."* Reusable framing for future similar requests: fix the source data in ADP, don't encode a past mistake into the system to paper over it.

**What the investigation actually surfaced:** Unifocus's job coded "Founders Service Bartender" (ADP code ending in 152-xx) may actually correspond to ADP's **"Wine Steward Head"** per an old code map Pete kept from the original implementation — a real, unresolved mapping question, not just James's mistransfer. Bron is going back to James to confirm which codes are genuinely in active use before anyone touches the system further. Pete offered his old working code-map spreadsheet (raw ADP codes matched against hours actually used) to help Bron cross-reference.

**Also found:** Unifocus has no direct "export labor structure" report — a support ticket is required for that. The practical workaround (used live on the call): **T&A Codes screen → Export**, which is functionally equivalent for this kind of analysis.

## 4. Dining Room Labor Standard — Reminder to Check In

Pete's earlier "reverse efficiency of scale" model for the dining room came up again (more labor needed during slower/smaller-table periods; less per-person labor as covers grow via families/buffet). Pete's own framing on the call: *"It looks consistent and looks pretty, but I don't know if it's run a couple more times to see how it actually works."* Not resolved — needs a few more live cycles before calling it validated. This is one of the "signature hallmark" style standards worth tracking per CLAUDE.md's training-methodology notes.

## 5. Unrelated nuisance, logged for awareness

A recent Windows/Excel update broke normal Ctrl+V paste (right-click paste too) — requires a "special paste" method. Bron gave a heads-up; not a Mohonk or Unifocus issue, just worth knowing if Pete hits the same thing on his own machines.

---

## Open Items

- [ ] **Thursday 9/17/26, 10 AM ET/9 AM CT follow-up call** — labor standards + "November" topic (unspecified detail).
- [ ] Confirm James Adolfe's Spa Fitness Reception job creation completed and his transfer/secondary-job processed correctly.
- [ ] Bron to get clarification from James on which of the two Central Service Bar / Founders Bartender codes are actually in active use before any further code changes.
- [ ] Untangle the "Founders Service Bartender" (152-xx) vs. "Wine Steward Head" ADP mapping discrepancy Pete found live — may have been mis-set during original implementation.
- [ ] Bron to export current T&A codes and cross-reference against Pete's old ADP code-map working file (Pete offered to send it).
- [ ] Monitor next day's Employee Reconcile + hours transfer results to confirm today's fixes actually cleared (Connor Wise, Sophia Torsey, Shiloh Pellegi, Brooke).
- [ ] Watch for historical-hours reconcile errors lingering 14–21 days even after the underlying job fix, per the effective-date mechanic discussed.
- [ ] Pete to go back through James's outstanding emails/list of lingering issues (James never sent Bron the list he said he would).

---

## Related Files

- [Mohonk Client KB](kb.md)
- [8/31/26 Bron/Casey Punch List Review](2026-08-31_bron-casey-punch-list-review-call.md)
- [Ticket 261909 — Standard Hours Main Dining](2026-09-03_ticket-261909-standard-hours-main-dining.md)

---

*© Peter A. Castellano. All rights reserved.*
