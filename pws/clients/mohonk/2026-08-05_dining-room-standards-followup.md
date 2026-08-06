<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Main Dining Room Standards Follow-Up

**Date:** August 5, 2026, 9:00 AM
**Location:** Mohonk Mountain House
**Context:** Part of Pete's onsite visit week (Aug 2–7, 2026). This is the "Wednesday 8/5, 9:00 AM — Dining room standard follow-up" session scheduled live at the end of the [8/4/26 F&B session](2026-08-04_fnb-labor-standards-transcript.md#next-meetings-scheduled-live-in-the-session), continuing the server/runner rebalancing exercise from that call.

**⚠️ Transcript incomplete.** The source transcript pasted into this session was cut off mid-sentence (~50,000-character limit) partway through the Banquet Server Assistant discussion, item 8 below. Everything captured here is confirmed from what was received; if Pete has the rest of the recording/transcript, paste it in a follow-up to complete this file.

## Participants
- **Pete Castellano** (PWS)
- **James Danks** (Director of Dining Services)
- **Lou Petruzzelli** (budget authority)
- **Bron Walis** (IT Director)
- **Patrice Huart** (Director of Food and Beverage)
- **Casey Dow** (Software Specialist)

---

## 1. Main Buffet Attendant — Range Revision
- **Problem:** the standard's middle volume range was under-crediting hours — James was staffing 5–6 buffet attendants but the standard was only generating standard hours for about 3, because the range breakpoints hadn't kept pace with stations added since the standard was originally built.
- **Low end preserved:** below ~124 covers, 3 attendants is fine — this reflects a genuine fixed setup cost (buffet has to be fully set up regardless of volume; James is "adamant" this floor stays).
- **Middle/high end revised:** breakpoints moved up so that higher real-world headcounts (up to 5–6) actually get credited — exact final numbers weren't nailed down cleanly on the recording (audio references ~225/250/350 as candidate breakpoints); **verify the saved standard directly in Unifocus** rather than relying on this transcript for the final values.
- Extra stations now running that didn't exist when the original standard was built: carving station (lunch), pancake/waffle station (breakfast) — confirmed as the root cause of the range being stale, not new padding.

## 2. Brunch Buffet — Separate Volume Bands
- Brunch combines breakfast + lunch stations (waffles, tacos in place of pancakes, carving, ice cream) — structurally different from a weekday buffet, needs its own logic rather than inheriting the breakfast+lunch standard as a simple sum.
- James typically staffs 8–9 for brunch; agreed the existing range was over-generating slightly at the top end.
- **Revised approach:** split into two bands instead of a single open-ended range — roughly 1–399 covers → one tier (~7–8 people), 400+ → the top tier (~9 people). Under-250 brunches are effectively theoretical — Mohonk has never run a weekend brunch that low.

## 3. Kids Buffet — New Standard Created
- **No standard previously existed** for this — it's been running since mid-June uncaptured.
- Job: PM Buffet Attendant, seasonal — currently running daily but is meant to toggle on/off based on a kids-count threshold (**~30–40+ kids**).
- Shift: **4:00–10:00 PM** (staff clock out ~9:30 PM after an unpaid 30-min break) — see the break-threshold discussion in item 4, since this shift sits right at the same 5.5-hour boundary.
- Standard built: **2 attendants** base (Non-Flow, Beginning distribution); scales to more at higher thresholds (~40–45 kids → additional attendant). One-off spikes (e.g., a 150-kid night needing 3) were noted as outliers, not built into the standard.
- **Linked to the Kids Count KBI** live during the session, replacing the prior state where kids covers were tracked but not driving any labor standard.

## 4. Server Dinner Shift Length / Break Threshold — Investigated, Deferred
- Cross-checked whether the Main Dining Room dinner server shift crosses the 5.5-hour break threshold (New York work-rule logic: work ≤5.5 hrs with no mandated break; a 6-hour scheduled shift would need a 30-min unpaid break added, pushing it to 6.5 hrs actual).
- **Confirmed clean:** the actual dinner server shift is 5 hours — under the threshold, no break-logic problem.
- **Open, deferred as a higher-level question:** the underlying break-threshold logic itself, and how it interacts with *other* short shifts across the property (this surfaced because the Kids Buffet shift above sits right on the same boundary) — Pete flagged this needs a broader look at where else it might be creating unintended 30-minute gaps, not something to fix piecemeal per shift.

