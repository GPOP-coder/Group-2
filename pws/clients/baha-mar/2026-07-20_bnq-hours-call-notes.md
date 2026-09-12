<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Rosewood BNQ Hours Call — July 20, 2026
**Time:** 10:30–11:10 AM (Teams, organized by Ahmed Chadid)
**Attendees:** Ahmed Chadid (Unifocus CSM), Pete Castellano (assisting at Ahmed's/Emre's request — see [[baha-mar kb.md]] Roles & Ownership), Emre Kenan (Rosewood, Director Finance Business Partner), Megan Knowles (Rosewood)
**Source:** Auto-transcript, beginning cut off — Pete can fill in missed opening detail if needed.

---

## 1. Banquet Budget KBI Fix — Final Workflow Confirmed

Resolves the Rosewood BNQ Hours / reception KBI issue tracked in `pws/clients/baha-mar/kb.md`, Priority/Next Steps item 17.

- **Emre's homework:** Pull last year's full-year Delphi history for each meal period (Breakfast/Lunch/Dinner/Reception) and calculate what percentage of the total each sub-type actually ran (e.g., what % of total breakfast was Plated vs Buffet vs Continental last year). Use that to set/update the percentage splits going forward — not guesses.
- **Going forward, Rosewood only maintains covers at 4 KBIs: #5100 (Bkfst), #5200 (Lunch), #5300 (Dinner), #5400 (Reception)** — entered as total covers regardless of Group vs Local. Once those 4 numbers are in, the existing percentage formulas populate everything downstream (Plated/Buffet/Continental for meals; Cocktail/Light/Full/Heavy for Reception).
- **Group vs Local is only relevant for forecasting outlets week-by-week** — once Revenue Centers are generated, Group/Local is never needed again. Confirms the 7/20 resolution already in kb.md item 17.
- **What Emre is actually changing:** only the *percentages* inside the existing KBI structure — not the KBI codes/structure themselves. "You are just modifying the decimal to reflect a total of 100% when you combine both segmentation [Box/Buffet/Plated]."
- **Current reception split example given live:** Cocktail was ~94% at Rosewood at the time it was set up; nothing allocated to Light or Full. Ahmed's explanation: those percentages were set based on what Delphi was actually reporting at setup time — some reception types (Light, Full, Heavy) exist as standardized KBIs across the whole system regardless of whether a given property uses them; if Delphi doesn't distinguish them, the percentage just sits at zero.
- **Reception granularity — labor-effort definitions (Ahmed):**
  - **Cocktail:** no food, only beverage — need servers, generally not culinary.
  - **Light:** some culinary.
  - **Full:** more culinary than Light.
  - **Heavy:** more still, but typically less than a full buffet dinner.
  - It's fundamentally a **proportionality/labor-effort scale**, not a strict category — ties directly into the labor standard, not just revenue reporting.

## 2. Delphi Granularity History — Why Some KBIs Are Empty

- At some point before Pete's return to this project (~1 year ago), someone on the Delphi side **reduced Delphi's event classification granularity** down to roughly just Breakfast/Lunch/Dinner (possibly a general Reception bucket too) — losing the detail Unifocus was built around.
- Pete restarted an effort ~1 year ago to **revitalize granularity back to:** Plated / Buffet / Continental / Boxed (meal periods) and Heavy / Medium(Full) / Light / Cocktail (reception) — matching Unifocus's original configuration.
- **Status of that effort is unclear/incomplete** — Megan has been working on getting Delphi's classifications restored, but needs confirmation the *exact descriptions* match what's mapped in Unifocus.
- **Critical constraint — exact-text mapping:** Delphi event classification descriptions must match Unifocus's mapped text **exactly**, or the mapping breaks (e.g., "Continental Breakfast" renamed to "Breakfast Continental" would silently stop mapping).
- **Remapping cost is expensive on purpose to avoid:** any single Delphi classification rename requires remapping **at minimum 4 KBI mappings per property** (roughly Group+Local × current/some other split), and must be done across **all 4 properties** (Rosewood, SLS, CTF, Grand Hyatt) — so one rename = ~16 mapping changes minimum. **Strong preference: get Rosewood's Delphi classifications to match Unifocus's existing config, rather than changing Unifocus to match a new Delphi naming choice.**

## 3. KBI Cleanup — Confirmed Not Needed (ties to "wild-west KBIs" cleanup item)

