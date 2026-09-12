<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — Stephanie Simmons: CI-to-Unifocus Integration & Banquet KBI Process

**Date:** September 9, 2026
**Attending:** Stephanie Simmons (Director of Sales & Marketing), Pete Castellano; brief context from Taylor Walton (Unifocus — configurer, referenced live but not present); a "Mark" mention (GM) as a downstream decision-owner
**Source:** Plaud transcripts `09-09 A_ CI to Unifocus Data Integration and Mapping-transcript.txt` and `09-09 B_ KBI Forecast Process and Labor Standards-transcript.txt` — one continuous working session, two files
**Purpose:** The 1:30pm follow-up session flagged in the 9/8 admin training (`2026-09-08_admin-training-am.md` §5) — walking Stephanie through exactly how CI feeds Unifocus, what she's responsible for, and surfacing real gaps in booking-type/event-type mapping live.
**Note:** Session A's transcript continues past the Unifocus portion (~20 minutes in) into an unrelated internal conversation about an AV vendor contract ("Royal Productions") that appears to have been picked up incidentally when the recorder kept running into Stephanie's next meeting — that content is not Unifocus/PWS-related and is omitted here. A brief stretch of unrelated background audio (celebrity news) at the very end of the same file is also omitted as recorder bleed, not meeting content.

---

## 1. CI File Timing — Confirmed Against the Standard Weekly Cycle

- Unifocus pulls whatever is in CI **once per week**, overnight into Monday (the same import that pulls the rooms forecast). It reads a rolling window through the current two-week-out planning period (e.g., pulled 9/7, covers through 9/18).
- **Only the "top line" is read** — booking type, event type, meal period, cover count. Menu detail (specific dishes) is never read; Pete's framing: "that's fluff" from Unifocus's perspective.
- **Stephanie's actual job, stated plainly:** have BEOs entered in CI — even shell BEOs with just a meal type and headcount, blank menu is fine — **two weeks out, by Friday.** This is what drives everything downstream.
- **Confirmed via Taylor (live, mid-session):** the daily combined CI/Delphi/Envision feed Nicole Mendez set up means **Stephanie does not need to separately send any file** — Unifocus is already pulling it. "That's the benefit of being the third or fourth wave of this" (i.e., this plumbing is now standardized from earlier HMAlpha properties).

## 2. What Actually Gets Imported — Booking Types and Event Types in Use Here

