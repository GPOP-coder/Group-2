<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Baha Mar — Bahamas Cruise Stop Visit Plan, 9/23/26

**Context:** The Disney Cruise (9/20–26/26, personal, with Kim/Jessica/Brian/Astrid/Cecilia) stops in Nassau **Wednesday, September 23, 2026**. Pete is using the port day to visit Baha Mar and meet with clients and potential clients — current plan is back onboard the ship by 5:30 PM (per the earlier, unofficial port-schedule note in `CLAUDE.md`; worth reconfirming given an actual property visit is now planned, not just sightseeing).

**Origin of this visit:** ties directly back to **RMSOPS-12810** (see kb.md Tickets table) — Pete flagged 9/11/26 that he wanted to use that ticket as "a legitimate reason to connect directly with the property and arrange a visit." That's now materializing via the cruise stop.

---

## Meeting Plan

- **Lunch with Jon Finch** (Grand Hyatt Baha Mar EMS contact — see `kb.md` contacts).
- **Meet with Valquir Correa — confirmed.** (VP Corporate Finance, campus-level; existing contact, `valquir.correa@bahamar.com`.)
- **Hopefully Nicola** — name given without further identification; **not a previously known Baha Mar contact in the repo.** Need to confirm who this is (role, property, spelling) once known.
- **Maybe Emre** (Emre Kenan, Director Finance Business Partner, Rosewood Baha Mar — existing contact).

## Casino Approach — Deliberately Cautious

**Pete is unsure how to approach the casino people directly** and plans to **ask Nicola and Valquir for an introduction/entrée** rather than reaching out cold. This is a sensible move given the delicate state of the existing casino-prospecting thread — Unifocus (via Clay Price/Alex Seltzer) is reportedly still working a deal on this same opportunity (see `2026-09-02_casino-prospecting-followup-email.md`), and Pete's fallback plan to pursue casino ops directly is meant to kick in only if Unifocus doesn't close it, not to work around/compete with that effort. Getting a warm introduction through existing campus relationships (Valquir, Nicola) rather than approaching casino leadership cold keeps this consistent with that plan.

## What Pete Will Mention: RMSOPS-12810

**Jira:** [RMSOPS-12810](https://ufjira.atlassian.net/browse/RMSOPS-12810) — "Baha Mar Schedule Export Indicate an OFF day for Unscheduled Days"

**Full technical detail (LOE request for an interface modification):**

- **Current state:** the Unifocus → Infor schedule export is client-approved, complete, and automated — but it **only includes days that actually have a schedule.** Infor (the client's HR system of record — scheduling, time clocks, time-off, payroll) **cannot clear/delete a previously-imported schedule day on its own** before importing a new export.
- **The resulting bug:** if a schedule exports Mon–Fri, then a manager moves that employee's Friday shift to Saturday in Unifocus, the next export contains Mon–Thu + Sat — **Friday is simply absent from the file, not explicitly cleared.** Infor doesn't remove Friday on its own; it just adds Saturday. The employee now shows scheduled for **six days** in Infor, not five.
- **Why it matters:** Infor's time clocks validate punches against the schedule. A day that's wrongly still "scheduled" but never worked shows as a no-show/exception. Uncleared exceptions **delay payroll processing.**
- **The client's request:** have the Unifocus schedule export include **all seven days of the week**, every time — not just days with an active shift. Unscheduled days would carry an **"OFF" code, 00:00–00:00.**
- **Midnight-crossing edge case:** if a scheduled shift crosses midnight and the *next* day has no shift, that next day should also get the same 00:00–00:00 "OFF" coding — not be left ambiguous.
- **Open on the exact mechanism:** the specific code/format for "OFF" days may end up different between the property and Unifocus's interface team — the core ask is just that all seven days appear in every export, one way or another.

---

## Ground Transportation

**Not yet booked as of 9/19/26 — Pete plans to reserve it this weekend.** Prior trips used **Miramar Transportation Services** (reservations@mtsbahamas.com, mtsbahamas.com) for Baha Mar airport/property transfers — searched Pete's Unifocus inbox for a current confirmation and found none; the only matches were two November 2025 trip confirmations. Once booked, watch for a "Trip Confirmation" email from that sender (it historically cc's `pcastellano@unifocus.com` directly, so it should surface here once arranged).

**Email-on-file check, worth doing during this weekend's booking:** the Nov 2025 MTS confirmation was cc'd to "peter.castellano@gmail.com" — **not a real address**, Pete's actual Gmail is `pete.castellano@gmail.com`. There may be other stale/incorrect addresses (`peter.a.castellano@outlook.com`, possibly `pete@platinumworkforcestrategies.com`) still on file with Baha Mar/Hyatt/MTS from the personal-to-Unifocus identity transition period. Worth confirming the correct email is on file when making this booking, so the confirmation doesn't go somewhere unmonitored.

**Backup option, given 9/19/26:** **Joseph Limousine Service** — Joseph Abraham, Nassau, Bahamas. Mobile: (242) 423-3988. Email: abrahamjoseph702@gmail.com. A personal/local contact, not a corporate booking system like MTS — useful fallback if MTS falls through or the timing is too tight to arrange formally.

**Booking approach, per Pete (9/19/26):** book the estimated 8 AM–5:30 PM window now rather than waiting on Kim/Brian's exact confirmation — the same way an airport pickup service tracks a flight, a professional cruise-port operator like MTS tracks the ship's actual arrival/departure and adjusts pickup timing accordingly. Kim/Brian's confirmation is still useful context, just not a blocker for booking.

**⚠️ The real risk, per Pete (9/19/26): missing the ship's departure — not a symmetrical risk with arriving early.** A late return isn't a minor inconvenience like a missed flight; the ship sails without you, and Kim (and the rest of the family) are already aboard. **Build in a real buffer before the 5:30 PM departure** rather than timing the return to MTS's tracked estimate exactly — end the property visit with margin, not right up against the deadline.

## Open Items

- [ ] **Book ground transportation for the 9/23/26 Nassau port stop** — this weekend, per Pete. Book the estimated 8 AM–5:30 PM window with MTS now; they track the ship's actual times, same as an airport service tracking a flight.
- [x] Confirm who "Nicola" is (role, property, correct spelling) before or during the visit. **Resolved 9/19/26: Nicola = Nicola Murgia, nicola.murgia@bahamar.com, +1 242-359-1042** — existing contact from prior scheduling/rooms-forecast threads (Nov 2025).
- [ ] **Reconfirm the true Nassau port times** — the 8 AM–5:30 PM window on file is from an unofficial third-party app, not Disney's own itinerary. Pete will be with Kim and Brian (son-in-law) by tomorrow morning (9/20/26) — both are the trip's actual planners and will have the real details.
- [ ] Casino introduction: wait for Nicola/Valquir's read before approaching casino leadership directly — don't go around them.
- [ ] Confirm with Ahmed Chadid (per the original 9/11/26 note) whether RMSOPS-12810 is actually Pete's to run with before committing further to it in front of the client.
- [ ] Log outcomes of this visit (who was actually met, casino introduction status, any new commitments) once it happens.

---

## Related Files

- [Baha Mar Client KB](kb.md) — RMSOPS-12810 in Tickets table
- [Baha Mar Casino — Prospecting Follow-Up Email](2026-09-02_casino-prospecting-followup-email.md)

---

*© Peter A. Castellano. All rights reserved.*