Ahmed confirmed several KBI types carry **no labor** and don't need to exist/be mapped:
- **Hold / Hold 24 Hour** — no labor attached, don't map, don't need the KBI at all.
- **Setup and tear-down** — no separate labor; that labor is already counted within the event's own standard.
- This directly supports the existing "wild-west KBIs at Rosewood" cleanup item in kb.md Priority/Next Steps (item 13) — Hold, Hold 24 Hour, Setup are explicitly confirmed as candidates for deactivation, not just "maybe."

## 4. Meetings — Clarified, Not a Budget Gap

- Meeting-type banquet KBIs (Meeting, Registration, Breakout, Ceremony, etc.) are valid but **Rosewood does not budget meeting covers**, and doesn't need to.
- The Banquet House Person labor standard already **includes an allowance for meetings**, derived from the budgeted Breakfast/Lunch/Dinner/Reception numbers — so meetings labor is accounted for even without being separately budgeted.

## 5. New Request, Not Yet Decided — "Stations" Tracking

- Property contact **Lisette** (no further title/contact captured this call) requested breakfast/lunch/dinner **stations** tracking (e.g., carving station, cake-cutting station) as a distinct labor category.
- **Ahmed's concern:** building this would require new KBIs mapped to jobs across all 4 properties, not just Rosewood — "16 mappings or more, might be a multiple of that."
- **Ahmed's suggested alternative:** challenge the property to fold stations into the existing "Plated" category (already the higher-effort tier) rather than building new granularity, unless there's a real functional reason (e.g., a station genuinely needs a dedicated culinary or server role that Plated doesn't capture).
- **Open question, not resolved:** is a station typically an extra culinary person, an extra server, or does it vary? Needs clarification from the property before any KBI work starts.
- **Decision:** parked for now — Rosewood/Emre to clarify exactly what's wanted before Pete/Ahmed scope the work. Not building anything yet.
- **Ahmed's stated philosophy (relevant context):** prefers "explainable variance" over exhaustively precise modeling — if an event with a station runs over its labor standard, that's fine and gets explained at the labor meeting (the guest is paying for the station anyway), rather than trying to perfectly quantify every possible station type up front.

## 6. Cook I Labor Standard — Resolved

- Ahmed: Rosewood has no labor standard configured for **Cook I**. Fix: **copy the Cook II standard to Cook I**, since they perform the same job. Resolves the original open item from Emre's 7/14/26 email.
- *(Butcher's missing hourly rate — flagged in the same original email — not explicitly discussed on this call; still needs separate confirmation it was fixed.)*

---

## 7. New Topic — Rosewood Rooms Division Restructuring (Emre's "5 extra minutes")

**Not banquet-related — a separate, newly-raised initiative with its own timeline.**

- Rosewood is restructuring its **Rooms Division** toward an **all-butler room model** — every room gets a butler (a "one butler per room" concept, described as "our whole hotel becomes all-butler rooms"). Expected official rollout in about a month from this call (~mid-to-late August 2026).
- **Org changes:** Concierge and Guest Relations departments are merging into one team. Butlers will absorb more guest-reservation duties currently handled by Concierge; Concierge functions shift toward butlers.
- **Current Unifocus configuration is a fixed standard**, not aligned with the new structure — will need to change.
- **New standard target, based on Rosewood's own research + benchmarking against peer hotels:** roughly **1.5 hours per room per butler/partner**.
- **Ahmed's guidance on how to build it:**
  - Can be modeled as minutes-per-unit or hours-per-unit rather than fixed Daily Hours.
  - **Math check performed live:** 1.5 hrs/room × 5 rooms = 7.5-hour shift — confirms "5 units per shift" and "1.5 hours per unit" are mathematically equivalent given a 7.5-hour shift length.
  - **Rounding/partial shifts will occur by design** if set as hours-per-unit — the standard won't cleanly fill whole shifts every day, and that's expected behavior, not a bug (same mechanic documented elsewhere: minutes-per-unit standards, rounding threshold — see `pws/unifocus/kb.md`).
  - Multiple valid ways to build it (breakpoint-style daily hours, units-per-shift, hours-per-unit, or a straight 7.5-hour shift) — deferred to a follow-up working session, not decided live.
- **Timeline pressure:** Rosewood's payroll budget process starts informally now; **first submission is due end of August 2026** — the labor standard needs to be corrected before then.
- **Stakeholder check:** Emre has already met with **Cheryl** (department head for Rooms Division, currently on vacation) and feels aligned with her on direction — no further department-level input needed before building the standard.
- **Action items:**
  - Emre to email Ahmed his availability for a dedicated working session, ideally **next week or the week after** — "the sooner, the better."
  - Ahmed will block calendar time once Emre sends availability, offered to help remotely.
  - Pete offered to help as well, remotely if needed.

---

*© Peter A. Castellano. All rights reserved.*
