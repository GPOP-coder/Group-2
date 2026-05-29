# Baha Mar Campus — Knowledge Base

Last updated: 2026-05-28 (evening session)

---

## Properties Overview

| Property | Abbreviation | Notes |
|---|---|---|
| Rosewood Baha Mar | **RW** (also: ROS, Rosewood) | Recently migrated into Baha Mar database; own companywide Delphi instance |
| Grand Hyatt Baha Mar | **GH** | Shares Delphi instance with SLS (confirm) |
| SLS Baha Mar | **SLS** | Shares Delphi instance with GH (confirm); active KBI issues |
| CTF Operations | **CTF** | Campus-level property; no banquets, no rooms |
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

## KBI Numbering Conventions

### Campus-Wide Code Range Meanings

At each property database, KBI code ranges have a consistent meaning. Read across the row to see what a given range means at each property.

| Range | At GH | At SLS | At CTF | At RW |
|---|---|---|---|---|
| 1xxx | GH own rooms/guests | SLS own rooms/guests | CTF campus totals | RW own rooms/guests |
| 5xxx | GH own banquet | SLS own banquet | Outlets at CTF *(deviation)* | RW own banquet |
| 6xxx | *(unused)* | *(unused)* | *(unused)* | **NEW: GH cross-property banquet** |
| 7xxx | SLS cross-property | GH cross-property | SLS cross-property | **NEW: SLS cross-property banquet** |
| 78xx | Resort totals | Resort totals | Resort totals | **NEW: Resort totals (to be built)** |
| 8xxx | *(unused)* | *(unused)* | RW cross-property | *(unused)* |
| 9xxx | RW cross-property | RW cross-property | GH cross-property | Outlet KBIs — **do NOT use for cross-property** |

**Critical:** 9xxx at Rosewood is occupied by outlet KBIs. Never use 9xxx for cross-property work at RW.

**Correct convention (not always followed):**
- 4xxx = Outlets (revenue centers)
- 5xxx = Own banquet KBIs
- CTF deviated — used 5xxx for outlets

### Specific Cross-Property KBI Prefixes Within Ranges

At RW, the banquet cross-property subnumbering mirrors the campus pattern:
- `##6111`, `##6121`, `##6131` = GH Bkfst Plated/Buffet/Cont at RW
- `##7111`, `##7121`, `##7131` = SLS Bkfst Plated/Buffet/Cont at RW
- Sub-totals: `##6101` = GH Bqt Ttl Bkfst at RW; `##7141` = SLS Bqt Ttl Bkfst at RW (matches the `##7141` at GH)

---

## Formula Rules

### Syntax
- Reference syntax: `##KBIcode[offset]`
- `[0]` = today's value — **MANDATORY**; omitting `[offset]` entirely causes a failure
- `[-1]` = yesterday's value
- `[1]` = tomorrow, `[3]` = 3 days forward
- Sum syntax: `@SUM(##1001[0], ##7001[0], ##9001[0])`

### Stayover Formula — Correct Baha Mar Pattern
**Definition:** Stayovers = guests in yesterday's occupied rooms who did not depart today.

**Correct:** `Stayovers = OccRoomsYesterday[0] - Departures[0]`

Where `OccRoomsYesterday` is a dedicated **Calculated** KBI set to `##OccRooms[-1]`.

**Do NOT use:** `##OccRooms[-1] - ##Departures[0]` directly in the stayover formula. Unifocus flags a duplication alert because the Departures formula itself incorporates `OccRooms[-1]`.

**Do NOT use:** Today's occupied rooms minus departures — wrong day.

### Departures Formula Pattern (Campus Standard)
`##OccRooms[-1] + ##Arrivals[0] - ##OccRooms[0]`

This is why a direct `[-1]` reference in stayover formulas triggers the duplication alert — the value flows through Departures already.

---

## Structural Discoveries (Operational Rules)

These are non-obvious Unifocus behaviors confirmed during Baha Mar configuration work.

**Calculated KBI + BQT Mapping = silent failure.** A KBI cannot be both Calculated type AND have a BQT mapping applied. The mapping screen allows it with no warning. Both the calculation and the import will break silently. Always verify KBI type before mapping.