## 5. Founders Brunch — New Job Code + New Standard
- **Background:** Founders Brunch used to run as an Assignment; assignments were cleaned up/retired during Pete's earlier remediation work (see [kb.md — Implementation History](kb.md#implementation-history)), which is why no standard currently exists for it.
- **Founders Buffet Attendant:** job code already exists (found live, nested under Main Dining Room's Buffet Attendant structure) — decided to leave it there rather than relocate it, since there's no separate Founders-specific attendant job code. Added a labor standard directly: shift **9:00 AM–3:30 PM** (6.5 hrs incl. break), Non-Flow/Beginning distribution, base case **3 attendants**. **ADP code confirmed: 12800091, Active** (Pete's screenshot of Mohonk's ADP Validation Tables — Employment Profile > Job Title).
- **Founders Buffet Supervisor:** **did not exist as a job code at all** — created live in Labor Structure under Dining Room Founders. Standard: same 9:00 AM–3:30 PM shift, always **1 person**. **✅ Confirmed: ADP already had it — code 12800091 (Attendant) / 12800092 (Supervisor), both Active.** The "no actuals until October" caution below was based on the assumption ADP needed to be set up from scratch; that assumption was wrong — both codes were already live in ADP, so actuals should start flowing on the next normal interface cycle, not October.
- **Cover-count source confirmed consistent:** both the forecast (James enters manually on Tuesdays, same as Main Dining/Granary) and the actuals draw from the same Founders KBI — verified live via the Weekly Labor Summary. Currently only dinner runs (3 days/week); when Founders Brunch is active (fall weekends + the Thanksgiving–Sunday holiday stretch), James enters real counts; **0 on weeks it's closed**, which is the seasonal on/off control mechanism (same pattern as Kids Buffet above).

## 6. Lakeview Breakfast — Flat Standard → Volume-Driven Range
- Currently a **flat 2-person standard** regardless of volume, but James is actually running up to **4** on busy mornings — a real, acknowledged gap between the standard and operational reality (confirmed running this way for 2–3 years).
- **Location/nature:** the grab-and-go breakfast area near the lobby/central stairs (roll-up sandwiches, coffee) — not the same as in-room dining/Room Service (see item 7). Cover counts are estimated by rollup consumption (imprecise, ranges from ~115 to ~325 covers on record) rather than an exact count.
- **Agreed direction:** move to a volume-driven range using **house count / overnight guest count** as the driver rather than meal-period cover estimates — more consistent and it's what actually predicts guest flow through the area (unlike Main Dining forecasting, where using house count as a proxy was rejected in favor of actual covers).
- **Placeholder breakpoints set live** (explicitly marked as illustrative, not final, pending real data): **2 / 3 (~175+) / 4 (~225+)**.
- Two existing shift patterns are already in use there — a short one (setup-adjacent, starts ~7:00 AM) and a longer one (~5:30 AM–1:30 PM). The short shift is the one meant to flex/multiply with volume; the long fixed shift stays untouched.
- **Lou's flag — must be entered in two places:** raising this standard genuinely adds labor hours versus the flat model that's been running for years — this has to be reflected in **both** the Unifocus standard **and** next year's manual budget submission; one doesn't automatically update the other.

## 7. Room Service Attendant (true in-room dining) — Reviewed, Not Changed
- Distinct from Lakeview (item 6) — this is actual in-room dining, amenities, and banquet-related breaks/setups.
- At the department level, roughly on-budget: **over on the Room Service staffing-guide overall**, but specifically **under-standard on the "Room Service Attendant" line item**, netting close to even.
- Current staffing pattern: baseline ~3–4/day (split AM/PM coverage) plus a 5th added Friday–Sunday; the department supervisor role also covers phones/other duties, not purely supervisory.
- A lean department with no meaningful volume-linked KBI/cover driver currently tied to its flat portion of the standard — **not resolved or changed live**, explicitly deferred to be revisited "when we get to banquet."

## 8. Banquet Server Assistant Strategy (philosophy discussion, not a standard change) — TRANSCRIPT ENDS MID-DISCUSSION
- James's multi-year strategy: use lower-cost banquet/dining server assistants (~$18–20/hr) to absorb setup, breakdown, and running work on large banquets, reducing how many full servers (~$27–30/hr) are needed — same cost-shift logic already tracked in the [8/4 session, item 6](2026-08-04_fnb-labor-standards-transcript.md#6-server-vs-support-role-cost-strategy).
- Distinguishes Mohonk's banquet labor model from a simple "house person" model: for offsite banquet locations, dining room staff personally handle the full logistics chain — gather supplies, load the truck, transport, unload, serve the event, clean up, pack out, return. Long shifts result (a wedding shift can run 12 hours).
- Separate, already-built labor standards exist for **outdoor cookout/off-site lunch** (~7 hrs, accounts for the full offsite logistics chain) vs. **in-house venue events** like the East Dining Room (~4 hrs) — confirmed previously built out with Brooke, not new.
- Pete raised (as a future audit idea, not this session's task): walk through whether every banquet's full lifecycle — setup → cook → serve → cleanup — is actually captured and mapped to the correct labor standard end-to-end, rather than assuming it is.
- **Transcript cuts off here** mid-sentence, discussing whether every banquet import correctly reflects that full lifecycle. Resume/complete this file if more of the recording becomes available.

---

## Decisions / Changes Made Live
- Revised the Main Buffet Attendant volume ranges (low end held at 3 for ≤124 covers; middle/upper breakpoints raised to actually credit 5–6 attendants at higher volumes — confirm final saved values in Unifocus).
- Split Brunch Buffet into two volume bands instead of one open-ended range.
- **Built the Kids Buffet standard from scratch** and linked it to the Kids Count KBI (previously uncaptured labor).
- **Created the Founders Buffet Supervisor job code** (new — first time this position exists in Unifocus) and built its standard.
- Added a labor standard for the existing Founders Buffet Attendant job code (previously had the job code but no standard).
- Set placeholder volume-driven breakpoints for Lakeview Breakfast, replacing the flat 2-person standard.

## Open / Unresolved
- **Confirm final saved buffet-attendant breakpoints directly in Unifocus** — the live discussion had some numeric ambiguity in the recording.
- **Server/short-shift break-threshold policy** — the 5.5-hour boundary issue flagged in item 4 needs a broader look across the property, not just Main Dining and Kids Buffet.
- **Lakeview Breakfast standard change must also be reflected in the manual budget submission** (Lou's flag) — a real added-labor-cost item, not just a Unifocus config change.
- **Room Service Attendant** — deferred to a future banquet-focused session.
- **Banquet lifecycle audit** (setup → cook → serve → cleanup mapping) — Pete's future-audit idea, not started.
- **Rest of this session's transcript** — not yet captured past the point above.

---

*© Peter A. Castellano. All rights reserved.*
