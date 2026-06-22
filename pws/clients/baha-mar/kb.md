# Baha Mar Campus — Knowledge Base

Last updated: 2026-06-10

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
| Valquir Correa (Val) | VP Corporate Finance | Baha Mar (campus-level) | valquir.correa@bahamar.com \| +1 242 788 8009 \| +1 242 376 5910 |
| Ahmed Chadid | Client Success Manager | Unifocus | AChadid@unifocus.com \| O: 972-512-5167 |
| Gia Turnquest | Asst. Director of Finance | SLS Baha Mar | Gia.Turnquest@slshotels.com \| +1 242 788 7271 |
| Adriel Marshall | Asst. Director Revenue Management | SLS Baha Mar | adriel.marshall@slshotels.com \| +1 242 788 7248 |
| Lolita Marshall | — | SLS Baha Mar | lolita.marshall@slshotels.com |
| Christian Laskaros | — | SLS Baha Mar | Christian.LASKAROS@slshotels.com |
| Rhondi Hobson | — (EMS contact — role TBD) | SLS Baha Mar | Rhondi.HOBSON@slshotels.com |
| Jon Finch | — (EMS contact — role TBD) | Grand Hyatt Baha Mar | jon.finch@hyatt.com |
| Monali | — | Unifocus (imports team) | Handles one-time BEO imports for mapping setup |

**Needed — not yet obtained:**
- EMS (Delphi) administrator for SLS Baha Mar — Val reached out to Rhondi Hobson 5/26/26; Pete followed up directly to Rhondi + Jon 6/10/26
- EMS (Delphi) administrator for Grand Hyatt Baha Mar — Val reached out to Jon Finch 5/26/26; Pete followed up directly to Rhondi + Jon 6/10/26
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
| Jun (confirmed 6/10/26) | RW | GH Occ Rms Yesterday at RW | #1105 | Calculated | `##1101[-1]` | ✅ Done |
| Jun (confirmed 6/10/26) | RW | GH Stayovers at RW | #1106 | Calculated | `##1105[0]-##1104[0]` | ✅ Done |
| Jun (confirmed 6/10/26) | RW | SLS Occ Rms Yesterday at RW | #1205 | Calculated | `##1201[-1]` | ✅ Done |
| Jun (confirmed 6/10/26) | RW | SLS Stayovers at RW | #1206 | Calculated | `##1205[0]-##1204[0]` | ✅ Done |
| Jun (confirmed 6/10/26) | RW | Resort TTL Stayovers (converted Input→Calculated) | #7824 | Calculated | `@SUM(##1005[0],##1106[0],##1206[0])` | ✅ Done |

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
| Resort TTL Stayovers | #7824 | `@SUM(##1005[0],##1106[0],##1206[0])` | ✅ Calculated — uses intermediate KBIs ##1105/##1106/##1205/##1206 |
| Resort TTL Avail Guest Bkfst | #7825 | `@SUM(##1008[0],##6107[0],##7107[0])` | RW+GH+SLS |
| Resort TTL Avail Guest Lunch | #7826 | `@SUM(##1009[0],##6108[0],##7108[0])` | RW+GH+SLS |
| Resort TTL Avail Guest Dinner | #7827 | `@SUM(##1010[0],##6109[0],##7109[0])` | RW+GH+SLS |
| Resort TTL GRP Bkfst | #7828 | `@SUM(##5100[0],##6101[0],##7141[0])` | RW+GH+SLS |
| Resort TTL GRP Lunch | #7829 | `@SUM(##5200[0],##6201[0],##7241[0])` | RW+GH+SLS |
| Resort TTL GRP Dinner | #7830 | `@SUM(##5300[0],##6301[0],##7341[0])` | RW+GH+SLS |
| Resort TTL GRP Reception | #7831 | `@SUM(##5400[0],##6501[0],##7541[0])` | RW+GH+SLS |
| Resort TTL Bqt Breaks | #7832 | `@SUM(##5500[0],##6411[0],##7411[0])` | RW+GH+SLS |
| Resort TTL Bqt Meals | #7833 | `@SUM(##5020[0],##6731[0],##7731[0])` | RW Ttl Covers BLDR+GH+SLS |

