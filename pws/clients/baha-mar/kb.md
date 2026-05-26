# Baha Mar Campus — Knowledge Base

Last updated: 2026-05-26

---

## Properties Overview

| Property | Abbreviation | Notes |
|---|---|---|
| Rosewood Baha Mar | Rosewood | Recently added to Baha Mar database; own companywide Delphi instance |
| SLS Baha Mar | SLS | Shares Delphi instance with GH (confirm); active KBI issues |
| Grand Hyatt Baha Mar | GH | Shares Delphi instance with SLS (confirm) |
| Baha Mar Casino | — | Potential future direct PWS client |

---

## Contacts

| Name | Title | Property/Org | Contact |
|---|---|---|---|
| Valquir Correa (Val) | — | Baha Mar (campus-level) | valquir.correa@bahamar.com |
| Ahmed Chadid | Client Success Manager | Unifocus | AChadid@unifocus.com \| O: 972-512-5167 |
| Gia Turnquest | Asst. Director of Finance | SLS Baha Mar | Gia.Turnquest@slshotels.com \| +1 242 788 7271 |
| Adriel Marshall | Asst. Director Revenue Management | SLS Baha Mar | adriel.marshall@slshotels.com \| +1 242 788 7248 |
| Lolita Marshall | — | SLS Baha Mar | lolita.marshall@slshotels.com |
| Christian Laskaros | — | SLS Baha Mar | Christian.LASKAROS@slshotels.com |
| Monali | — | Unifocus (imports team) | Handles one-time BEO imports for mapping setup |

**Needed — not yet obtained:**
- EMS (Delphi) administrator for SLS Baha Mar
- EMS (Delphi) administrator for Grand Hyatt Baha Mar
- Rosewood corporate Delphi administrator already in communication

---

## Event Management System (EMS / Delphi)

Delphi is the Event Management System used for banquet/event management. Banquet files from each property are imported into Unifocus for forecasting and mapping.

| Property | Delphi Instance |
|---|---|
| Rosewood | Own companywide Delphi instance — Pete already in contact with corporate administrator |
| SLS | Likely shared Baha Mar instance with GH — confirm with Val |
| Grand Hyatt | Likely shared Baha Mar instance with SLS — confirm with Val |

**Open question:** Are SLS and GH coming out of a single Baha Mar-managed Delphi instance?

---

## Tickets

| Ticket | Subject | Status |
|---|---|---|
| UNIFOCUS-247305 | KBI Calculation Error / Stayover KBI / Rooms Forecast — SLS | 🔴 Active |

---

## Active Issues

### 🔴 KBI Calculation Error — SLS (KBI 8021 Missing)
**Ticket:** UNIFOCUS-247305
**Reported:** May 26, 2026
**Status:** ✅ Resolved — Generate Standard Hours completed 5/26/26 6:55 PM

**Root cause (from audit):**
On 5/14/26 at 8:15 PM, Pete changed the code for "Resort TTl Arrivals" from `#8021` → `#7821`. At least one formula (most likely the SLS Stayovers KBI) still references `##8021` — the old code that no longer exists. This causes the Calculate KBIs task to fail whenever it runs.

**Why it surfaced now:** The task only runs when a forecast has been entered. No forecast was entered for the period ending 05/31, so the error was not triggered until the week ending 06/07 forecast was submitted.

**Fix applied:**
- KBI #7101 (Grand Hyatt HSKP S/O to Clean 90%) — formula updated to `##7010[0]*.9`
- `##7010[0]` = GH Hotel Stayovers, today's value (the `[0]` day qualifier is required — omitting it causes a separate failure)
- Previous formula `##8021[0]*.9` failed because ##8021 no longer exists after 5/14 renumbering

**Status:** ✅ Resolved — Generate Standard Hours completed 5/26/26 6:55 PM (failed at 5:51 PM, fixed, passed at 6:55 PM)

**Full 5/14 session audit:**

| Time | KBI | Change |
|---|---|---|
| 8:15 PM | Resort TTl Arrivals | Code changed #8021 → #7821 ← **root cause** |
| 9:43 PM | GH Hotel Stayovers | Fixed incomplete formula: added `##7004[0]` (departures component) |
| 10:01 PM | Rosewood 06. Stayovers | Added new KBI |
| 10:03 PM | Resort TTL Stayovers | Added Rosewood (##9006[0]); caught and fixed syntax error in same edit |
| 10:10–13 PM | Rosewood 05. Occ. Rms. Yesterday | Added; changed type I → C; renamed |
| 10:14 PM | Rosewood 06. Stayovers | Updated formula from `##9001[-1] - ##9004[0]` to `##9005[0] - ##9004[0]` |

**KBI numbering pattern (Baha Mar):**

| Range | Property |
|---|---|
| ##1xxx | SLS |
| ##7xxx | Grand Hyatt |
| ##78xx | Resort totals (after renumbering) |
| ##9xxx | Rosewood |

**Formula syntax note:** `[-1]` = yesterday's value of that KBI. `[0]` = today's value. Using a dedicated "Occ. Rms. Yesterday" KBI (type C) with `[0]` is cleaner than `[-1]` references when the KBI needs to be visible in reporting.

---

### 🟡 Cross-Property KBI Build (In Progress)
- Building cross-property Rooms and Banquet KBIs accumulating to **Total Resort available guests per meal period**
- Rosewood recently added to the Baha Mar database
- Must be built at Rosewood, then retested at each property to confirm Rosewood is properly included
- Stayover KBI anomaly noticed at SLS — being investigated alongside the KBI 8021 issue

---

### 🟡 BQT Mapping — Incomplete
- Banquet files for all three properties are imported into all four properties
- Mapping screens only show Booking/Event Type combinations the interface has seen at least once
- Initial mapping was limited to BEOs imported at that time — combinations added since are not yet mapped

**Solution — Dummy BEO File Approach:**
1. Create a dummy BEO file containing every Booking/Event Type combination for each property
2. Monali does a one-time import
3. All combinations become visible in the mapping screen
4. Delete the dummy file — does not affect any past or future planning weeks
5. Complete the mapping with all combinations now visible

**Status:** Awaiting EMS admin contacts for SLS and GH to execute this

---

## Open Questions

- [ ] Are SLS and GH on a single shared Baha Mar Delphi instance?
- [ ] Is Local booking type intentionally absent at GH and SLS?
- [ ] Are Breakfast Box and Dinner Box used at GH and SLS?
- [ ] What does SLS "Boat & Airline" event type map to?
- [ ] Val to connect Pete with EMS administrators for SLS and GH
