<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Front Desk Help Session with Stacy Zappone

**Date:** August 6, 2026, ~5:00–6:30 PM (immediately after the Beverage session, same location)
**Location:** Mohonk Mountain House — Office 16
**Context:** Not on the calendar as a formal meeting — Stacy caught Pete right after the Beverage session ended for "two quick questions." Split out from the Beverage transcript as its own file since it's a different department and a genuinely separate topic. Source: same raw Apple Voice Memo transcript as the Beverage session.

## Participants
- **Pete Castellano** (PWS)
- **Stacy Zappone** — Front Office / Guest Services / Concierge (exact scope of title unclear from the transcript — **new contact, role TBD, no email captured**)

---

## 1. How Front Desk Shift Generation Actually Works
Stacy's underlying question: Front Desk and Switchboard staff are cross-trained and never work a truly fixed pattern (never only-open, never only-close), so the auto-generated schedule doesn't match how she actually needs to staff. Pete walked through the generation logic in detail — **worth keeping as a clean reference, since it's a different trigger model than F&B (covers) or Housekeeping (occupied rooms):**
- Front Desk staffing is driven by **arrivals and departures forecasts** from Revenue Management — **not occupied-room count**, since that doesn't determine desk workload the way check-in/check-out volume does.
- **Guaranteed shifts every day, regardless of volume:**
  - 7:00 AM opener
  - 10:00 AM mid-shift
  - 3:00 PM closer
- **Volume-triggered additional shifts:**
  - An 8:00 AM shift is added when overnight guest count exceeds **500**.
  - Two additional shifts are added when arrivals exceed **100**.
- Once the shifts are built, the system hands them out **sequentially, roughly alphabetically**, to whichever eligible employees the auto-scheduler reaches first in its pass — not all at once, and not randomly. This is the same underlying assignment mechanism described in the Beverage session (see [2026-08-06_beverage-standards-tuneup.md, §11](2026-08-06_beverage-standards-tuneup.md#11-sub-only-vs-regular--reusable-auto-scheduler-control-technique)) — **Sub-only, Regular, and Availability settings are what actually give a manager control over who catches which shift**, not anything about the shift-generation logic itself.

## 2. Worked Example: "Artem" — A Genuinely Irregular Schedule
- Artem works a **Friday double shift**: comes in at 3:00 PM for Switchboard, punches out, then returns for an **11:00 PM–7:00 AM overnight** shift — a real edge case for the availability model, including a midnight-crossing shift.
- Pete built out Artem's correct multi-day **Availability to Work** windows live in Employee Maintenance, working through the midnight-crossing entry issue (the system initially rejected the entries as overlapping until entered in the right order/format).
- Combined with marking Artem **Sub-only** on jobs he shouldn't be auto-scheduled into, and **Required Off** on his actual non-working days, this stops the auto-scheduler from trying to slot him into standard day shifts he can't actually work.
- **Standing recommendation reinforced:** every employee should have *something* configured (days off, availability, sub-only status) even if their real schedule varies — it communicates intent to other people building the schedule and prevents the auto-scheduler from guessing badly, even for genuinely variable staff.

## 3. 🔴 Real Open Issue Found: "Paula's" Overnight Hours Missing from Unifocus/Reporting
**Significant — a previously unsolved mystery, with a new diagnostic lead Casey Dow hadn't tried.**
- Stacy's report: Paula, an overnight Front Desk Clerk, **clocks in correctly, is coded correctly, and gets paid correctly in ADP** — but her hours **never show up in Unifocus reporting**. Confirmed happening specifically to her, not to other overnight staff (Artem's hours show up fine).
- **Diagnosed live using the Employee Schedule Analysis Report** (same report already documented elsewhere in this KB): confirmed her *scheduled* shifts appear, but *actual* hours don't come through. Checked back to a week in March with no resolution found there either — genuinely unclear how far back the gap goes.
- **Casey Dow has already worked on this specific problem and given up** — worth knowing before re-treading the same ground.
- **Root-cause hypothesis, refined 8/6/26:** in ADP, Paula's **Pay Code shows "Night Shift"**, where Artem's (a working, correctly-reporting overnight employee) shows **"Regular."** This points to an **unmapped ADP Pay Code in the Actual Hours interface between ADP and Unifocus** — not a job-code problem. Two distinct possibilities, not yet narrowed down:
  1. **Unifocus never mapped the "Night Shift" Pay Code as worked/actual hours** in the interface — meaning anyone coded that way would silently drop out, regardless of who they are.
  2. **Paula is simply mis-coded in ADP** and should carry the same Pay Code as the other overnight desk agents ("Regular," like Artem) — a data-entry fix on Mohonk's side, not a Unifocus mapping gap.
- **Action assigned to Stacy:** check ADP directly — confirm what Pay Code the other overnight desk agents carry vs. Paula's, and report back what she finds.
- **Escalation path if confirmed:** raise with Casey — determine which of the two branches above is actually true (interface mapping gap vs. ADP mis-coding), since the fix is different depending on which side owns it.
- **Worth keeping distinct from a separate, already-resolved case:** Artem's overnight hours were *previously* misattributed to Switchboard instead of his correct job — already fixed by Casey. Paula's issue is adjacent but different: her hours don't show up anywhere at all, rather than showing up in the wrong place.

## 4. New Diagnostic Tool Surfaced: "Employees with Errors" Report
- Casey started using a report this week (not previously documented in this KB) that flags **ADP job codes Unifocus doesn't recognize**, property-wide — not specific to Paula's issue.
- **Live example found:** an unrecognized code associated with what appeared to be a new Gift Shop job, possibly a new supervisor-level position — flagged as something for Casey to verify and add to Unifocus if legitimate. Not confirmed live, just surfaced as an example of what the report catches.
- **Worth remembering as a general troubleshooting tool** the next time an employee's hours seem to be silently vanishing the way Paula's are.

## 5. Non-Action Color
- Stacy raised a guest-facing product wish — charging purchases directly to the room via a tap-to-pay key/wand (cruise-ship style) rather than requiring a separate payment method at point of sale. **Not a Unifocus capability and not an action item** — just a genuine guest-experience idea worth remembering if a relevant conversation comes up later.
- Confirmed Front Desk/Guest Services generally isn't a high-hour-volume concern the way F&B or Housekeeping are — turnover days (e.g., group check-out Fridays) can approach ~300 of the property's 259 rooms (plus ~6 "watch" units) departing, but even the biggest turn days aren't described as a real staffing strain.

---

## Open / Unresolved
- **Paula's missing overnight hours** — real, unresolved, with a concrete new lead (possible second ADP overnight job code) that Casey hasn't tried. Stacy to check ADP directly and report back.
- **New Gift Shop / unmapped ADP job code** — surfaced via the Employees with Errors report, not yet verified or added to Unifocus.
- **Room-key-as-payment** — a guest-experience idea from Stacy, not a Unifocus item, no action attached.

---

*© Peter A. Castellano. All rights reserved.*