**Note on #7824:** The inline `-1` offset in the stayover formula would have triggered a Unifocus duplication alert. Resolved by building intermediate KBIs ##1105 (GH Occ Rms Yesterday), ##1106 (GH Stayovers), ##1205 (SLS Occ Rms Yesterday), ##1206 (SLS Stayovers) at RW first, then using those in the formula. ##1005 = "01-RW Hotel Stay Throughs" — Rosewood's own term for stayovers. Notes field in Unifocus shows `@SUM(##1005[0],##1105[0],##1205[0])` — minor mislabeling in the notes, actual formula is correct.

---

## Resort Total Formula Updates — Confirmed Complete (May 28–29, 2026)

All resort total formulas at GH, SLS, and CTF confirmed updated to include Rosewood, per config review 6/10/26. Two bugs identified at GH; one minor SLS issue to monitor.

### At GH — ✅ Complete (two issues need correction)

| KBI | Code | Confirmed Formula | Status |
|---|---|---|---|
| Resort TTL Avail Guest Bkfst | #7825 | `@SUM(##1021[0],##7107[0],##9521[0])` | ✅ |
| Resort TTL Avail Guest Lunch | #7826 | `@SUM(##1022[0],##7108[0],##9522[0])` | ✅ |
| Resort TTL Avail Guest Dinner | #7827 | `@SUM(##1023[0],##7109[0],##9523[0])` | ✅ |
| Resort TTL GRP Bkfst | #7828 | `@SUM(##5101[0],##7141[0],##9101[0])` | ✅ |
| Resort TTL GRP Lunch | #7829 | `@SUM(##5201[0],##7241[0],##9201[0])` | ✅ |
| Resort TTL GRP Dinner | #7830 | `@SUM(##5301[0],##7341[0],##9301[0])` | ✅ |
| Resort TTL GRP Reception | #7831 | `@SUM(##5501[0],##7541[0],##9501[0])` | ✅ |
| Resort TTL Bqt Breaks | #7832 | `@SUM(##5411[0],##7411[0],##9401[0])` | ✅ |
| Resort TTL Bqt Meals | #7833 | `@SUM(##5900[0],##7731[0],##9731[0])` | 🔴 Bug — see below |

**🔴 Bug — GH #7833 wrong GH component.** `##5900` = GH Bqt Ttl ALL Covers (includes breaks and meetings — confirmed formula `@SUM(##5411,##5601,##5301,##5201,##5501,##5101,##5603)`). Should be `##5905` = GH Bqt TTL Meals (B+L+D+R only). At SLS and RW, this KBI correctly uses a meals-only total. Fix: change `##5900[0]` → `##5905[0]` in #7833.

**🟡 Issue — GH SLS HSK Stayover #7012 not corrected.** Formula still `##7001[-1]*.6` (yesterday's SLS occupied rooms). CTF already has the corrected version: `##7010[0]*.6` (today's SLS stayovers). GH was missed. Fix: change to `##7010[0]*.6`.

**🟡 Pre-existing — GH SLS Arr+Dep #7007 formula mismatch.** KBI named "SLS 19. Hotel Arr + Dep" but formula is `@SUM(##1002[0], ##1004[0])` — uses GH codes (1xxx), not SLS codes. Should likely be `@SUM(##7002[0], ##7004[0])`. Confirm with Ahmed before changing.

### At SLS — ✅ Complete

