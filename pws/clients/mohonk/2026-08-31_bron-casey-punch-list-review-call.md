<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Punch List Review Call with Bron Walis & Casey Dow

**Date:** August 31, 2026 (impromptu — connection took ~20 min to sort out beforehand)
**Attendees:** Bron Walis, Casey Dow, Pete Castellano (from Houston, mid-Moran training week)
**Format:** Bron shared his own consolidated punch list (his framing: "a little more consolidated" than Pete's) and they worked through it live, plus Pete's own remaining open tickets.

This call directly updates `2026-08-30_bron-followup-punch-list.md` — see reconciled status changes below, applied to that file.

---

## Section 1 items — reconciled

- **Automate Transfer Hour Issue Report / Reconcile Report** — ✅ confirmed working, both emails arriving. Casey: real work surfaced, but low urgency — mostly salaried positions where scheduling has no real effect; nothing breaking or blocking. Casey will work through the reconcile list this week ("good project"). Process fix in place going forward: HR now knows to notify Bron/Casey when a new ADP job is created so it gets built in Unifocus before it throws errors (untested — no new job created yet). Pete flagged: remember to also set up User Administration access for any new job, since creating it doesn't automatically grant visibility.
- **Re-automate Banquet Interface** — Getting close. Report is generating; some naming mismatches being reconciled; Bron expects a usable copy by end of week (9/4-9/5). **Pete's actual need once it's flowing:** the full combination list of all banquet event types × booking types in one pass — Mohonk runs 45 distinct event types (no Group/Local/In-House shortcut), all already sorted/accounted for on Bron's side. Pete explained the "fake BEO" technique (build a test booking with every combination, import it once to light up all mapping options at once, then delete/ignore the guest-facing side-effects) as the fast path — **Bron will instead just hand-modify the actual export file to include every combination** and send it over for the same effect. Pete (or "someone from Unifocus") does the actual mapping once it arrives.
- **Thursday-Sunday cover interface** — Still shaky, not fully resolved. Root cause understood but not eliminated: the interface *file* is sent daily but only actually *updated* 2-3x/week by one person who works Mon-Fri only; Unifocus processes it ~6 hours after upload regardless. Bron on vacation week of 8/17 → Casey had to manually regenerate standard hours (found zeros some days). Last week (8/24 week) it self-corrected by Wednesday, no manual regen needed. Bron is working on automating the file population entirely. Pete's framing: fine as long as whatever comes in is clean/audited when it lands, however irregular the update cadence. **Status: watch again this week**, not resolved yet — matches what's already on the punch list.
- **Unifocus-ADP schedule interface / ADP punch-to-schedule** — Both still back-burner, sequenced: interface automation (Bron's task) has to land first before punch-enforcement (hard lock vs. soft variance-flag, per Pete) is worth pursuing. **New, real finding:** Mohonk is on ADP eTime, which ADP is retiring — no firm date yet, but before 2030 based on Bron's understanding. There's an eTime replacement (good until 2038) and then a *third* successor app after that ("stupid," per Bron — a chain of three systems). Bron may deliberately hold off building the ADP interface until this eTime migration lands, since it'll likely need rebuilding anyway. Pete floated (half-joking, no follow-up) considering Unifocus's own Time & Attendance module as an alternative that would sidestep some of these interface headaches — not pursued further on the call, logged as a one-off comment, not a real recommendation in progress.
- **Condense the week to get schedules out earlier** — No changes made. Bron keeps this low priority — no real demand from staff for schedules a half-day earlier; other work takes precedence.
- **Department adoption audit ("make list of departments inputting schedules")** — Not started. Bron reframed: may hinge on getting the new Unifocus Admin/Data Analyst hire in place first, but is open to raising its priority regardless of that hire. **Pete's push:** doesn't need to wait — a simple top-down mandate that schedules must live in Unifocus can start now; the ADP schedule interface (once built) will reinforce it structurally once staff can only see "their" schedule coming from Unifocus.
- **Beverage auto-scheduling fix** — Root cause discussed with Casey: the beverage department hierarchy had a job with two job codes, pointing to the wrong one — something specific to Carriage Lounge/Service Bar assignment. Believed fixed while Pete was onsite. **Not fully confirmed yet** — Casey will message "Sam" (beverage manager, presumably Casey Dow's beverage-side contact) this week to check whether auto-scheduling has actually been filling shifts since the fix. Still technically open pending that confirmation, but the diagnosis itself is settled.
- **Spa treatment-count accuracy — ✅ RESOLVED, confirmed for real this time.** Bron/Casey independently re-confirmed: Mark Fry validated the treatment-count KBI against Book for Time and it matched. Pete: "I'm going to take that off my list." This closes the loop that was still marked "worth asking if it's material" on the prior punch list — it's now genuinely closed, not just Pete's inference.
- **Granary/Founders rain-contingency coding** — Still unresolved, and it turns out **Bron/Casey don't have full clarity on it either** — Pete couldn't fully recall/articulate the exact ask live (something about ADP coding + a possible pay-rate change tied to inside/outside duty during a rain relocation), and Casey suggested it's likely a question only James Danks can actually answer. Pete will dig back through his own notes. **This is a genuine downgrade from "ask Bron directly" to "actually still needs James" — update the punch list framing accordingly.**

## Bron/Lou's own list — reconciled

- **Unifocus Admin role** — the position **is now posted.** Bron and Lou agree it will likely combine Data Analyst + Admin (and possibly more) into one role.
- **Mobile App adoption** — Bron wants to sequence this behind getting the new Admin hire in place first. Pete pushed back gently: setting a firm mobile-rollout date could actually accelerate the harder items (adoption audit, duplicate-process elimination) by creating peer-level accountability rather than needing it to flow top-down — referenced James Danks' on-call situation as a live example of partial, uneven adoption right now.
- **Review next week's schedule during labor meetings** — labor meetings already moved to Wednesdays. This item is "contingent on some other things" per Bron — Lou's involvement/attendance came up as a factor but wasn't fully explained; log as still open, cause unclear.
- **Eliminate duplicate scheduling processes** — tied to the Admin hire and to training, not an independent item.
- **Approve all schedules at once** — Bron flagged this might be a duplicate of "Single Schedule Push by Admin," already elsewhere on the list.
- **New op codes for better reporting** — not a standalone task; these come organically out of the division/department/job mapping conversations as they happen.
- **More scheduled email reminders** — partially done already via Task Scheduler; more can be added if Bron wants.
- **Punch management compliance** — framed as a training item. Pete floated a peer-pressure tactic used successfully at other properties: ADP eTime can send a list of all unapproved punches to every manager at once, rather than individually — visibility itself drives compliance. Not committed to, just shared as an idea.
- **Training — Budgeting class** — confirmed lower priority than Schedule Export + Employee Maintenance classes; will follow as an add-on once those two are handled.

## Onsite visit / scheduling

- Both open to onsite or remote for the next real working session — Bron leans onsite if the right people can be in the room (more impactful); would consider remote if onsite can't happen for ~3 months.
- **Pete's calendar reality:** booked with no weekday at home through end of September (one week is a Disney cruise with family, not actually free time). First fully open week: **first full week of October.** Then booked again until the **last week of October.**
- Bron prefers late October/November timing anyway, hoping the new Admin hire is filled by then.
- **Tentative hold placed: week of November 2, 2026** — Pete is blocking this week for Mohonk but it is **not firm** ("we'll move it around as we need to... just want to make sure I don't give it away"). Plan once it happens: a full day (maybe two) dedicated System Admin session with whoever's in the new Admin role, plus a separate day for Spa.
- **Spa specifically:** hasn't started scheduling in Unifocus at all yet. Sequencing per Pete: get the ADP interface / punch-enforcement pieces solid property-wide first, since Spa would benefit from the same schedule-matches-punch structure once it exists — "all these things need to fall into place before I'd even talk to them about it too much." A lighter first step that doesn't require waiting: basic Employee Maintenance setup (permanent schedules matching Book for Time availability — doesn't need to match the labor standard, overscheduling is fine/expected there).
- **Susanna cadence:** no formal recurring meeting currently exists between Bron and Susanna, though informal contact happens more than monthly anyway. Bron wants a check-in with Susanna included, ideally next Thursday or Friday (~9/4-9/5). Pete flagged a conflict: **he'll be in San Diego next Thursday** — mentioned "two straight weeks in San Diego" (worth cross-checking against the confirmed Marriott Del Mar week — see Open Items). Pete will check with Susanna on her own preferred cadence with Bron before locking a date, rather than just picking one himself.

---

## Open items from this call

- [ ] Casey to message "Sam" (Beverage) this week to confirm the auto-scheduling fix is actually filling shifts.
- [ ] Bron to send the finished Banquet Interface report by end of week (9/4-9/5) with all 45 event-type × booking-type combinations, either via a modified export file or Pete's "fake BEO" method — Pete/Unifocus maps it once received.
- [ ] Continue watching the Thu-Sun cover interface this week — not yet resolved, same status as before.
- [ ] Pete to dig back through his own notes on the Granary rain-contingency ADP coding question — likely needs James Danks directly, not Bron/Casey.
- [ ] Pete to check with Susanna on her own cadence with Bron before scheduling the next check-in (targeting ~9/4-9/5, pending Pete's San Diego conflict).
- [ ] Confirm/clarify: Pete mentioned "two straight weeks in San Diego" — cross-check against the confirmed Marriott Del Mar week (per CLAUDE.md, week of Sep 7) for a possible scheduling detail not yet captured elsewhere.
- [ ] **Tentative hold: week of November 2, 2026** for a Mohonk onsite System Admin + Spa session — not confirmed, revisit once the Unifocus Admin hire is filled.
- [ ] **Deferred to November visit (9/4/26):** clean up the dormant "On-Call Server" job code (`2 - Food and Beverage / Dining Room - Main / Server / On-Call Server`) — can be moved but not deleted; not urgent, just needs to happen in person eventually. See `mohonk-accomplishments.md`.
- [ ] **Deferred to November visit (9/4/26):** apply the same "+2 at 180 → +1 at volume=1" base fix to Breakfast and Lunch that's already done for the Dinner Server standard (UNIFOCUS-261909 fix, 9/3-9/4/26) — keeping today's change scoped to dinner only so it can be tested in isolation first.

---

*© Peter A. Castellano. All rights reserved.*
