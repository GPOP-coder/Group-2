<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# HM Alpha — Unifocus Interface Reference
**Last updated:** 2026-07-01
**Owner:** Pete Castellano (PWS)

Living document. Add detail as interfaces are confirmed, tested, or changed per property.

---

## Interface Overview

| Interface | Direction | System A | System B | Frequency | Owner |
|---|---|---|---|---|---|
| Schedule Export | Unifocus → Paychex | Unifocus | Paychex | Daily, 10 AM ET | UF Data Integration |
| Time Off Request (TOR) | Paychex → Unifocus | Paychex | Unifocus | Daily, 10 AM ET | UF Data Integration |
| Employee Hours | Paychex → Unifocus | Paychex | Unifocus | [TBD] | UF Data Integration |
| Contract Labor Hours | WorkRecords → Unifocus | WorkRecords | Unifocus | [TBD] | UF Data Integration |
| Rooms Forecast / Actuals | ProfitSword → Unifocus | ProfitSword | Unifocus | [TBD] | UF Data Integration |
| F&B / Banquet Actuals | EMS → Unifocus | CI/TY / Delphi / Envision | Unifocus | [TBD] | UF Data Integration |
| Employee Records | Paychex → Unifocus | Paychex | Unifocus | [TBD] | UF Data Integration |

---

## Schedule Export — Unifocus → Paychex

**Purpose:** Push finalized Unifocus schedules into Paychex daily so employees see their schedule in Paychex.
**Frequency:** Daily at **10 AM Eastern**
**Ralph's directive (6/23/26):** Export time must be documented in the P&S Timeline — managers need it in writing.

### Property Status (as of 6/23/26)

| Property | Schedules in System | Export Active |
|---|---|---|
| DoubleTree Raleigh | ✅ Yes | ✅ 10 AM ET |
| InterContinental New Orleans | ✅ Yes | ✅ 10 AM ET |
| JW Marriott Houston | ❌ Not yet | ❌ Excluded |
| Hyatt Westlake | ❌ Not yet | ❌ Excluded |
| Autograph Union Station Nashville | ❌ Not yet | ❌ Excluded |
| WLP (Westin La Paloma) | [TBD] | [TBD] |
| GHY (Grand Hyatt Nashville) | [TBD] | [TBD] |

*Excluded properties will be added to export automation once managers build schedules into Unifocus.*

---

## Time Off Request (TOR) — Paychex → Unifocus

**Purpose:** Import employee time-off requests from Paychex into Unifocus.
**Frequency:** Daily at **10 AM Eastern** for all properties
**Status (6/23/26):** ✅ Running and verified for all properties — data received and importing correctly.

---

## Employee Interfaces

| Interface | Status |
|---|---|
| Employee Interfaces | Complete (all properties) |
| Secondary Jobs | Complete (all properties) |
| Employee Hours (Paychex) | Complete (all properties) |
| Contract Labor (WorkRecords) | Complete (all properties) |

*Source: Akram Chahin Hyatt Westlake status letter 6/24/26; assumed portfolio-wide unless noted otherwise.*

---

## KBI Interfaces — Forecast & Actuals

| Property | Forecast KBIs | Actual KBIs | Notes |
|---|---|---|---|
| Hyatt Westlake | ✅ Complete | ✅ Complete | Pending separation of BQT Meetings |
| Union Station Nashville | [TBD] | [TBD] | CI/TY feed |
| InterContinental New Orleans | [TBD] | [TBD] | Delphi feed; manual daily send until integration live |
| All others | [TBD] | [TBD] | |

**Open item — BQT Meetings separation:**
- Affects Hyatt Westlake (confirmed) and likely other properties
- BQT Meetings KBI must be separated in the interface file to correctly drive labor hours for the Banquet Setup Person
- Priority: **Minor**

---

## EMS / Banquet Data Feeds

| Brand | EMS | Integration Status | Notes |
|---|---|---|---|
| Marriott (all) | CI/TY | [TBD] | |
| Hyatt | Envision | [TBD] | Group/Local differentiation being added (Monali) |
| Hilton | Delphi | [TBD] | Granularity being confirmed by Treana/Triana |
| IHG (InterContinental) | Delphi | Manual (interim) | Granular feed pending; Treana working with Duff on report params; HM Alpha team getting Delphi access (Devon submitted IHG brand-level request) |

**NOLA Delphi interim process (until integration live):**
- Manual daily send from Delphi → HM Alpha team → property
- Plan: Screenshot how-to for DOS team to run and send the report daily
- Nicole may set this up onsite week of 7/6

---

## ProfitSword — Rooms & F&B Data

**Purpose:** Source of Rooms Forecast, Rooms Actuals, F&B Actuals, and audited POS data for Unifocus KBIs.
**Limitation:** GL-level totals only — no event-type granularity.

**Portfolio-wide issue (raised 6/29/26):**
- Revenue managers currently only updating **occupied rooms** forecast on 1st and 15th of the month
- **Arrivals and guests not being forecasted** — pulling from budget/actuals instead; causes negative departures in import
- **Fix:** Revenue managers (or Director of Rooms) must update arrivals and guests in ProfitSword
- Devon escalated to Mary Grace (EVP Sales) 6/29; Mary Grace meeting with revenue managers to assess portfolio-wide bandwidth
- Pete's recommendation: Revenue managers own arrivals + guests; Executive Housekeeper often best at forecasting departures/stayovers from experience

---

## Key Contacts — Interface Team

| Name | Title | Email | Phone |
|---|---|---|---|
| Monali Desai | Lead, Data Integration — Unifocus | mdesai@unifocus.com | — |
| Ramandeep Singh Sudan | Sr. Technical Consultant — Unifocus | rsudan@unifocus.com | M: +91-989-912-3191 |

**Unifocus Helpline:** US: 1-866-601-5669 | UK: +44-203-051-6825 | MEA: +91-11-4912-5000 | APAC: +65-3163-1300

---

## Source Log

| Date | Source | Key Info Added |
|---|---|---|
| 6/23/26 | Devon Peters → Monali/Ralph email re: Paychex export | Export frequency confirmed; Raman confirmed 10 AM ET timing; TOR verified all properties |
| 6/24/26 | Akram Chahin Hyatt Westlake status letter | Employee interfaces complete; BQT Meetings separation open (minor) |
| 6/25/26 | HM Alpha weekly call notes | ProfitSword limitations; comp rooms mapping; Delphi granularity; NOLA interim manual process |
| 6/29/26 | NOLA standards review call (Pete/Steve/Devon/Nicole) | ProfitSword arrivals/guests issue; Delphi access pending; dummy BEO strategy |