| KBI | Code | Confirmed Formula | Status |
|---|---|---|---|
| Resort TTL Avail Guest Bkfst | #7825 | `@SUM(##1021[0],##7107[0],##9520[0])` | ✅ |
| Resort TTL Avail Guest Lunch | #7826 | `@SUM(##1022[0],##7108[0],##9521[0])` | ✅ |
| Resort TTL Avail Guest Dinner | #7827 | `@SUM(##1023[0],##7109[0],##9522[0])` | ✅ |
| Resort TTL Bqt Breaks | #7832 | `@SUM(##5411[0],##7411[0],##9401[0])` | ✅ |
| Resort TTL Bqt Meals | #7833 | `@SUM(##8007[0],##7731[0],##9731[0])` | ✅ |

**Note — SLS #1023 Available Guests Dinner:** Formula is `##1003[0]-##8003[0] - ##5521[0]` — subtracts SLS Dinner covers AND SLS Reception Heavy covers from available guests. Intentional; present in live config. Reflects that Reception Heavy dinner-period service competes for the same covers.

**🟡 Monitor — SLS Rosewood 06. Stayovers #9006 formula prefix.** Config export shows `=##9005[0] - ##9004[0]` with a leading `=`. Almost certainly a CSV export artifact (Excel treats leading `=` as formula indicator). Verify the formula displays correctly in Unifocus UI — if it shows the `=` there too, remove it.

### At CTF — ✅ Complete (May 29)

| KBI | Code | Confirmed Formula | Status |
|---|---|---|---|
| Baha Mar TTL Avail Guest Bkfst | #1008 | `@SUM(##7107[0],##9107[0],##8107[0])` | ✅ |
| Baha Mar TTL Avail Guest Lunch | #1009 | `@SUM(##7108[0],##9108[0],##8108[0])` | ✅ |
| Baha Mar TTL Avail Guest Dinner | #1010 | `@SUM(##7109[0],##9109[0],##8109[0])` | ✅ |
| Baha Mar TTL GRP Bkfst | #7828 | `@SUM(##7141[0],##9141[0],##8101[0])` | ✅ |
| Baha Mar TTL GRP Lunch | #7829 | `@SUM(##7241[0],##9241[0],##8201[0])` | ✅ |
| Baha Mar TTL GRP Dinner | #7830 | `@SUM(##7341[0],##9341[0],##8301[0])` | ✅ |
| Baha Mar TTL GRP Reception | #7831 | `@SUM(##7541[0],##9541[0],##8501[0])` | ✅ |
| Baha Mar TTL Bqt Breaks | #7832 | `@SUM(##7411[0],##9411[0],##8411[0])` | ✅ |
| Baha Mar TTL Bqt Meals | #7833 | `@SUM(##7731[0],##9731[0],##8731[0])` | ✅ |

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

1. ✅ **Build 60 KBIs at Rosewood** — Done May 28.
2. ✅ **Update GH resort total formulas** — Done May 28. Built #9521–9523, #9401, #9731 at GH.
3. ✅ **Update SLS resort total formulas** — Done May 28. Built #9520–9522, #9401, #9731 at SLS.
4. ✅ **Build Rosewood banquet cross-property KBIs at CTF (8xxx) + update 9 CTF formulas** — Done May 29.
5. ✅ **Monitor Generate Projected Hours** — ticket UNIFOCUS-247305 resolved 5/26/26; formula errors cleared.
6. ✅ **Build ##1105/##1106/##1205/##1206 at RW; convert #7824 to Calculated** — Confirmed complete 6/10/26.
7. 🔴 **Fix GH #7833** — Change `##5900[0]` → `##5905[0]`. Breaks and Meetings currently inflating resort banquet meal count at GH. Billable; fix at next Unifocus session.
8. 🟡 **Fix GH SLS HSK Stayover #7012** — Change `##7001[-1]*.6` → `##7010[0]*.6`. CTF already corrected; GH was missed.
9. 🟡 **Confirm GH SLS Arr+Dep #7007 formula** — Named "SLS Hotel Arr+Dep" but uses GH 1xxx codes. Verify with Ahmed before changing.
10. **Await EMS admin response** — Email sent directly to Rhondi Hobson (SLS) + Jon Finch (GH) on 6/10/26. Once they respond: get full Booking/Event Type list from Delphi, create dummy BEO files with every combination, coordinate 1975 trick import with Monali.
11. **BQT mapping audit at all properties** — blocked on EMS config reports + dummy BEO files.
12. **Boat & Airline decision** — SLS #5522 is currently an orphaned input not feeding any labor total (same at GH #7522, CTF #7522). Confirm intentional exclusion OR map to appropriate cover category. Likely crew meals; if excluded by design, document it.
13. **Wild-west KBIs at Rosewood** — full list in config: Breakout, General Session, Activity/Tournament, Afternoon, Hold, Hold 24 Hour, Office/Ready Room, Registration, Setup (plus Local equivalents). Cleanup plan: deactivate (z-prefix) if non-operational, or confirm which types warrant cover entry.
14. **Tastings decision** — roll into Ttl Lunch or remain standalone? Pete decision pending.
15. **Verify SLS Rosewood 06 Stayovers `=` prefix** — check formula in Unifocus UI. If `=` appears there, remove it; if not, it was a CSV export artifact and no action needed.
16. **Future tool:** KBI Generation and Validation Artifact.

