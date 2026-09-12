<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# RWBHM — Butler Standard Review Call — August 12, 2026

**Time:** 3:00–4:00 PM
**Attendees:** Emre Kenan (DOF, Rosewood Baha Mar), Sherrell Sullivan (Director of Rooms, Rosewood Baha Mar — transcript auto-labels her "Cheryl," almost certainly a transcription mishearing of "Sherrell"), Pete Castellano
**Source:** Meeting transcript (Teams-generated), pasted by Pete 8/13/26
**Context:** Direct technical follow-through on the Rooms Division restructuring thread — see [2026-07-20_bnq-hours-call-notes.md](2026-07-20_bnq-hours-call-notes.md) §7 (origin) and [2026-07-23_rosewood-butler-restructuring-call.md](2026-07-23_rosewood-butler-restructuring-call.md) (numbers locked). This call is where Pete actually started building the Unifocus config.

---

## Personal note (context, not for KB)

Opened with catch-up: Kim's 1¾-year post-transplant checkup went very well — Emre asked directly, Pete described her as "back to normal," heart better than his. Cruise planned; possible in-person visit with Emre in November. Pete previewed upcoming travel: Tucson/Westin La Paloma next week, just back from Mohonk Mountain House (New Paltz, NY) — described it as privately/family-owned ~180 years, adopted Unifocus ~2 years ago, currently cleaning up post-turnover issues.

Emre also gave useful context on *why* Rosewood is doing this: not primarily a competitive move against SLS/Grand Hyatt at the Baha Mar campus — it's a **brand-wide Rosewood service-tier initiative**. Other Rosewood properties already have or are getting the same all-butler structure (properties in Mexico — Emre said "Montanas or Mayakoba," likely Rosewood Mayakoba — and possibly the new London hotel). Rationale in his words: Rosewood charges a premium rate and needs to visibly deliver more service value to justify it.

---

## Headcount: 23 senior + 19 junior (resolved)

The **7/23/26 call** locked in **22 senior + 16 junior** butlers.
**This 8/12/26 call** uses **23 senior + 19 junior** (14 of the 19 junior transferring from concierge/guest relations, 5 new fills) — total 42.

