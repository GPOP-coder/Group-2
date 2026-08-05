<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# HMAlpha Interface Mapping Tracker
**Context:** Documents each interface feeding Unifocus for HMAlpha properties — source system, frequency, source-side quirks, and where it's mapped in UF. Built during the Nashville corporate admin training (7/14–7/16/26) as Interface Level Mapping content is discovered.

---

## Fields

| Field | Purpose |
|---|---|
| Interface | Name of the interface/feed |
| Source | System of record it pulls from |
| Frequency | How often it runs, and time if known |
| Source Notes | What's unique or noteworthy about the source data |
| Mapped in UF | Where this lands in Unifocus (menu path) |

*(Add fields as we discover a need for them.)*

---

## Interfaces

| Interface | Source | Frequency | Source Notes | Mapped in UF |
|---|---|---|---|---|
| Employee Reconcile | Paychex employee list | Once a day, before the hours imports | Source has primary and secondary jobs. **Runs first** — if an incoming employee's job code isn't recognized/mapped, that employee will NOT import at all (surfaces on the Reconcile/Transfer Hours report) | Labor Structure / Reconcile Codes |
| Actual Hours | Paychex Time and Attendance **+ Work Records (contract labor)** | Twice a day — **two separate imports** at different times, one from Paychex, one from Work Records, following the same job-code-matching logic | Source only sends approved shifts — recommend it send ALL shifts, approved or not. See Work Records granularity issue below | Labor Structure / TK Codes |
| Time Off Requests | Paychex | TBD | TBD | TBD |
| Schedules | Paychex (UF → Paychex — **outbound**, opposite direction from the interfaces above) | TBD | TBD | TBD |
| Rooms Forecast | ProfitSword | TBD | TBD | TBD |
| Rooms and F&B Actual KBI Values | ProfitSword | TBD | TBD | TBD |
| Banquet Forecast | Property event management system (varies by property — see breakdown below) | TBD | Same source file as Banquet Actuals below — EMS sends one file covering both. Source system differs per property, not a single fixed source like the others | Separate UF config area from Banquet Actuals, even though they share one source file |
| Banquet Actuals | Property event management system (varies by property — see breakdown below) | TBD | Same source file as Banquet Forecast above | Separate UF config area from Banquet Forecast, even though they share one source file |