**Forecast AND Actuals must be mapped identically.** The BQT file architecture has two separate mapping screens — forecast side and actuals side. Both must be mapped to the same KBIs, or data only flows on one side.

**Calculate KBIs is forecast-triggered.** The job only runs when a forecast is submitted. A broken formula can hide for an entire planning period if no forecast is entered. Always submit a test forecast immediately after any formula or code change.

**KBI renumber risk is campus-wide.** Changing a KBI code does NOT auto-update formulas. Cross-property formulas at OTHER properties may reference the old code. Search Column B of ALL four property config reports before any renumber. The Related KBIs tab only shows dependencies at the current property.

**Deactivation convention.** Deactivated KBIs must have: (1) name prefixed with z/zz/zzz/x/DNU (lowercase z preferred — sorts to bottom), (2) all mappings removed, (3) formula deleted, (4) type changed to Input. A deactivated KBI with an active formula is a configuration error.

**Resort totals range 7820–7833 is campus-wide.** Same codes, same purpose at GH, SLS, CTF, and now built at RW.

**Build KBIs in dependency order.** A formula referencing a KBI that doesn't exist yet will be rejected. Build Inputs first, then Calculated sub-totals, then totals that reference them. In a live system every save is potentially active — sequencing is non-negotiable. The "build everything before anything calculates" window only exists at initial implementation.

**New unreferenced KBIs can be hard-deleted.** Unifocus normally prevents deletion, but a KBI that was just created and has no formulas referencing it can be hard-deleted. Once entangled in other calculations, deactivation (z-prefix, remove formula, type→Input) is the only option.

**Yesterday KBIs are only needed for Stayovers, not Avail Guests.** The `[-1]` offset works inline in Avail Guests formulas without triggering a duplication alert. Only the Stayover formula needs an intermediate "yesterday" KBI because Departures already incorporates `OccRooms[-1]`.

**Hidden spaces in the Code field cause silent formula failures.** A KBI code with a leading space displays identically to the correct code but sorts before all numeric codes in the KBI list (space sorts before digits in ASCII). Formula references to the affected code return "Invalid KBI Code." Fix: open the KBI, click into the Code field, select all, retype the number by hand (no copy-paste), save. Unifocus re-resolves affected formulas automatically — no need to re-enter them. Always type KBI codes manually; never copy-paste from another source.

**Generate Projected Hours is the correct validation in production.** Runs automatically 3+ times daily or on demand. Do not submit test forecasts in a live system — disruptive. Formula errors surface in the next GPH cycle.

**Name all KBIs with a property identifier.** At GH, every KBI is named "GH ...", "SLS ...", "Rosewood ..." — making formulas self-documenting. At RW, native KBIs lack a property prefix (e.g., "Bqt Ttl 1 Bkfst"), making cross-property formulas harder to read. Apply property prefix to all KBIs at future property setups.

---

## Tickets

| Ticket | Subject | Status |
|---|---|---|
| UNIFOCUS-247305 | KBI Calculation Error / Stayover KBI / Rooms Forecast — SLS | ✅ Resolved 5/26/26 |

---

## KBI Change Log

### Modified KBIs

