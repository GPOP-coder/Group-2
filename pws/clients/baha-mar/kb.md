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

## Active Issues

### 🔴 KBI Calculation Error — SLS (KBI 8021 Missing)
**Ticket:** UNIFOCUS-247305
**Reported:** May 26, 2026
**Status:** Active — Pete investigating

**What happened:**
- KBI formula at SLS references KBI 8021, which does not exist
- This causes the Calculate KBIs task to fail
- Audit shows changes around 05/14 but no record of changes to KBI 8021 itself
- Task ran cleanly through period ending 05/24
- Period ending 05/31 had no forecast entered — task never ran, issue not triggered
- Period ending 06/07: forecast entered, task ran, error surfaced

**Pete's plan:** Investigate the stayover KBI formula, correct or add the formula, report back to Ahmed and Val.

**People affected:** Val (Valquir Correa), Gia Turnquest, Adriel Marshall, Lolita Marshall, Christian Laskaros

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