- Property uses: **Local, Group, In-House** (e.g., employee appreciation events), and **Rooms Only** (confirmed in use — the classic case is a rooms-only booking where sales later upsells a reception, and the booking type is never changed to reflect it. This is exactly why Rooms Only has to be mapped even though it looks like it shouldn't need banquet labor — see the parallel Teams-thread discussion in `2026-09-09_taylor-walton-banquet-mapping-teams.md`, where this same mechanic led to confirming Rooms Only → Group).
- Standard event/meal types mapped under both Group and Local (then combined into a single "Total" standard, e.g., Banquet Total Breakfast Continental = Group + Local): three breakfast types, various breaks, two dinner types, three lunch types, "Meeting" (non-food — still generates setup-only labor for chairs/tables), and **receptions at up to three tiers** (no-food/cocktail, light food, heavy — tiers exist mainly to vary culinary/stewarding effort, not just to flag "there's a bar").
- **"Special" booking type discussed:** used by the property for things like a cooking-class-style event; Pete's guidance — since it's not really a meal, map it to Meeting.
- **What's deliberately never mapped:** setup, tear-down, weather hold, 24-hour hold — no labor attached, to avoid double-counting covers that are still "live" under their original event listing.

## 3. The "AA" Booking-Type Mystery — Resolved (Mostly)

- Carried over from the parallel Taylor Walton Teams thread: **AA** and several other booking-type codes (Extended, Multi-Hotel, Multi-Year, plus Group/Local/In-House/Contract) show up across a full year of the property's real BEO history but don't appear in the booking-type field Unifocus has been reading.
- **Root cause identified live:** CI has **two different fields** that both look like "booking type":
  - **Business Type** — only 3–4 broad options (Local, Group, In-House, Contract) — this is very likely the field Unifocus has actually been pulling.
  - **Group Type** — ~10 granular options, including AA and the other mystery codes — this is the field with the real detail sales is actually using.
- **Practical conclusion:** Pete believes Unifocus needs to be re-pointed at (or additionally pull) the **Group Type** field to see the full picture; all ~10 of its options need mapping regardless of how rarely used ("it also didn't make sense that you would use AA, and you did"). Stephanie offered to send Pete a screenshot of the CI field for reference (to pcastellano@unifocus.com). **Not fully resolved in this session** — needs Pete to confirm which field is actually configured on the interface side and correct it if it's the wrong one.
- What "AA" itself stands for was never confirmed (Pete's guess, unconfirmed and half-joking: "AA meetings").

## 4. The Weekly Timeline, Banquet-Specific — Where Confusion Actually Lives

This is the same one-page weekly cycle taught throughout HMAlpha training, but walked through specifically for banquets/CI, correcting a real misunderstanding live:

- **Monday, before ~1am–noon:** CI file pulls overnight; banquet numbers get used (in the future state) to help calculate the outlet/revenue-center forecast — **not yet active at this property** (no capture-ratio banquet-to-outlet linkage built yet).
- **Tuesday, ~11:00–11:30am:** `Generate Projected Hours` / `Generate Schedules` run — **this is the step that actually matters for banquet labor** (chef, banquet setup, banquet service, stewarding). This uses whatever was captured at the single Monday pull, **plus anything manually entered into Unifocus's own Input KBI Forecast screen before this step runs.**
- **Critical point corrected live:** Stephanie initially assumed that if she kept CI updated between Friday and Tuesday, Unifocus would pick up the changes. **It will not — the file is pulled once, and "we don't look at the forecast, anything forward-looking, we don't look at ever again"** after that single weekly pull. Any change that needs to count for that week's labor after the pull has to be **entered manually** in Unifocus (Egg McMuffin menu → Labor Planning → Enter/Input KBI Forecast), not just updated in CI.
- **Practical takeaway for Stephanie:** BEOs need to be genuinely ready in CI by **Friday** (2 weeks out) for the normal case; she has an effective grace window through **Tuesday ~11am** only via manual entry, not because the system re-pulls the file.
- **Possible future enhancement, not yet built:** Pete floated adding a second automated CI pull later in the week for banquets specifically, to reduce reliance on manual entry — something he plans to propose for an upcoming HMAlpha wave, not active anywhere yet.
- **Live validation check:** the current week (starting 9/5) showed only one actual — 50 covers, banquet group breakfast, Saturday — which Stephanie confirmed as correct (matched a small meeting they'd had). A separately-mentioned Northrop Grumman event (9/15–16) had **not yet imported** for the following week as of this session — expected, since mapping/timing were still being sorted live, not necessarily a failure.
- **Lookback/pop-up window confirmed:** the actuals view isn't just "yesterday" — it's a rolling ~21-day window (three weeks back), which is why a same-day "pop-up" booking still gets picked up even though it wasn't visible the prior Monday.

## 5. The Bartender Gap — A Real, Property-Specific Finding

- **Confirmed live: this property has no "bartender" job code and no labor standard that generates bartender labor at all.** Reception tiers exist in the standard (built for future use) but aren't fully in play, and the property doesn't consistently code dinner-plus-bar events as "reception" — a dinner with an added open bar gets entered as "dinner," so no bartender-triggering event type ever fires.
- Current real-world practice: banquet staff manually note in CI "we need a bartender," which has **no connection to any Unifocus labor standard** — it's currently pure manual tracking outside the system Pete is building.
- A manual KBI entry field for "how many bartenders" exists in Unifocus (Input KBI Forecast / Enter Actual KBI) but is **not currently used** and wouldn't help until there's an actual bartender job to assign hours to.
- **Pete's recommendation:** don't overbuild this — either (a) start coding dinner-plus-bar bookings as "reception" so the existing reception-tier standard naturally credits bartender/server labor, even if it occasionally over-credits a light event, or (b) commit to actually using the manual bartender-count field going forward. Pete's own stated preference is (a): automation that's occasionally slightly generous beats a manual field that reliably gets forgotten once the person who set it up moves to another property.
- **Pete is flagging this in his status report** as a genuine configuration gap — explicitly not a criticism of anyone who worked on this property before him, just an accurate finding.

## 6. Actual KBI Entry — Ownership Still Undecided

- **Forecast KBI entry** (what's expected to happen) is confirmed as Stephanie's responsibility — this is the BEO-entry-by-Friday piece.
- **Actual KBI entry** (what really happened, used to judge the standard after the fact) is a **separate, undecided responsibility.** Pete raised a segregation-of-duties point: the department being measured against the standard (banquets/sales) generally shouldn't also be the one entering the actuals that standard is judged against — recommended someone else (finance-adjacent) take this on. Left for Stephanie, Mark (GM), and Sandra (DOF) — referred to informally as "you and [Val]" in the recording (likely a mis-transcription of "Val," i.e. Valeria Ruvalcaba, HR — not confirmed) — to sort out. Stephanie confirmed she'll own the BEO/forecast side; the actuals question she'll raise with the group.

## 7. Access Granted

- Stephanie was walked through setting her own password/security question on her existing Unifocus login (username unchanged) — self-service going forward, no need to loop in anyone else for password resets.
- Stephanie now has access to the **Input KBI Forecast** screen (previously only Val, Mark, and Sandra had it) — view access, with permission to edit if needed.

---

## Open / Unresolved Items

- [ ] **Confirm which CI field Unifocus is actually reading for booking type** (Business Type vs. the more granular Group Type) — likely reading the wrong one; Pete to verify and correct with the interface team if so
- [ ] Map all ~10 Group Type options (including AA and other rarely-used codes) once the correct field is confirmed
- [ ] Decide bartender-labor approach: recode dinner+bar as "reception," or commit to the manual bartender-count field — currently neither is happening
- [ ] Build a bartender job code and labor standard (doesn't exist at all currently)
- [ ] Decide who owns **Actual KBI entry** (Stephanie/sales vs. finance vs. Sandra/Mark) — segregation-of-duties question raised, not resolved
- [ ] Confirm Northrop Grumman (9/15–16) and other upcoming-week bookings actually import correctly once mapping is finalized
- [ ] Consider proposing a second weekly CI pull (later in the week) as a future HMAlpha wave enhancement — not yet built anywhere
- [x] Confirmed: Stephanie's Friday, two-weeks-out BEO cadence is the correct, sufficient practice for the forecast side
- [x] Confirmed: Rooms Only is legitimately in use at this property and must be mapped (ties to the same-day Taylor Walton thread)

---

## Related Files

- [Banquet/CI Mapping Teams Thread with Taylor Walton, 9/9/26](2026-09-09_taylor-walton-banquet-mapping-teams.md)
- [System Admin Training — AM, 9/8/26](2026-09-08_admin-training-am.md) — original CI/banquet session-scheduling flag
- [Manager Training, 9/9/26](2026-09-09_manager-training.md)
- [Marriott Del Mar — Contacts](contacts.md)
- [HM Alpha Client KB](../kb.md)
- **General methodology extracted from this session:** [PWS Foundations Doc 3 — Implementation & Analysis Methodology](../../../foundations/03-implementation-analysis-methodology.md) § "The CI/EMS Integration Playbook" — the booking-type mapping math, the EMS field gotcha, single-pull timing architecture, segregation of duties, and the missing-bartender-standard pattern are documented there as portable, cross-property methodology, not Marriott-Del-Mar-specific.

---

*© Peter A. Castellano. All rights reserved.*