### Blocked Items

| Item | Blocked By |
|---|---|
| BQT mapping (all properties) | EMS config reports + dummy BEO import — waiting on Rhondi/Jon |
| Tastings decision | Pete decision pending |
| INHS mapping | Research pending |
| Boat & Airline mapping | Pete + property decision |

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

**Note on Cocktail Reception:** A cocktail event with no food service = 0 USALI customers even though guests are present. Only receptions with food (Lite, Full, Heavy) generate a customer count.

### Breaks and Labor Productivity — Important Distinction
USALI confirms breaks with food service generate customers — this is correct for **revenue tracking and average check analysis**. However, for **labor regression purposes**, breaks and plated meal service are NOT equivalent: same headcount, very different labor intensity. Including breaks in a labor regression driver can overstate banquet, culinary, and stewarding productivity. This is a Unifocus configuration decision, not a USALI one. Pete's concern is operationally valid.

### Group vs. Local Construct
The Group/Local booking type split is primarily for **Revenue Center (outlet) forecasting** — tracking in-house group covers vs. walk-in/local covers for outlet volume prediction. For **labor standards**, the distinction doesn't matter; Group + Local are combined to get total covers. The open question about whether Local is intentionally absent at GH and SLS is a forecasting question, not a labor question.

### Banquet Service Type Framework (Pete's Standard)

**Meal period order for KBI numbering:** Breakfast → Lunch → Dinner → Late. Then: Receptions, Breaks, Meetings.

**Service styles within each meal period** (drive different labor intensity — not all brands track these):
- Plated, Buffet, Continental, Box, Special, Wedding

**Reception types** (level of service matters for labor):
- Cocktail (beverages only, NO food → 0 USALI customers)
- Light/Lite (light food service)
- Full
- Heavy

**Rosewood brand meal periods** (non-standard, brand additions beyond USALI): Breakfast, Lunch, Afternoon, Dinner, Late, Overnight. "Afternoon" and "Overnight" are not USALI-prescribed — they fall into USALI's "Other" bucket.

### Rosewood "Afternoon" Meal Period
Not a USALI-prescribed meal period (only Breakfast, Lunch, Dinner + Other are standard). This is a Rosewood corporate brand addition — entirely permitted under USALI, just non-standard. It would fall into "Other" under USALI statistical reporting.

### Schedule 2 (F&B Operating Statement)
Customer/cover counts do NOT appear on the face of Schedule 2. All cover statistics route to Part V (Metrics, Ratios, and Optional Schedules). Banquet productivity is measured in USALI as Revenue per Group Room Sold and Revenue per Square Foot of Function Space — not per cover. Cover-level productivity is a property/brand-level subschedule, not prescribed by USALI.

---

## Structural Facts Confirmed — 6/10/26 Config Review

These were previously open questions — now answered from live config exports pulled 10:01–10:05 AM 6/10/26.