**Resolved via [Emre's 8/11/26 pre-call email](2026-08-11_emre-precall-email-butler-standard.md):** his independent FTE math (72% occupancy × 1.5 hrs/room × 1.4 staffing factor) lands on exactly **42 FTE**, matching this call's 23+19 split, not 7/23's 22+16. Treat 23/19/42 as the current figure. Root/junior rate discussed as **~$15–15.50/hr**.

---

## Confirmed: this is a labor restructuring, not a net headcount cut

Sherrell's opening question: is this adding labor or displacing other jobs? Emre: "more or less" the same people — a restructuring/consolidation, not a net cut. Junior and senior butlers perform **identical tasks**, differ only in pay rate (confirms 7/23 call).

---

## Department / Job Code Decisions

- **Guest Relations Coordinator (job code 1629) is eliminated** — folds into the new junior butler structure.
- New "Guest Relations 2.0" grouping: **decided to build under existing Department 108**, not create a brand-new department number — 108 already holds some now-empty guest-service-associate/concierge job codes from a prior scrambled structure; those get sorted out later, separately.
- **Only one new job code is actually needed**: a junior butler job under **Department 107** (Butler stays 107). Senior butler code is unchanged.
- Working placeholder name used live on the call: **"Butler 2"** (Pete's own suggestion, deliberately generic — real name/code still TBD). Pete built this placeholder live during the call with a mocked/unknown code, all correct attributes except the real code.
- **Butler Coordinator** (currently filled) — job eliminated; incumbents move to either Butler or the new Guest Relations structure.
- **Exclusive Resorts Butler** — no longer used, no labor standard exists for it; expect it to keep surfacing as a variance/exception in reporting until formally cleaned up.

### Access control — action item before job goes live
Pete flagged: once the new junior butler job is created, whoever currently has blanket access to "Butler" will automatically see the new job too unless access is explicitly split out to individual jobs first. **Owner of this audit corrected 8/14/26: Megan Knowles will audit current Butler-job access** (not Sherrell, as originally noted on the call) and confirm to Emre once done — Pete will hold off finalizing the job/making it visible until that's done. Plan: create the job now but leave it unchecked/hidden from schedule views until access is cleaned up.

**Status 8/14/26:** "Butler 2" job created live under Dept 107 — Butlers, left empty/unconfigured pending Megan's access audit.

---

## Standard Architecture Decision (Pete's recommendation — locked in on the call)

This is the key technical decision, directly reusing the **Cook I/II/III precedent** (standard lives in one job, hours spent across several):

- **The labor standard will live in ONE job only — senior Butler (107).** Junior Butler gets **no independent standard**.
- **Junior Butler hours are force-filled via permanent schedules in Employee Maintenance** (a permanent schedule overrides the standard), so actuals and schedules land correctly without a second standard to maintain.
- **For Budgeter:** don't try to make Budgeter auto-split hours between senior/junior. Instead, keep the standard unified on Butler and apply a **blended rate calculated outside Unifocus** (based on the senior:junior ratio) when uploading the rate structure — "don't let Budgeter guess."
- **Why:** Pete's explicit reasoning — the 23:19 (or 22:16) senior:junior ratio will not stay fixed over time (attrition, promotions, etc.), and hard-coding a split into the standard itself creates a recurring maintenance burden. Keeping one unified standard and letting week-to-week scheduling flex between the two jobs (using the combined total at the bottom of the schedule editor) avoids having to keep coming back to re-tune the split.

---

## Butler Labor Standard — Redesign Walkthrough

**Current standard (as-is, both butler and — separately — housekeeping room attendant share a related quirk):**
- Complex/legacy ratio structure. Minimum floor around 3–4 shifts even at very low occupancy (Emre to reconfirm whether that floor is still architecturally/physically justified — building layout driven).
- Maxes out at 9 shifts, only reached above 151 rooms occupied.
- Overnight: 1 butler up to 150 rooms, 2 above 150 (breakpoint at 150/151).
- **Rounds up to the nearest 0.2 of a shift** (not 0.5) — deliberate, so a fraction as small as ⅕ of a shift still adds a full person.
- **Forces a 7.5-hour minimum shift length** — this is what prevents the short/fractional last-shift problem. Pete flagged the **same rounding-fraction issue likely exists in the housekeeping room attendant standard** (a little labor added per room/checkout/stayover, distributed into 7.5-hr containers, last shift often comes up short) as a **separate, non-butler follow-up to double-check later**.

**New target ratio:** ~**1 butler per 5 occupied rooms**, i.e. **1.5 labor-hours per occupied room**, applied across the **whole day combined** — not per single shift.

**Shift structure (unchanged from current):**
- AM
- PM/evening
- Overnight
- **Lobby Host** — a separate, fixed, standalone 1-butler shift (~10am–6pm), **outside/on top of** the 1-per-5 ratio, not counted within it.

**Overnight redesign:** currently 1→2 breakpoint at 150 rooms. Live discussion floated **minimum 2 overnight always**, stepping up to **3** at high occupancy (Sherrell suggested 75% as the trigger) — **superseded by Emre's 6:25pm same-day follow-up email, which shows overnight = 1 shift at the floor.** Per Pete's rule that the most recent email rules, treat overnight = 1 at base as current; see `2026-08-12_emre-butler-base-manning-breakpoint.md`.

**Room count confirmed: 224 rooms** (some mid-call confusion with 237/240 floated, corrected back to 224 as the working number).

**Math walked through live:**
- 224 rooms × 1.5 hrs/room = 336 hours/day ÷ 7.5 hrs/shift = **~44.8 (≈45) total shifts/day** at full house under a pure blended 1-per-5 ratio.
- Subtract fixed components: 3 overnight + 1 lobby host = 4 shifts, leaving **~41 shifts** to split between AM and PM at max occupancy.
- Landed on roughly **20 AM / 21 PM** shifts at full house (224 rooms) — meaning each daytime butler effectively covers **~11.2 rooms/shift** (224 ÷ 20), not literally 5 — the 1-per-5 blended target gets diluted once spread across 4 separate shift windows instead of one theoretical mega-shift.

**Next step (Emre's homework, same evening 8/12, ~6–7pm target):** build the actual AM/PM/overnight breakpoint table (how many butlers scheduled at each occupancy band) using this math, and send it back to Sherrell/Pete.

---

## Action Items

| Item | Owner | Status |
|---|---|---|
| Build detailed AM/PM/overnight butler breakpoint table from the 224-room math (~20 AM / ~21 PM / 2–3 overnight / 1 lobby at full house) | Emre Kenan | Delivered same evening, 8/12 6:25pm — base/floor end only (9 FTE); see `2026-08-12_emre-butler-base-manning-breakpoint.md`. Also reveals Lobby Host is conditional (60%/134 rooms+), not fixed as assumed here — mid-curve breakpoints still needed by 8/19/26 config deadline. |
| Audit current access to the "Butler" job in Unifocus; confirm to Emre once split from the new junior job | Megan Knowles (corrected 8/14/26 — Sherrell offered on the call, but Megan is the actual owner) | Not yet done — blocking the new job going live |
| Create junior butler job under Dept 107 ("Butler 2" placeholder, real code TBD); keep it unchecked/hidden until access audit is done | Pete Castellano | ✅ Done 8/14/26 — created under 107-Butlers, left empty pending Megan's audit |
| Build the revised Butler labor standard (1.5 hrs/occupied room blended, redistributed across AM/PM/overnight/lobby per the breakpoint table) once Emre's table arrives | Pete Castellano | Pending Emre's table |
| Confirm 22/16 (7/23 call) vs. 23/19 (this call) headcount discrepancy | Pete / Emre | Resolved via Emre's 8/11 pre-call email math — 23/19/42 is current; one-line confirmation with Emre still worthwhile |
| Reconfirm whether housekeeping room attendant standard has the same short-shift rounding issue as butler | Pete | Separate follow-up, not urgent |
| Other restructured jobs (guest relations associate, etc.) — described as "easier," deferred to a later working session | Pete / Emre | Not started |

**Hard stop:** Sherrell had a hard stop at 4:45–4:50 PM.

---

## Cross-reference

- Originating thread: [2026-07-20_bnq-hours-call-notes.md](2026-07-20_bnq-hours-call-notes.md) §7
- Numbers locked (now superseded — see resolution above): [2026-07-23_rosewood-butler-restructuring-call.md](2026-07-23_rosewood-butler-restructuring-call.md)
- Pre-call prep this call was based on: [2026-08-11_emre-precall-email-butler-standard.md](2026-08-11_emre-precall-email-butler-standard.md) — also has the **November 2026, before Thanksgiving** butler-service go-live date
- Deadline context unchanged: Rosewood's first 2027 payroll budget submission due **end of August 2026**
- Billing: $1,200/day via Unifocus (UF), per `pws/billing/rate-table.md` — confirm whether 8/12 time and the upcoming tomorrow-8am session count against the previously discussed "day of assistance in August" quote, or need separate billing treatment.

---

*© Peter A. Castellano. All rights reserved.*