| Date | Property | KBI Name | Code | Old Formula | New Formula | Status |
|---|---|---|---|---|---|---|
| May 13 | RW | GH Hotel Departures | #1104 | `##1101[-1]+##1002[0]-##1101[0]` | `##1101[-1]+##1102[0]-##1101[0]` | ✅ Done |
| May 13 | CTF | XXX Rosewood 04. Departures | #1104 | (had formula) | Formula removed, type→Input | ✅ Done |
| May 13 | SLS | GH Stayovers | #7010 | `##7005[0]` | `##7005[0]-##7004[0]` | ✅ Done |
| May 13 | CTF | 46. GH Hotel Stayovers | #9010 | `##9001[0]-##9004[0]` | `##9005[0]-##9004[0]` | ✅ Done |
| May 13 | CTF | 28. SLS HSK Stayover (60%) | #7012 | `##7001[0]*.6` | `##7010[0]*.6` | ✅ Done |
| May 13 | CTF | 07. Baha Mar TTL Stayovers | #1007 | `@SUM(##7010[0],##9010[0])` | `@SUM(##7010[0],##8010[0],##9010[0])` | ✅ Done |
| May 13 | SLS | Resort TTL Stayovers | #7824 | `@SUM(##1010[0],##7010[0])` | `@SUM(##1010[0],##7010[0],##9006[0])` | ✅ Done |
| May 14 | SLS | Resort TTL Arrivals | #8021→#7821 | *(renumber)* | Code changed to #7821 | ✅ Done |
| May 26 | SLS | Grand Hyatt HSKP S/O to Clean (90%) | #7101 | `##8021[0]*.9` | `##7010[0]*.9` | ✅ Done |

### Created KBIs

| Date | Property | KBI Name | Code | Type | Formula | Status |
|---|---|---|---|---|---|---|
| May 13 | SLS | Rosewood 05. Occ. Rms. Yesterday | #9005 | Calculated | `##9001[-1]` | ✅ Done |
| May 13 | SLS | Rosewood 06. Stayovers | #9006 | Calculated | `##9005[0]-##9004[0]` | ✅ Done |
| May 13 | CTF | 57. Rosewood Occupancy Yesterday | #8007 | Calculated | `##8001[-1]` | ✅ Done |
| May 13 | CTF | 58. Rosewood Stayovers | #8010 | Calculated | `##8007[0]-##8005[0]` | ✅ Done |
| May 28 | RW | 60 cross-property KBIs (6xxx, 7xxx, 78xx) | #6101–#7833 | Various | See Work Plan below | ✅ Done |
| May 28 | GH | RW Avail Guests Bkfst | #9521 | Calculated | `##9003[-1]-##9101[0]` | ✅ Done |
| May 28 | GH | RW Avail Guests Lunch | #9522 | Calculated | `##9003[-1]-##9201[0]` | ✅ Done |
| May 28 | GH | RW Avail Guests Dinner | #9523 | Calculated | `##9003[0]-##9301[0]` | ✅ Done |
| May 28 | GH | RW Bqt Grp Break | #9401 | Input | mapped from RW BQT file (later) | ✅ Done |
| May 28 | GH | RW Bqt Ttl Meals | #9731 | Calculated | `@SUM(##9101[0],##9201[0],##9301[0],##9501[0])` | ✅ Done |
| May 28 | SLS | RW Avail Guests Bkfst | #9520 | Calculated | `##9003[-1]-##9101[0]` | ✅ Done |
| May 28 | SLS | RW Avail Guests Lunch | #9521 | Calculated | `##9003[-1]-##9201[0]` | ✅ Done |
| May 28 | SLS | RW Avail Guests Dinner | #9522 | Calculated | `##9003[0]-##9301[0]` | ✅ Done |
| May 28 | SLS | RW Bqt Grp Break | #9401 | Input | mapped from RW BQT file (later) | ✅ Done |
| May 28 | SLS | RW Bqt Ttl Meals | #9731 | Calculated | `@SUM(##9101[0],##9201[0],##9301[0],##9501[0])` | ✅ Done |
| May 29 | CTF | 23 RW banquet KBIs (8xxx: inputs + calculated) | #8101–#8731 | Various | See Work Plan below | ✅ Done |
| May 29 | CTF | RW Avail Guests Bkfst/Lunch/Dinner | #8107–#8109 | Calculated | `##8003[-1]-##8x01[0]` / `##8003[0]-##8301[0]` | ✅ Done |

**Status:** ✅ Resolved — Generate Standard Hours completed 5/26/26 6:55 PM (failed at 5:51 PM, fixed, passed at 6:55 PM)

**How the issue surfaced:**
- Adriel Marshall (SLS Revenue Management) reported multiple failed attempts to update Unifocus forecast
- Gia Turnquest (SLS Finance) escalated; Valquir Correa raised support ticket UNIFOCUS-247305
- Ahmed Chadid diagnosed root cause: broken KBI formula referencing non-existent #8021
- Workaround during outage: teams manually adjusting forecasts and inputting covers