| Question | Answer |
|---|---|
| Local booking type absent at GH and SLS? | **Confirmed absent.** Both have Group-only banquet KBIs. Rosewood has full Group + Local split (Bqt Grp + Bqt Loc series, summed in Bqt Ttl). This is a BQT mapping gap — when Local-type BEOs arrive from GH/SLS, there are no KBIs to receive them. |
| Breakfast Box and Dinner Box absent at GH and SLS? | **Confirmed absent.** Both have Lunch Box Meal only (#5231). Rosewood has Bkfst Box (#5151), Lunch Boxed (#5251), Dinner Box (#5351). |
| Cocktail and Full Reception absent at GH and SLS? | **Confirmed absent.** Both have Lite (#5511) and Heavy (#5521) only. Rosewood has Cocktail (#5411), Lite (#5421), Full (#5431), Heavy (#5441). |
| What does SLS "Boat & Airline" event type map to? | **Orphaned input — maps to nothing.** `SLS Bqt Grp Boat & Airline #5522` at SLS is an Input KBI not included in any total, reception formula, or labor calculation. Mirrored at GH (#7522) and CTF (#7522) — same state. Likely crew meals, intentionally excluded. Needs formal decision and documentation. |
| CTF Breakfast Available Guests formula correct? | **Confirmed correct.** `#1008 = @SUM(##7107[0],##9107[0],##8107[0])` — SLS + GH + RW all three included. |
| ##1105/##1205/##1106/##1206 built at RW? #7824 Calculated? | **Confirmed complete.** All four intermediate KBIs present. #7824 is Calculated type using `@SUM(##1005[0],##1106[0],##1206[0])`. |

## Rosewood Banquet Structure — Key Differences from GH/SLS

| Feature | Rosewood | GH | SLS |
|---|---|---|---|
| Booking types | Group + Local (both, with Ttl summaries) | Group only | Group only |
| Box meals | Bkfst Box, Lunch Boxed, Dinner Box | Lunch Box only | Lunch Box only |
| Reception types | Cocktail, Lite, Full, Heavy | Lite, Heavy | Lite, Heavy |
| "Afternoon" meal period | Yes (#5611 Grp, #5213 Loc) | No | No |
| INHS (In-House Meeting) | No | Yes (#5603) | Yes (#5606) |
| Boat & Airline | No | SLS mirror only (#7522) | Yes (#5522) |
| Wild-west event types | Yes (Activity, Breakout, General Session, Afternoon, Hold, Hold 24 Hr, Office/Ready Room, Registration, Setup — both Grp and Loc) | No | No |

**BQT mapping implication:** When EMS data arrives, GH and SLS BEO files may contain Local-type events with no target KBIs. Decision needed: add Local KBIs at GH and SLS, or map Local BEOs to Group KBIs as a workaround.

## Open Questions

- [ ] Are SLS and GH on a single shared Baha Mar Delphi instance?
- [x] Is Local booking type intentionally absent at GH and SLS? → **Confirmed absent** — now a BQT mapping gap to resolve
- [x] Are Breakfast Box and Dinner Box absent at GH and SLS? → **Confirmed absent** (Lunch Box only)
- [x] Are Cocktail and Full Reception absent at GH and SLS? → **Confirmed absent**
- [ ] **Boat & Airline** — confirm intentional labor exclusion OR map to cover category (Priority #12)
- [ ] Tastings — roll into Ttl Lunch or remain standalone?
- [ ] INHS — confirm maps to Local at source property
- [ ] Wild-west KBIs at Rosewood — cleanup plan (Priority #13)
- [x] CTF Breakfast Available Guests formula → **Confirmed correct** (#1008 = all three properties)
- [ ] EMS administrators for SLS and GH — email sent directly to Rhondi Hobson + Jon Finch 6/10/26; awaiting response
- [ ] Confirm GH SLS Arr+Dep #7007 formula (Priority #9)

---

*© Peter A. Castellano. All rights reserved.*