**Key nuance (confirmed 7/13 in Nashville, working with Nicole on Union Station's mapping):** Forecast and Actuals come from **the same file** out of the EMS, but they are **two separate parts of the UF configuration** — don't treat this as one interface just because there's one source file.

### Banquet Forecast/Actuals — Source System by Property

**CORRECTION (7/14, from Day 1 training call — supersedes earlier note):** HMAlpha does **not** have its own company-wide EMS. Devon asked Pete directly on the call whether HMAlpha has its own system or depends on each brand — Pete confirmed: **"No, it's just each brand."** There are four brand-level sources, and Delphi is used by two different brands as **two separate, unrelated instances** (same software, not the same deployment):

| Property / Brand | EMS Source | Notes |
|---|---|---|
| Union Station Nashville (Marriott/Autograph Collection) | Marriott CI/TY | |
| InterContinental New Orleans (IHG) | Delphi — **IHG's own instance** | Separate from Hilton's Delphi below despite being the same software |
| Hilton-brand properties (e.g. Hilton Indianapolis, DoubleTree Charlotte) | Delphi — **Hilton's own instance** | Separate from IHG's Delphi above |
| Hyatt-brand properties (e.g. Grand Hyatt Nashville, Hyatt Regency Valencia, Hyatt Westlake) | Envision | |

*(Add more properties as we confirm their EMS during training.)*

### Centralized Reporting Process (confirmed 7/14)
- Reports are being **centralized through Nicole** rather than each property submitting individually — Nicole will receive **4 reports per day total** (one per brand: Marriott/CI-TY, IHG/Delphi, Hilton/Delphi, Hyatt/Envision), then Monali maps/imports on the Unifocus side.
- **Destination:** files go to **PMSfiles@unifocus.com**
- **Mapping confirmation status (as of 7/14):**
  - ✅ Marriott/CI-TY format confirmed good by Monali — built from Triana's InterContinental export, condensed to only the columns Monali needs (removed manager/other columns not required)
  - ⚠️ Still need confirmation on: the Hyatt/Envision format (sent by "Julie") and the second Delphi format (Hilton's — sent by Triana, not Julie)
  - **Update (7/14):** Pete found a formal written spec package DOES exist — Monali Desai (Data Integration Specialist, mdesai@unifocus.com) sent specs + sample files on 8/8/2022 for exactly four interfaces: (1) Employee Reconciliation, (2) Hours and Dollars, (3) Actual KBIs, (4) Banquet BEOs. That confirms these are Unifocus's canonical named interface categories, matching what's been built organically in this tracker. **Open:** Pete emailed Monali 7/14/26 5:36 PM asking whether these 2022 specs are still current and where to source them going forward (a standing location vs. asking each time) — awaiting her reply. Pete's framing to her: just checking for reference to help Nicole, not changing anything already running for HMAlpha.
- **Historicals status:** 2+ years of data (starting 2024) sent for Marriott/CI-TY in the confirmed format; not yet imported for InterContinental (blocked on mapping being finalized — see onboarding process below)

### Interface Onboarding Process (general method, applies to any new EMS/brand feed)
1. Get the source file format right first (match Unifocus's spec exactly)
2. Send one **dummy/fake file with every possible value** in it (all event types, booking types, etc.) — this lights up all the mapping dropdown options in UF for that property, without needing to wait on real production data
3. Do the mapping using that lit-up dropdown
4. Import a **real, current file** (e.g. a 21-day banquet window) to validate the mapping actually works end-to-end
5. Only after that's validated, backfill/import full historical data (however many years are available)
6. **Each property's mapping starts blank** — even properties on the same brand/EMS don't inherit another property's mapping. This is by design.
7. **Watch for miscategorized source data:** one property had been putting every single banquet event into "Continental Breakfast" in their EMS because no one was using the real event-type field — always sanity-check what the source categories actually mean before trusting the import, not just whether the technical pipe works
8. IT/technical contact for the EMS feed varies by property/brand — there's no single universal contact. Best practice: identify whoever manages the EMS at each property (could be brand IT, a regional event-systems person, sometimes a "sales-y" role) and let them coordinate directly with Monali on the technical/file-format level, rather than Devon/Nicole being the go-between on that layer.

### Banquet KBI Mapping — Hands-On Walkthrough (Day 1, bonus Session 3, 7/14 — worked live with Nicole on InterContinental/Delphi)

This is the concrete, step-by-step version of the generic onboarding process above, specific to banquet KBI mapping. InterContinental was used as the live example since it was still completely unmapped (access to Delphi had just been granted).

#### The core classification logic
- Delphi (and EMS systems generally) classify every banquet event under a booking/revenue type — for InterContinental, the three types are **Banquet**, **Catering**, **In House**.
- **Banquet = Group** in Unifocus terms. Group means someone is sleeping in the hotel and attending the event (sales thinks of "group" as people they're selling rooms *and* banquet events to).
- **Catering = Local**, **In House = Local** (by default) — Local covers everything that isn't tied to overnight room-nights (an outside company's event, or the hotel's own internal/employee event).
- **Meetings (no food covers) don't need the Group/Local split** — that distinction only matters where covers/guest-count are involved.
- **Every event type/meal-period/style combination needs mapping 6 times**: 3 on the Actual side (Group/Banquet, Catering, In House) × 2 screens (Actual KBI Mapping and Forecast KBI Mapping — see below).

#### Actual KBI Mapping vs. Forecast KBI Mapping — they run backwards from each other
Both live under **Setup → Labor → [Input] Actual KBI Mapping** and **Setup → Labor → Forecast KBI Mapping** respectively. Do not assume they work the same way:
- **Actual KBI Mapping:** you start from the Unifocus KBI (e.g. "Banquet Local Breakfast Buffet") and **add lines** to it — multiple Delphi source codes (e.g. both "Catering" and "In House") can be added as separate lines feeding into that *one* KBI, since Local = Catering + In-House combined. A given KBI should only appear once as a mapped target, but that one entry can absorb multiple source lines.
- **Forecast KBI Mapping:** the direction reverses — you start from the source/mapping code and assign it a KBI. Here, the **mapping code must be unique per row** (can't reuse a mapping code), but the **same KBI can be selected on multiple different rows** (e.g. two separate forecast rows, one tied to the Catering source code and one tied to the In House source code, both pointing at the same "Local Breakfast Buffet" KBI). Since row titles are otherwise identical, give each a distinguishing suffix (e.g. "...Breakfast Buffet - CA" vs. "...Breakfast Buffet - IH").
- **Revenue Centers don't get their own forecast import** — they're generated automatically from the Rooms Forecast + Banquet Forecast (the independent-variable inputs), confirming the independent/dependent-variable relationship already noted under Forecasting.
- Monali has to import the dummy/test file **twice** — once against Actual KBI Mapping, once against Forecast KBI Mapping — "completely different programs" even though conceptually linked.
- UI mechanics: you must click **Edit** before a mapping screen becomes editable — can't just start typing. New line numbers auto-assign and **cannot be changed after creation** — plan out your full list of intended mappings before starting, since the screen only sorts by line number (not by KBI name), and finding one missing mapping later means scrolling through however many dozens/hundreds already exist.

#### Building the dummy/test file — concrete method
1. Pull a real historical export from the source EMS — ideally a **full year**, to maximize the odds of capturing every event type actually used.
2. Deduplicate down to the unique values in the event-type/classification column. This is your master list of event types needing mapping.
3. **Manually review and exclude non-mappable/non-labor categories.** Examples explicitly excluded for InterContinental: Setup, Hold Space, Tear Down, Not a Meal, Breakout (meeting type), Ceremony (meeting type), Speaker Ready Room (meeting type), On a Sign/Unassigned, blank rows, 24-Hour Hold. Rationale: these are either meeting-only (no covers) or would double-count labor already captured elsewhere in the event itself.
4. **Flag ambiguous categories for follow-up rather than guessing:** examples hit live — "Breakfast Sales" (unclear meaning, needs asking the property), "Amenity Delivery" (unclear which department owns it — house persons vs. in-room dining, varies by property), "Off Site" (ambiguous whether the group's event is literally off-property — don't assume "no labor" without confirming), "Hospitality" (means different things per property — one property's "Hospitality" was a no-food reception, name-tags/gift-bags only, no bartender needed), the "Set" column (meant to tell setup staff how many to physically set up for vs. the guaranteed count, e.g. "dinner for 32, set for 40" — but used inconsistently property to property, sometimes left blank entirely).
5. Keep a **persistent running list of what's deliberately not mapped**, per property, so this institutional knowledge isn't relitigated or forgotten later.
6. Triplicate the cleaned event-type list (one copy per Banquet/Catering/In House), apply one consistent, arbitrary date across every row (the actual date value doesn't matter — even 1975 works, since it'll get overwritten by real data anyway — but picking something you can consciously check post-import is smart), and give each count-column (Expected/Guaranteed/Actual/Set — exact column letters vary by property's export) a unique/incrementing placeholder value so you can verify specific numbers made it through after import.
7. **⚠️ Exact string matching gotcha (same category of risk as the Paychex TK-code issue above):** source values must match character-for-character. One property had both "In-House" (hyphen) and "In House" (space) inconsistently used in their own EMS due to a mid-year internal change — this either requires mapping both variants or getting the property to standardize going forward.
8. **Caution pulling a full year of history:** if a property changed field values mid-year, a full-year pull captures both old and new versions as if they're distinct categories — catch this and ask the property why, don't just map both blindly.
9. Once a property's mapping is built and validated, **it's a one-time job — never needs to be redone** for that property.
10. **Unresolved/needs follow-up:** if there's no direct system configuration report listing every valid event-type value, one workaround is opening the EMS's "create new booking" screen and inspecting the event-type dropdown directly — this was attempted live for Delphi/InterContinental but not successfully located by end of session. There is reportedly an internal Unifocus Teams location with interface documentation, also not located by end of session.

### TK Codes / Reconcile Codes — Technical Detail (from Day 1, Session 2)

- **Two completely separate interfaces from the same source (Paychex)** — TK codes (hours import) and Reconcile codes (employee import) look similar but are independently mapped. Don't assume they're interchangeable or stack them together.
- **Critical matching quirk:** UF matches on the **entire line/string** Paychex sends, not just the 4-digit job code. If the job code number stays the same but someone edits the text label in Paychex, the mapping breaks — it's an exact-string match, not an ID-based match. In hindsight, mapping to just "property identifier + job code" would have been more robust, but the interface was built to match what Paychex actually sends, and that can't be redesigned now.
- **Work Records granularity issue:** Work Records (staffing agency system) sometimes lumps distinct roles into one generic code (e.g., a general "Housekeeping" person instead of separate House Person / Room Attendant / Public Space Cleaner). This was never a problem before UF — hours flowed fine and agency invoices reconciled — but UF requires hours to hit a **specific job**, not just a department bucket. Fix has to happen on the Work Records side: request the agency create and correctly use the granular job codes, then UF can allocate hours properly.
- **Contract labor / "on call" (Baha Mar's term for it) handling — HMAlpha's pattern:** hours are flagged as contract labor **on the same job code** as they come in through the interface, rather than creating a separate "Room Attendant – Contract" job for every role (which is what some other clients do, doubling their labor structure size). This lets UF report on contract vs. regular hours without separate job codes — **but that reporting split does not currently feed HMAlpha's P&L**, since Paychex/payroll (not Unifocus) is the source system for the P&L.
- **Big picture:** even when Time & Attendance itself isn't the payroll system of record, TK/Reconcile codes still feed reporting, User Administration visibility, and general system functionality — described on the call as "a tree, and all these other things are ornaments" hanging off it.

---

## Status Check — 7/27/26 (Monday morning)

Nicole Mendez's InterContinental mapping progress per her 7/24/26 update: **majority of the mapping is complete** — only two items remain to clarify: **AM/PM break handling** and the **different reception types**. Once those are confirmed, mapping is 100%.

Pete offered to meet Monday (today) at **9:00 AM CT** to review (reply sent 7/24 2:54 PM, thread: Pete/Steve Carrell/Nicole Mendez/Devon Peters/Monali Desai, cc Khalida Hussain). No confirmation from Nicole came through on that thread. **Follow-up sent 7/27/26 9:11 AM** — new direct email, subject "BQT KBI mappings," asking if any time this morning works. Awaiting reply.

## Status Check — 8/5/26 (CI Mapping Session, Union Station — Pete/Nicole call, 5:00–5:57 PM)

Applying the general onboarding method above to **CI** (Marriott's EMS, used by Union Station and other Marriott-family properties including Westin La Paloma) for the first time in depth. Key differences from the Delphi/InterContinental walkthrough surfaced live:

**CI's group/booking-type field (column T) is not a clean 3-value field.** Unlike Delphi's Banquet/Catering/In House, CI's column T pulldown had 10+ values in the pulled export: Group, Local, In-House Meeting, Citywide Overflow, Multi-Year, Rooms Only, Tour Series Group, Wholesale, and more (varies by property). Every one of these still needs mapping to Group or Local — **do not assume an oddly-named type (e.g. "Rooms Only") has no banquet events tied to it.** Filtering the 2025 Union Station historical export for "Rooms Only" turned up real BEOs with real cover counts (breakfasts, breaks, receptions, hospitality rooms) — confirmed live on the call. Same for "Citywide Overflow" (a citywide conference overflow room block that still generates its own receptions/breaks at this hotel, separate from the actual conference).

**CI usage is not uniform property-to-property despite being one company-wide system.** Nicole's CI access covers JW Houston, San Diego, Marriott Del Mar, Union Station, Westin La Paloma, and Warner Center — each has a different combination of "extra" group types beyond the core Group/Local/In-House set. Cannot assume one property's CI configuration transfers to another; each needs its own pulldown pull. (This parallels the Delphi tracker's existing rule 6 above: "each property's mapping starts blank.")

**Pulling a full year of historical data is not the same as getting the full configured pulldown list.** Nicole's initial export only showed what had actually been used in 2025 — attempting to pull "all column T choices" directly from CI's UI returned a filtered/incomplete result (the UI screen behaved like a filter, not a true pulldown-options list). **Need the actual full CI configuration for both column T (group/booking type) and column D (function/event type) — every configured choice, not just what shows in a usage export** — which requires going through a property CI expert or Marriott corporate documentation, not just pulling more historical data.

**Wedding-named BEO categories map to existing KBIs, don't get their own:** Wedding Dinner → Plated Dinner; Wedding Reception → Heavy Reception. (Properties apparently stopped creating new BEOs under the literal "wedding" event type at some point, but historical BEOs still carry it — still needs mapping so historical import doesn't drop those events.)

**Exclude "Meal on Own"** from mapping — it signals the group is off-property or eating on their own, no hotel labor/covers involved. Confirmed safe to skip (same category as Setup/Teardown/Hold exclusions already documented above for Delphi).

**Standing rule reaffirmed:** do not map any KBI to a calculated/total line (e.g. a "Total Breakfast" KBI) — only ever to Group or Local; Unifocus derives Total by summing them. Mapping to a calculated KBI breaks it.

**Dummy file method reaffirmed, one addition:** must match the exact fields/columns of a currently-working import file (not just Nicole's simplified group/local/in-house first draft), include cover counts in Expected and Actual, and use unique sequential ID numbers per row (e.g. 101–125 for one type, 201–220 for the next) so post-import you can verify every row actually landed.

**Standing rule reaffirmed:** no historical CI BEO files go to Monali until CI mapping is fully validated — same rule already governing the Delphi/InterContinental historicals above.

### Action items from this call
- **Pete — send the 8/17 Westin La Paloma training kickoff invite.** Pete's own stated interval is ~2 weeks out; 2 weeks before 8/17 was 8/3, so as of this call (8/5) it is **already overdue** — send ASAP. (Nicole is in Charlotte with Akram doing training that same week, not attending WLP.)
- **Nicole — reach out to Christy (Union Station) and likely each property individually** for CI code/event-type definitions, since combinations differ by property. No last name/email captured on the call — not enough to add to contacts.csv yet.
- **Nicole — pull the full, unfiltered CI configuration** for column T (group/booking type) and column D (function/event type) — the actual pulldown option list, not a historical-usage export.
- **Nicole — pull 2026 CI data and compare to 2025** to check whether booking types differ year to year (same mid-year-value-change risk already flagged for Delphi above).
- **Nicole — draft the CI dummy file** (every group type × every function type, matching working-import field structure) and share with Pete for review before any import is attempted.
- **Nicole — do not send historical CI BEOs to Monali** until mapping is complete and verified.
- **Pete — review the dummy file with Nicole on a follow-up call** before any historical import is attempted.

---

## Other Interfaces to Eventually Document
- [ ] Fill in Frequency / exact UF menu path for the TBD rows above as they come up in training
- [ ] Confirm Envision (Hyatt) and Hilton-Delphi formats are approved by Monali (Marriott/CI-TY already confirmed)
- [ ] **Pending Monali's reply (asked 7/14):** confirm the 2022 spec package (Employee Reconciliation, Hours and Dollars, Actual KBIs, Banquet BEOs) is still current, and find out where to source it going forward instead of asking each time
- [ ] Ask InterContinental/Matthew what "Breakfast Sales" event type actually means in Delphi
- [ ] Confirm which department owns "Amenity Delivery" at InterContinental (house persons vs. in-room dining)
- [ ] Confirm what "Off Site" means at InterContinental (event physically off-property vs. some other designation) before assuming zero labor
- [ ] Confirm how "Hospitality" is being used at InterContinental (has varied property to property elsewhere)
- [ ] Find a Delphi configuration report/screen listing all valid event-type values (attempted live, not located as of 7/14)
- [ ] Locate the internal Unifocus Teams folder with interface-mapping documentation (attempted live, not located as of 7/14 — note: the 2022 specs above were found via an old email instead, not this Teams location, so the Teams search is still a separate open thread)
- [ ] (add more as discovered during training)