**Pete's contributions to resolution:**
- Provided broader system context — cross-property KBI development, Rosewood database integration
- Identified potential stayover logic discrepancies at SLS (separate from the #8021 issue)
- Proposed dummy BEO file solution ("1975 trick") for full mapping visibility
- Requested Delphi admin access for SLS and GH — Valquir agreed to connect appropriate administrators

### 5/14/26 Session Audit (root cause of UNIFOCUS-247305)

| Time | KBI | Change |
|---|---|---|
| 8:15 PM | Resort TTl Arrivals | Code changed #8021 → #7821 ← **root cause of ticket** |
| 9:43 PM | GH Hotel Stayovers | Fixed incomplete formula: added `##7004[0]` (departures component) |
| 10:01 PM | Rosewood 06. Stayovers | Added new KBI |
| 10:03 PM | Resort TTL Stayovers | Added Rosewood (##9006[0]); caught and fixed syntax error in same edit |
| 10:10–13 PM | Rosewood 05. Occ. Rms. Yesterday | Added; changed type I → C; renamed |
| 10:14 PM | Rosewood 06. Stayovers | Updated formula from `##9001[-1] - ##9004[0]` to `##9005[0] - ##9004[0]` |

---

## Work Plan: KBIs Built at Rosewood (60 total) — ✅ Complete May 28

All 60 KBIs built at property **Rosewood Baha Mar** on May 28, 2026. Order: GH banquet (6xxx) → SLS banquet (7xxx) → Resort totals (78xx).

### Phase 1 — GH Cross-Property Banquet at RW (6xxx) — 23 KBIs

| Name | Code | Type | Formula |
|---|---|---|---|
| GH Bqt Grp Bkfst Plated | #6111 | Input | mapped from GH BQT file |
| GH Bqt Grp Bkfst Buffet | #6121 | Input | mapped from GH BQT file |
| GH Bqt Grp Bkfst Cont | #6131 | Input | mapped from GH BQT file |
| GH Bqt Grp Lunch Plated | #6211 | Input | mapped from GH BQT file |
| GH Bqt Grp Lunch Buffet | #6221 | Input | mapped from GH BQT file |
| GH Bqt Grp Lunch Box | #6231 | Input | mapped from GH BQT file |
| GH Bqt Grp Dinner Plated | #6311 | Input | mapped from GH BQT file |
| GH Bqt Grp Dinner Buffet | #6321 | Input | mapped from GH BQT file |
| GH Bqt Grp Reception Lite | #6511 | Input | mapped from GH BQT file |
| GH Bqt Grp Reception Heavy | #6521 | Input | mapped from GH BQT file |
| GH Bqt Grp Break | #6411 | Input | mapped from GH BQT file |
| GH Bqt Grp Meeting | #6601 | Input | mapped from GH BQT file |
| GH Bqt Tastings Bqt | #6416 | Input | mapped from GH BQT file |
| GH Bqt Tastings Outlets | #6415 | Input | mapped from GH BQT file |
| GH Bqt Ttl Bkfst | #6101 | Calculated | `@SUM(##6111[0],##6121[0],##6131[0])` |
| GH Bqt Ttl Lunch | #6201 | Calculated | `@SUM(##6211[0],##6221[0],##6231[0])` |
| GH Bqt Ttl Dinner | #6301 | Calculated | `@SUM(##6311[0],##6321[0])` |
| GH Bqt Ttl Reception | #6501 | Calculated | `@SUM(##6511[0],##6521[0])` |
| GH Bqt Ttl Meals | #6731 | Calculated | `@SUM(##6101[0],##6201[0],##6301[0],##6501[0])` |
| GH Avail Guests Bkfst | #6107 | Calculated | `##1103[-1]-##6101[0]` |
| GH Avail Guests Lunch | #6108 | Calculated | `##1103[-1]-##6201[0]` |
| GH Avail Guests Dinner | #6109 | Calculated | `##1103[0]-##6301[0]` |

**Note:** `#1103` = GH Guests at Rosewood (existing cross-property room stat KBI).

### Phase 2 — SLS Cross-Property Banquet at RW (7xxx) — 23 KBIs

| Name | Code | Type | Formula |
|---|---|---|---|
| SLS Bqt Grp Bkfst Plated | #7111 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Bkfst Buffet | #7121 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Bkfst Cont | #7131 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Lunch Plated | #7211 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Lunch Buffet | #7221 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Lunch Box | #7231 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Dinner Plated | #7311 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Dinner Buffet | #7321 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Reception Lite | #7511 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Reception Heavy | #7521 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Break | #7411 | Input | mapped from SLS BQT file |
| SLS Bqt Grp Meeting | #7601 | Input | mapped from SLS BQT file |
| SLS Bqt Tastings Bqt | #7416 | Input | mapped from SLS BQT file |
| SLS Bqt Tastings Outlets | #7415 | Input | mapped from SLS BQT file |
| SLS Bqt Ttl Bkfst | #7141 | Calculated | `@SUM(##7111[0],##7121[0],##7131[0])` |
| SLS Bqt Ttl Lunch | #7241 | Calculated | `@SUM(##7211[0],##7221[0],##7231[0])` |
| SLS Bqt Ttl Dinner | #7341 | Calculated | `@SUM(##7311[0],##7321[0])` |
| SLS Bqt Ttl Reception | #7541 | Calculated | `@SUM(##7511[0],##7521[0])` |
| SLS Bqt Ttl Meals | #7731 | Calculated | `@SUM(##7141[0],##7241[0],##7341[0],##7541[0])` |
| SLS Avail Guests Bkfst | #7107 | Calculated | `##1203[-1]-##7141[0]` |
| SLS Avail Guests Lunch | #7108 | Calculated | `##1203[-1]-##7241[0]` |
| SLS Avail Guests Dinner | #7109 | Calculated | `##1203[0]-##7341[0]` |

**Note:** `#1203` = SLS Guests at Rosewood (existing cross-property room stat KBI).

### Phase 3 — Resort Total KBIs at RW (7820–7833) — 14 KBIs

All type: Calculated.

| Name | Code | Formula | Notes |
|---|---|---|---|
| Resort TTL Occ Rooms | #7820 | `@SUM(##1001[0],##1101[0],##1201[0])` | RW+GH+SLS |
| Resort TTL Arrivals | #7821 | `@SUM(##1002[0],##1102[0],##1202[0])` | RW+GH+SLS |
| Resort TTL Guests | #7822 | `@SUM(##1003[0],##1103[0],##1203[0])` | RW+GH+SLS |
| Resort TTL Departures | #7823 | `@SUM(##1004[0],##1104[0],##1204[0])` | RW+GH+SLS |
| Resort TTL Stayovers | #7824 | `@SUM(##1005[0],##1101[-1]-##1104[0],##1201[-1]-##1204[0])` | ⚠️ see note |
| Resort TTL Avail Guest Bkfst | #7825 | `@SUM(##1008[0],##6107[0],##7107[0])` | RW+GH+SLS |
| Resort TTL Avail Guest Lunch | #7826 | `@SUM(##1009[0],##6108[0],##7108[0])` | RW+GH+SLS |
| Resort TTL Avail Guest Dinner | #7827 | `@SUM(##1010[0],##6109[0],##7109[0])` | RW+GH+SLS |
| Resort TTL GRP Bkfst | #7828 | `@SUM(##5100[0],##6101[0],##7141[0])` | RW+GH+SLS |
| Resort TTL GRP Lunch | #7829 | `@SUM(##5200[0],##6201[0],##7241[0])` | RW+GH+SLS |
| Resort TTL GRP Dinner | #7830 | `@SUM(##5300[0],##6301[0],##7341[0])` | RW+GH+SLS |
| Resort TTL GRP Reception | #7831 | `@SUM(##5400[0],##6501[0],##7541[0])` | RW+GH+SLS |
| Resort TTL Bqt Breaks | #7832 | `@SUM(##5500[0],##6411[0],##7411[0])` | RW+GH+SLS |
| Resort TTL Bqt Meals | #7833 | `@SUM(##5020[0],##6731[0],##7731[0])` | RW Ttl Covers BLDR+GH+SLS |

**⚠️ #7824 Stayovers note:** The inline `##1101[-1]-##1104[0]` may trigger a Unifocus duplication alert. If so, create intermediate yesterday KBIs first:
- `GH Occ Rms Yesterday at RW` = `##1101[-1]` → use `##[newcode][0]-##1104[0]`
- `SLS Occ Rms Yesterday at RW` = `##1201[-1]` → use `##[newcode][0]-##1204[0]`
Use next available codes in 1xxx range at RW (1105+ or 1205+ are clean).

---

## Work Plan: Resort Total Formula Updates at Other Properties

These existing formulas are missing Rosewood. Update AFTER the Rosewood KBIs are built and confirmed.

### At GH — 9 formulas to update

GH Rosewood mirrors are 9xxx. Existing RW banquet totals at GH: `#9101` (Bqt TTL Grp Bkfst), `#9201` (Lunch), `#9301` (Dinner), `#9501` (Reception).

| KBI | Code | Current Formula | New Formula |
|---|---|---|---|
| Resort TTL Avail Guest Bkfst | #7825 | `@SUM(##1021[0],##7107[0])` | `@SUM(##1021[0],##7107[0],##[RWcode][0])` |
| Resort TTL Avail Guest Lunch | #7826 | `@SUM(##1022[0],##7108[0])` | `@SUM(##1022[0],##7108[0],##[RWcode][0])` |
| Resort TTL Avail Guest Dinner | #7827 | `@SUM(##1023[0],##7109[0])` | `@SUM(##1023[0],##7109[0],##[RWcode][0])` |
| Resort TTL GRP Bkfst | #7828 | `@SUM(##5101[0],##7141[0])` | `@SUM(##5101[0],##7141[0],##9101[0])` |
| Resort TTL GRP Lunch | #7829 | `@SUM(##5201[0],##7241[0])` | `@SUM(##5201[0],##7241[0],##9201[0])` |
| Resort TTL GRP Dinner | #7830 | `@SUM(##5301[0],##7341[0])` | `@SUM(##5301[0],##7341[0],##9301[0])` |
| Resort TTL GRP Reception | #7831 | `@SUM(##5501[0],##7541[0])` | `@SUM(##5501[0],##7541[0],##9501[0])` |
| Resort TTL Bqt Breaks | #7832 | `@SUM(##5411[0],##7411[0])` | TBD — need RW Break mirror code at GH |
| Resort TTL Bqt Meals | #7833 | `@SUM(##5900[0],##7731[0])` | TBD — need RW Meals mirror code at GH |

**RW Avail Guests codes at GH** — confirm codes before updating #7825–7827.

### At SLS — 5 formulas to update

SLS already has RW GRP totals in some resort formulas (9101, 9201, 9301, 9501). Still missing:

| KBI | Code | Current Formula | Needs |
|---|---|---|---|
| Resort TTL Avail Guest Bkfst | #7825 | `@SUM(##1021[0],##7107[0])` | + RW Avail Guests Bkfst |
| Resort TTL Avail Guest Lunch | #7826 | `@SUM(##1022[0],##7108[0])` | + RW Avail Guests Lunch |
| Resort TTL Avail Guest Dinner | #7827 | `@SUM(##1023[0],##7109[0])` | + RW Avail Guests Dinner |
| Resort TTL Bqt Breaks | #7832 | `@SUM(##5411[0],##7411[0])` | + RW Break mirror |
| Resort TTL Bqt Meals | #7833 | `@SUM(##8007[0],##7731[0])` | + RW Meals mirror |

### At CTF — 9 formulas to update

CTF RW is 8xxx. RW banquet cross-property KBIs do NOT yet exist at CTF. Build 8xxx KBIs at CTF first, then update:

| KBI | Code | Current Formula | Needs |
|---|---|---|---|
| Baha Mar TTL Avail Guest Bkfst | #1008 | `@SUM(##7107[0],##9107[0])` | + RW Avail Guests Bkfst |
| Baha Mar TTL Avail Guest Lunch | #1009 | `@SUM(##7108[0],##9108[0])` | + RW Avail Guests Lunch |
| Baha Mar TTL Avail Guest Dinner | #1010 | `@SUM(##7109[0],##9109[0])` | + RW Avail Guests Dinner |
| Baha Mar TTL GRP Bkfst | #7828 | `@SUM(##7141[0],##9141[0])` | + RW Bqt mirror |
| Baha Mar TTL GRP Lunch | #7829 | `@SUM(##7241[0],##9241[0])` | + RW Bqt mirror |
| Baha Mar TTL GRP Dinner | #7830 | `@SUM(##7341[0],##9341[0])` | + RW Bqt mirror |
| Baha Mar TTL GRP Reception | #7831 | `@SUM(##7541[0],##9541[0])` | + RW Bqt mirror |
| Baha Mar TTL Bqt Breaks | #7832 | `@SUM(##7411[0],##9411[0])` | + RW Break mirror |
| Baha Mar TTL Bqt Meals | #7833 | `@SUM(##7731[0],##9731[0])` | + RW Meals mirror |

---

## BQT Mapping Status

### Problem
Banquet files for all three properties are imported into all four properties. Mapping screens only show Booking/Event Type combinations the interface has seen at least once. Initial mapping was limited to BEOs imported at that time — combinations added since are not yet mapped.

### Solution — Dummy BEO File (1975 Trick)
1. Create a dummy BEO file containing every Booking/Event Type combination for each property
2. Monali does a one-time import
3. All combinations become visible in the mapping screen
4. Delete the dummy file — does not affect any past or future planning weeks
5. Complete the mapping with all combinations now visible

**Status:** ⏳ Awaiting EMS admin contacts for SLS and GH — Valquir Correa agreed to identify and connect appropriate Delphi administrators for both properties

**Delphi coordination status:**
- Rosewood: separate companywide Delphi instance — coordination with corporate administrator underway
- SLS + Grand Hyatt: Valquir Correa connecting Pete with the appropriate administrators

### Mapping Rules
- A KBI cannot be both Calculated type AND have a BQT mapping — causes silent failure (see Structural Discoveries)
- Both forecast AND actuals mapping screens must be mapped to the same KBIs
- BQT mapping at Rosewood (GH and SLS files) is blocked pending: EMS config reports + 1975 trick import

---

## Priority / Next Steps

1. ✅ **Build 60 KBIs at Rosewood** — Done May 28. #7824 Resort TTL Stayovers left as Input pending ##1105/##1205.
2. ✅ **Update GH resort total formulas** — Done May 28. Also built #9521–9523, #9401, #9731 at GH.
3. ✅ **Update SLS resort total formulas** — Done May 28. Also built #9520–9522, #9401, #9731 at SLS.
4. ✅ **Build Rosewood banquet cross-property KBIs at CTF (8xxx) + update 9 CTF formulas** — Done May 29.
5. **Monitor Generate Projected Hours** for formula errors across all properties — next automated cycle or run on demand
6. **Build ##1105 (GH Stayovers) and ##1205 (SLS Stayovers) at RW**, then convert #7824 from Input to Calculated
7. **Map GH and SLS BQT files at Rosewood** — blocked on: EMS config reports + 1975 trick import
8. **BQT mapping audit at all properties** — EMS config reports + dummy BEO files at each property
9. **Verify with Ahmed/Val:** are resort-level Breaks and Reception totals used in any reporting? Deactivate if not.
10. **Research current USALI standard** — confirm whether Breaks count toward F&B productivity covers
11. **Future tool:** KBI Generation and Validation Artifact

### Blocked Items

| Item | Blocked By |
|---|---|
| BQT mapping at Rosewood | EMS config reports + dummy BEO import |
| BQT mapping audit (all properties) | EMS config reports + dummy BEO files |
| Tastings decision (roll into Ttl or standalone) | Pete decision pending |
| INHS mapping | Research pending |

---

## USALI 12th Edition Reference (Effective January 1, 2026)

*Source: USALI 12th Revised Edition, downloaded from Scribd May 29, 2026. Queried via claude.ai.*

### Key Definitions (Page 314)
- **Customer** — A person served in a food-and-beverage venue or function space. *Operative word: served.*
- **Meal Period** — Breakfast, lunch, or dinner, defined by time of day. Only three prescribed periods — anything else is "Other."
- **Venue** — An individual F&B facility (restaurant, lounge). Banquet rooms and function space are NOT venues.
- **Function Space** — Space between four walls used for meal functions and meeting-room setups. Customers served here count.

### Covers vs. Customers
USALI 12th edition does not use the word "covers." The standard term is **Number of Customers**. The meal period statistics table (page 316) lists Breakfast, Lunch, Dinner, and Other — four buckets only.

### What Counts as a Customer (BEO Event Type Guide)

| BEO Event Type | Food/Bev Served? | USALI Customer? | Feed Cover KBI? |
|---|---|---|---|
| Breakfast (plated, buffet, continental, box) | Yes | Yes | ✅ Yes |
| Lunch / Dinner (plated, buffet, box) | Yes | Yes | ✅ Yes |
| Reception (cocktail, full, heavy, lite) | Yes | Yes | ✅ Yes |
| Break (coffee, afternoon) | Yes | Yes | ✅ Yes |
| Meeting (room only, no F&B) | No | No | ❌ Map to Meeting KBI |
| Breakout / General Session (room only) | No | No | ❌ Map to Meeting KBI |
| Registration / Hold / Setup / Teardown | No | No | ❌ Ignore |
| In-House Meeting (INHS) | No | No | ❌ Map to Meeting KBI |

**Test:** Was food or beverage served? If yes, count attendees. If no, count is zero.

### Breaks and Labor Productivity — Important Distinction
USALI confirms breaks with food service generate customers — this is correct for **revenue tracking and average check analysis**. However, for **labor regression purposes**, breaks and plated meal service are NOT equivalent: same headcount, very different labor intensity. Including breaks in a labor regression driver can overstate banquet, culinary, and stewarding productivity. This is a Unifocus configuration decision, not a USALI one. Pete's concern is operationally valid.

### Group vs. Local Construct
The Group/Local booking type split is primarily for **Revenue Center (outlet) forecasting** — tracking in-house group covers vs. walk-in/local covers for outlet volume prediction. For **labor standards**, the distinction doesn't matter; Group + Local are combined to get total covers. The open question about whether Local is intentionally absent at GH and SLS is a forecasting question, not a labor question.

### Rosewood "Afternoon" Meal Period
Not a USALI-prescribed meal period (only Breakfast, Lunch, Dinner + Other are standard). This is a Rosewood corporate brand addition — entirely permitted under USALI, just non-standard. It would fall into "Other" under USALI statistical reporting.

### Schedule 2 (F&B Operating Statement)
Customer/cover counts do NOT appear on the face of Schedule 2. All cover statistics route to Part V (Metrics, Ratios, and Optional Schedules). Banquet productivity is measured in USALI as Revenue per Group Room Sold and Revenue per Square Foot of Function Space — not per cover. Cover-level productivity is a property/brand-level subschedule, not prescribed by USALI.

---

## Open Questions

- [ ] Are SLS and GH on a single shared Baha Mar Delphi instance?
- [ ] Is Local booking type intentionally absent at GH and SLS?
- [ ] Are Breakfast Box and Dinner Box used at GH and SLS?
- [ ] Are Cocktail and Full Reception intentionally absent at GH and SLS?
- [ ] What does SLS "Boat & Airline" event type map to?
- [ ] Tastings — roll into Ttl Lunch or remain standalone?
- [ ] INHS — confirm maps to Local at source property
- [ ] Wild-west KBIs at Rosewood (Breakout, General Session, etc.) — cleanup plan?
- [ ] CTF Breakfast Available Guests formula — verify correct
- [ ] Val to connect Pete with EMS administrators for SLS and GH
