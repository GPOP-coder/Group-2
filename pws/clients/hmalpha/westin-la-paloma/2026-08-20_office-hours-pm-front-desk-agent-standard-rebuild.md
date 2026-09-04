<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Thursday PM Office Hours (8/20/26): Front Desk Agent Standard Rebuild

**Date:** August 20, 2026, PM
**Attending:** Same unidentified Rooms/Spa/Security manager as the [preceding conversation](2026-08-20_office-hours-pm-hmalpha-ownership-and-culture.md); Pete Castellano.
**Source:** Raw voice-memo/session transcript, rough auto-transcription with crosstalk, not cleaned verbatim; structured below.
**Related:** Directly extends the [Budget vs. Standards Sign-Off session](2026-08-20_office-hours-am-budget-vs-standards-signoff.md) from earlier the same day (same Front Desk Agent ~2,300-hour budget shortfall finding) and echoes the same-day [HMAlpha weekly call](../2026-08-20_weekly-hma-call-notes.md#westin-la-paloma--petes-live-update) discussion of Fabrizio's sign-off hesitation.

---

## 1. Foundation Review — Reconstructing Steve's Original Work

- Pete pulled up Steve Carrell's original property-profile/budget spreadsheet to show where the current Front Desk standard actually came from — explicitly credited to Steve, not framed as a mistake.
- **At the time Steve built this, Front Desk wasn't yet running on a real labor standard** — it was still driven by a flat productivity number, matched against budgeted volumes (occupancy/arrivals, flexed by day across the full year). Steve got the resulting hours to within **~2% of budget** using that productivity-match approach — a different method than a true standard, but landing in roughly the same place.
- **Root cause of the current gap, confirmed directly:** the original budget had a **Night Supervisor** line, which is now run as an **Overnight Agent** instead — those hours shifted. Separately, a **Rooms Controller** position was **never in the original budget at all** ("it was closeted") — when the position was created, its hours were carved directly out of Front Desk rather than being a true incremental budget add. This is the same mechanism already documented in [the AM budget-vs-standards session](2026-08-20_office-hours-am-budget-vs-standards-signoff.md#3-️-real-finding--front-desk-agent-standard-is-materially-short-of-budgeted-hours).

## 2. Standard Set Housekeeping — Backup Before Editing

- Before making changes, Pete made a copy of the **Front Desk Agent standard** for safekeeping — explicitly framed as part of the same "this is what sign-off actually represents" teaching moment (i.e., a defensible before/after record).
- **Some live confusion about which standard set was actually being edited:** the attendee referenced an email Pete had sent Fabrizio the prior Saturday using the word "granular," raising the question of whether that was a separate standard set. Resolved live: **the edits were made to "Master"** (the live, in-use standard set) — a backup of Master was kept, not a switch to a different set.

## 3. Standard Changes Made Live

- **Removed a stale/duplicate AM shift** (a redundant "another agent" shift at 225 departures on the 7:00–3:30 shift) — no longer needed.
- **Extended phone-agent coverage to the PM shift (3:00–11:30):** the property already ran a "1 no matter what" phone agent standard in the AM at 20%/96+ occupied rooms; this same always-on phone coverage did not previously exist for the PM shift. Added it as a constant (1-to-infinity), matching AM/PM parity. **Confirmed as a small change in practice** — occupancy rarely drops below the threshold where it would matter (fewer than 10 times a year).
- **Reworked the arrivals-based breakpoints for a mid/PM shift:** removed an old breakpoint (110 arrivals) and replaced it with a new middle breakpoint (125 arrivals), then added a higher breakpoint (150 arrivals, expressed as a range, following Steve's existing range-based convention: e.g. "1–149" then "150+") to trigger a second closing shift on unusually high-arrival days. Confirmed against the last three weeks of real data before finalizing (there were, in fact, days that hit the higher threshold).
- **Added a new shift criterion based on Occupied Rooms (not arrivals/departures) for the midday shift (12:00–8:30):** rationale — guest questions/requests (not just arrivals/departures) scale with how many rooms are actually occupied, since more occupied rooms means more guests present generating requests (families, activity questions, etc.), independent of that day's arrivals/departures volume. Empirically tested against the last several weeks of actual occupied-room counts to calibrate the threshold — settled on **~340 occupied rooms (~70% occupancy)** as the trigger point, after testing 375/400 first and finding those less representative of when the extra coverage was actually needed.
  - **Aside, not an action item:** discussed that actual in-room guest counts are chronically undercounted (guests routinely under-report room occupancy to avoid per-person resort fees), which limits how precisely occupied-guest-count-driven staffing could ever be modeled — flagged as a known data-quality ceiling, not something to fix in this session.
- **Supervisor coverage adjusted:** discovered the existing standard carried a supervisor-driven shift add (~75 departures breakpoint) on the PM shift for all 7 days, but the supervisor actually only needs to be modeled as an *additional* body on **Sunday and Monday PM** specifically — on other days the supervisor is already functioning as MOD (covering for the salaried manager at night) rather than serving as extra front-desk coverage on top of the manager. Removed the redundant add for the days where it wasn't real coverage; kept the Sunday/Monday PM add. AM supervisor changes were left as already covered/correct.
- **Considered but did not fully resolve:** whether to delete or simply raise a low-utilization departures breakpoint (real equivalent ≈214–215 departures) that almost never triggers (~2 shifts across the last 3–4 weeks) — decided against outright deletion in favor of keeping the *option* open for an unusually high checkout day, discussed raising the effective trigger toward ~300 departures instead of removing it entirely. **Not fully finalized in this session — worth confirming the final threshold value landed on.**

## 4. Testing Methodology — Two Ways to Regenerate Standard Hours

- **Method 1 (scoped/precise):** Labor → Actuals → Generate Standard Hours, filtered to a specific date range and specific job (Front Desk Agent only) — lets you test a single change in isolation without touching the rest of the property's data. Recalculate KBIs afterward. Pete explicitly modeled this for the attendee so she could reproduce it herself.
- **Method 2 (system-wide):** Administration → Task Schedule/Setup → run the "Generate Standard Hours" task manually ("Run Now") — this regenerates the **entire property**, several weeks back, and runs as a system user rather than the logged-in person. Pete noted this is the **only way to trigger some processes at all** (example given: Import Forecast KBI has no other UI entry point — it can only be run via this task-scheduler screen).
- Confirmed both methods produce the same underlying result; Method 1 is for isolated testing, Method 2 is the "just run everything" option.
- **Testing loop used throughout the session:** make a standard change → regenerate standard hours (scoped) → recalculate KBIs → pull the Weekly Labor Summary report (Rooms → Front Office, prior complete week) → compare resulting standard hours against actuals → adjust again as needed. Repeated multiple times as each shift/breakpoint change was tuned.

## 5. Standard-vs-Actual Reconciliation — Distinct From the Budget-vs-Standard Gap

- **Important distinction surfaced in this session, separate from the AM session's finding:** the AM session found Front Desk's **standard is short vs. the *budget*** (~2,300 hours). This PM session, using the **Labor Productivity Report**, found the opposite-flavored problem in a different comparison — the **standard's productivity factor (0.32) is running high vs. actual usage (0.242 actual, most recent complete week)** — i.e., the standard as currently built may be generating *more* hours than what's actually needed day to day, even though it's simultaneously short of the original budget figure. Both things can be true at once (the budget itself may have been set at an unrealistic level, independent of whether the standard matches real operational need) — **don't conflate the two comparisons when explaining this to the property or in a status report.**
- Root cause for the standard running high, reconfirmed: the artificially-added Rooms Controller hours (never budgeted, pulled from Front Desk) are inflating the standard beyond what real Front Desk operations need.
- **Three most recent complete weeks reviewed against the revised standard:**
  - **Week ending 8/14 and the week before it:** running **short by roughly 70 hours** (~15 shifts) combined — attributed directly to approved time-off requests exceeding real staffing slack, not a hours-availability problem. Attendee acknowledged this directly: "we have the hours, we're just letting too many people have time off."
  - **Week ending ~7/31 (three weeks back):** numbers were a bit tangled live in the discussion (figures cited included +30, -50, -80, and a net -7 across different sub-comparisons) — **treat these specific figures as unreliable/imprecise from the raw discussion; the qualitative conclusion (running close to standard, normal week-to-week variance) is what's confirmed, not the exact hour counts.** Worth re-pulling this week's actual numbers cleanly if a precise figure is ever needed.
- **Overall conclusion, agreed by both:** the revised standard is not claimed to be 100% accurate, but is a real improvement over the prior version and reasonably close to both budget and actual usage. Framed explicitly as directionally better, not a finished/perfect product.

## 6. Standards Sign-Off — Same Conversation as the HMAlpha Call, Independently Delivered

- Pete told the attendee directly that **Fabrizio has not signed off** on the standards, and that he'd already spoken with Fabrizio about it one-on-one.
- **Pete's own framing (delivered independently of, but consistent with, the Ralph/Devon discussion on the same day's HMAlpha weekly call — see [that file](../2026-08-20_weekly-hma-call-notes.md#westin-la-paloma--petes-live-update)):** compared signing off to signing a traffic ticket — signing doesn't mean agreeing the standard is perfect forever, it means acknowledging the work was done, reviewed, and discussed. Explicitly **not** the kind of sign-off some organizations use to lock a property into a standard "forever."
- Noted for comparison: reworking the Front Desk Agent standard live in this session took **roughly the same amount of time** as when Director of Front Desk Abigail Edwards originally built it out with Steve Carrell.

---

## Open Items From This Session

- [ ] **Confirm the final resolution on the low-utilization departures breakpoint** (~214–215 real departures) — session discussed raising it toward ~300 rather than deleting it, but didn't finalize a number.
- [ ] **Re-pull clean actual-vs-standard hours for the week ending ~7/31** — the live figures cited were inconsistent; get a clean number if this week is ever referenced again.
- [ ] **Confirm the Rooms Controller position's long-term budget treatment** — currently unbudgeted hours are structurally inflating the Front Desk standard; ties directly to the open item already tracked in the [AM budget-vs-standards session](2026-08-20_office-hours-am-budget-vs-standards-signoff.md#open-items-from-this-session).
- [ ] Consider whether under-reported in-room guest counts (resort-fee avoidance) is worth raising as a data-quality issue for future occupied-rooms-driven standards, portfolio-wide, not just at WLP.

---

## Related Files

- [Westin La Paloma — Property KB](kb.md)
- [HMAlpha Ownership Structure & Culture Conversation (same session, same attendee)](2026-08-20_office-hours-pm-hmalpha-ownership-and-culture.md)
- [Office Hours AM, Part 4 — Budget vs. Standards Sign-Off](2026-08-20_office-hours-am-budget-vs-standards-signoff.md)
- [HMAlpha Weekly Call Notes, 8/20/26](../2026-08-20_weekly-hma-call-notes.md)
- [HM Alpha Client KB](../kb.md)

---

*© Peter A. Castellano. All rights reserved.*
