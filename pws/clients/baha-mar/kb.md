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
| Baha Mar Casino | — | Potential future direct PWS client — **also a live referral opportunity under Pete's Unifocus Referral Agreement (contacts: Clay Price, Ed Peek).** Pete was denied a referral commission on the original Grand Hyatt Baha Mar deal (closed after he'd left Unifocus) and had to return later to fix the resulting implementation gaps. Now weighing pursuing Casino himself, this time ensuring he gets both the referral commission AND the implementation work — he's the only one left who knows how to build casino KBIs/labor standards. Full context: `pws/foundations/07-unifocus-contract-rewrite-2026.md`. |

---

## Roles & Ownership (clarified 7/20/26)

**Rosewood-specific issues (e.g. BNQ Hours):** Rosewood has transitioned out of implementation — day-to-day ownership now sits with the **Client Success Manager, Ahmed Chadid**, not Pete. Pete is assisting on the BNQ Hours issue specifically **at Ahmed's and Emre Kenan's request**, not as the property's owner.

**Pete's ongoing scope:** Campus-wide BQT KBI creation and mapping across all Baha Mar properties (Rosewood, SLS, GH, CTF) remains **Pete's responsibility until complete** — this is about blending Rosewood into the rest of the campus, distinct from Rosewood's own property-level support. Mapping work is still outstanding (see Priority/Next Steps below).

**7/20/26 BNQ Hours call:** Teams meeting organized by Ahmed Chadid, 10:30–11:00 AM, attendees Ahmed Chadid, Pete Castellano, Emre Kenan (cc Aaron Longley, Megan Knowles). Transcript pending — Pete to share once available.

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
| Monali Desai | Lead, Data Integration & Interface Implementation | Unifocus | Interface/imports authority; handles one-time BEO imports for mapping setup |
| Emre Kenan | Director, Finance Business Partner | Rosewood Baha Mar | Emre.Kenan@rosewoodhotels.com \| +1 242 788 7500 (office) \| +1 242 824 5857 (mobile) |
| Aaron Longley | — (role TBD) | Rosewood Baha Mar | Aaron.Longley@rosewoodhotels.com |
| Megan Knowles | — (role TBD) | Rosewood Baha Mar | Megan.Knowles@rosewoodhotels.com |
| Sherrell Sullivan | Director of Rooms | Rosewood Baha Mar | Added 8/12/26 — butler standard review call. Transcript auto-labeled her "Cheryl" (transcription mishearing of "Sherrell"). |

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
| UNIFOCUS-246757 | Banquets Forecast not importing from Delphi — Rosewood (Megan Knowles) | ✅ Resolved — confirmed by Pete 8/2/26, direct check in Unifocus |

**246757 timeline reconciliation:** Megan Knowles reported (~5/21/26) that the Delphi banquet forecast wasn't coming in at all. Unifocus's Data Integration team attributed this to an AWS-migration config change that broke the Delphi import parser, corrected it, and closed the ticket 5/21/26 (72-hr reopen window, now long expired). A related but distinct symptom — **Bartender standard not populating in Budgeter** — was raised by Emre Kenan on 7/14/26. Ahmed Chadid's 7/15/26 diagnosis (Ttl reception KBIs deriving as a percentage of an empty input KBI, plus Group-side zero data and Local-side duplicate sub-type splits, see item 17) explained the mechanics, but **the actual root cause was in how Emre was importing the budgeted KBIs — identified and resolved through Pete's own troubleshooting during the 7/20/26 discussion**, not by Ahmed's diagnosis alone. Emre's follow-up action (updating Rosewood's budget file to import only into the four Ttl-level KBIs, #5100/5200/5300/5400) implemented the corrected import method Pete's troubleshooting identified. **Confirmed 8/2/26 (Pete, direct Unifocus check):** granular KBI data is populating correctly — Group vs. Local, and Plated/Buffet/Boxed splits are all working. Not separately re-confirmed on this pass: Bartender labor standard generating hours, Cook I standard (should mirror Cook II), Butcher's hourly rate — flag these for a quick look next time Pete is in the system.

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
17. ✅ **Rosewood BNQ Hours — Bartender standard not populating in Budgeter** — flagged by Emre Kenan 7/14/26 (see ticket UNIFOCUS-246757, Tickets table above). Ahmed Chadid's 7/15/26 diagnosis explained the KBI mechanics (Ttl reception KBIs deriving as a percentage of an empty input KBI), but **the real problem was in how Emre was importing the budgeted KBIs — found and resolved by Pete's own troubleshooting during the 7/20/26 call**, not Ahmed's diagnosis alone. Emre's resulting fix (import covers only into the four Ttl-level KBIs, #5100/5200/5300/5400) implemented that correction. **Granular KBI data (Group/Local, Plated/Buffet/Boxed) confirmed working by Pete 8/2/26 via direct Unifocus check.** Still worth a quick separate look: whether the Bartender standard itself is now generating non-zero hours, and whether Cook I / Butcher's hourly rate (same original 7/14 email, resolved per Ahmed on the 7/20 call but not independently re-verified). **Full call notes:** `2026-07-20_bnq-hours-call-notes.md`. Emre's homework: pull last year's full Delphi history per meal period to calculate real Plated/Buffet/Continental and Cocktail/Light/Full/Heavy percentages (not guesses), then maintain covers only at #5100/#5200/#5300/#5400 going forward — Group/Local only matters for weekly outlet forecasting, never again after Revenue Centers generate. **Cook I labor standard resolved same call** — Ahmed copying Cook II's standard to Cook I (same job). **Butcher's missing hourly rate (from the original 7/14 email) — not confirmed fixed on this call, still needs a check.** Root cause diagnosed by Ahmed 7/15/26: Bqt Ttl reception KBIs (Reception/Cocktails/Full/Heavy/Lite) are configured as percentages of Ttl Receptions, but Ttl Receptions is an **input KBI with no values loaded** — percentage of zero = zero. **Fix:** stop deriving Ttl lines as percentages; instead allocate percentages directly off Bqt Grp and Bqt Loc reception volumes separately (e.g. Bqt Grp Lite = 95% of Grp Reception, Bqt Loc Lite = 94% of Loc Reception), then make Ttl KBIs a simple sum of Grp + Loc — that sum is what the labor standards actually reference. **Also flagged in the same ticket, still open:** Cook I has no labor standard set at all; Butcher is missing its hourly rate (easy fix). Discussed live on a call with Ahmed Chadid + Emre Kenan, Monday 7/20/26 11:30 AM.

    **Confirmed against the actual `Unifocus forecast 2026.csv` export Emre uploaded (7/20/26) — two distinct issues, not one:**
    - **Group side (#5401 Bqt Grp 4 Reception + its Cocktail/Full/Heavy/Lite lines #5411/#5431/#5441/#5421):** every value across all 12 periods is literally zero. Confirms Ahmed's diagnosis exactly — no Group reception forecast exists at all right now.
    - **Local side — a second, separate problem found in the data, not yet raised by Ahmed:** #5402 (Bqt Loc 4 Reception, the Local total) *does* carry real forecast numbers in several periods. But #5432 (Loc Full), #5442 (Loc Heavy), and #5422 (Loc Lite) are not percentage splits of that total — they are **exact line-for-line duplicates of #5402** in every period (Cocktail #5412 stays zero). If the eventual fix sums Full+Heavy+Lite per Ahmed's model, this would **triple-count** Local reception volume. This sub-type duplication needs correcting on the Local side too, separately from the Group-side zero-input problem and the Ttl-level summation fix.
    - **Ttl (resort combined) level (#5400 Bqt Ttl 4 Reception + Cocktail/Full/Heavy/Lite #5410/#5430/#5440/#5420):** all zero in every period, across the board — confirms the Ttl level isn't currently summing Grp+Loc at all (consistent with Ahmed's proposed fix: Ttl should just be Grp+Loc summed, not calculated independently).
    - **Net picture for the fix:** (1) get real Group reception forecast data loaded, (2) rebuild Local's Full/Heavy/Lite as genuine splits of Local total (not duplicates), (3) wire Ttl as a straight sum of corrected Grp + corrected Loc. All three need to happen — fixing only the Ttl formula per Ahmed's original email would still be wrong today because the Local sub-type inputs feeding it are broken.

    **Resolution decided on the 7/20/26 call:** Emre will update Rosewood's budget file to **import only into the four Ttl-level KBIs — #5100 (Bkfst), #5200 (Lunch), #5300 (Dinner), #5400 (Reception)**. Unifocus formulas then split each Ttl down into Plated/Buffet/Continental (meal periods) and the reception granularity levels (Cocktail/Full/Heavy/Lite) — and, per the existing documented KBI convention (see "Standard Banquet KBI Numbering Pattern" above), presumably also cascade into Grp/Loc for revenue-center forecasting, since **Group and Local are meant to be added back together for labor standards, not entered as separate inputs**. This confirms the root problem all along: Rosewood's forecast was uploaded into #5402 (Local) instead of #5400 (Ttl) — a wrong-KBI data-entry error, not a fundamentally different design needed. Resolves the open question above — no rebuild of the KBI structure needed, just correcting where the budget file's data lands.

18. 🟡 **Rosewood "Stations" tracking request (breakfast/lunch/dinner stations, e.g. carving/cake-cutting)** — raised by property contact Lisette, discussed on the 7/20/26 call. Would require new KBIs mapped to jobs across all 4 properties (16+ mappings). Parked — not decided or scoped yet. Ahmed's suggested alternative: fold stations into existing "Plated" tier rather than building new granularity, unless a station genuinely needs a distinct culinary/server role. Full detail: `2026-07-20_bnq-hours-call-notes.md`.
20. 🔴 **Rosewood Rooms Division restructuring — deadline-driven, now confirmed billable, active config build underway.** Rosewood moving to an all-butler room model; Concierge + Guest Relations merging into one team under butlers. Follow-up call held 7/23/26 (1hr9min, Ahmed Chadid, Aaron Longley, Emre Kenan, Megan Knowles, Pete) locked in concrete numbers: **22 senior + 16 new junior butlers** (same tasks, different pay — blended rate 1653 until new job codes go live in Unifocus + Infor); guest relations coordinators → junior butlers; Concierge/butler coordinators renamed **guest relations associates**, moved to **Department 108**; separate 2027 budget/labor-standard sets being built alongside the untouched 2026 structure. **Rate resolved 7/24/26:** Ahmed and Pete agreed **$1,200/day**, matching what Pete previously charged Grand Hyatt Baha Mar (direct client) for comparable work — see `pws/billing/rate-table.md`. **Billed through Unifocus (UF)**, not direct to Rosewood. Hard deadline unchanged: Rosewood's **first 2027 payroll budget submission, end of August 2026.**

    **8/11/26 — Emre's pre-call email** (to Pete + Ahmed, cc Sherrell/Aaron/Megan) supplied the ratio Rosewood wanted going in: **1.5 hrs/occupied room per butler**, and independent FTE math (72% occupancy × 1.5 hrs × 1.4 staffing factor) landing on **42 total FTE** — matching 23 senior + 19 junior, not the 22/16 locked 7/23. New detail: **butler-service go-live targeted November 2026, before Thanksgiving** (distinct from the Aug-2026 payroll-budget-submission deadline). See `2026-08-11_emre-precall-email-butler-standard.md`.

    **8/11/26 — Sherrell Sullivan's Guest Relations Associate FTE proposal** (forwarded by Emre 8/12/26 9:45 AM) — the promised companion labor standard for the merged Concierge + PBX/Call Center function (Dept 108, separate track from Butlers/Dept 107). Minimum manning: **8 FTE at 50% occupancy** (4 Guest Experience/Concierge + 4 PBX), **12 FTE at 70% occupancy** (6 + 6). PBX's 3-shift 24-hour floor is largely fixed regardless of occupancy; only relief/peak-call buffer scales. No 90–100% ceiling given yet — will need a breakpoint build-out like the Butler standard. Unconfirmed: whether PBX is definitely folding into Dept 108 alongside Concierge, since PBX wasn't explicitly named in the 7/23/8/12 department-merge discussions. Full detail: `2026-08-11_sherrell-guest-relations-fte-proposal.md`.

    **8/12/26 — Butler Standard Review call (Emre Kenan, Sherrell Sullivan/Director of Rooms, Pete)** began the actual Unifocus config build. **Headcount confirmed 23 senior + 19 junior = 42** (7/23's 22/16 was an earlier rougher estimate, superseded). Key decisions: (1) only ONE new job code needed — junior butler under Dept 107, placeholder name "Butler 2," senior code unchanged; (2) Guest Relations 2.0 builds under existing **Dept 108** rather than a new department number; (3) **labor standard architecture locked in — Cook I/II/III precedent**: standard lives in ONE job (senior Butler) only, junior butler hours force-filled via permanent schedules in Employee Maintenance, Budgeter uses a blended rate calculated outside Unifocus rather than trying to auto-split — chosen because the senior:junior ratio will drift over time and a hard-coded split would need constant re-tuning; (4) new butler ratio target ~1 per 5 occupied rooms (1.5 hrs/room) across AM/PM/overnight + a separate fixed Lobby Host shift, at 224 rooms landing near 20 AM / 21 PM shifts at full house; (5) overnight redesigned to minimum 2, stepping to 3 around ~75% occupancy (unconfirmed exact breakpoint). Access-control action item: **Megan Knowles** auditing current Butler-job access before the new junior job goes live (corrected 8/14/26 — originally attributed to Sherrell on the call), so access isn't inherited automatically. **Status 8/14/26: "Butler 2" job created live under Dept 107, left empty pending Megan's audit.**

    **8/12/26, 6:25 PM — Emre delivered the base manning breakpoint** (same evening as promised): **9 FTE floor** below 60% occupancy (4 AM shifts + 4 PM shifts + 1 overnight, 0 Lobby Host), scaling to **~44–45 FTE at full house (224 rooms)** per the call's live math. **Two corrections to the call's live assumptions, both resolved in favor of this follow-up email per Pete's rule that the most recent email rules:** (1) Lobby Host is NOT a fixed daily shift — it only activates above **60% occupancy (134 rooms)**; (2) **overnight = 1 shift at the floor**, not the "minimum 2" floated live on the call. Mid-curve breakpoints (including where overnight steps up from 1) still need to be built. **🔴 Hard deadline: Pete must have this configured in Unifocus Wednesday, August 19, 2026.** Building in Standard Set **"Budget Standards 2027"** (created by Pete 8/11/26, sandboxed alongside untouched 2026 structure). Emre's email flagged a **Friday 8/14 9am connect** if no Thursday follow-up was needed — confirm whether that happened and whether it refined the curve further. Full detail: `2026-08-12_emre-butler-base-manning-breakpoint.md`.

    **8/14/26 — config session:** "Butler 2" job created live under Dept 107, left empty pending Megan Knowles's access audit (corrected from Sherrell). Current/baseline Butler standard captured for reference (exact volume-range/hours values, confirms qualitative history) — see `2026-08-14_current-butler-standard-baseline.md`. Flags a driver-KBI inconsistency to resolve in the redesign: AM shift uses Occupancy %, other three shifts use absolute Hotel Rooms count.

    **8/14/26 — new standard built.** Butler standard rebuilt in Budget Standards 2027: AM/PM ramp 4→20 shifts across 17 tiers (~11-room steps), Overnight 1→3 shifts (floor matches Emre's email, ceiling matches call's intent, step points at 50%/75% occupancy), Lobby Host activates at 134 rooms (exact match to 60% trigger). Confirms both known anchors exactly: 9-shift floor, 44-shift ceiling. Driver KBI unified to Hotel Rooms count across all 4 shifts (was previously mixed with Occupancy %). See `2026-08-14_new-butler-standard-built.md`.

    **8/14/26, 8–9am — "Changes to Rooms Labour" follow-up call.** Tested the Butler standard live: **93,750 annual hours ÷ 1,980 = 47.35 average FTE** vs. target 44 — running slightly generous, expected/acceptable for a new untested model; open question (first-4-shifts capacity at 45 rooms) waits on a department manager back from vacation. **🔴 Critical process rule confirmed:** Budget Standards 2027 and Master (live 2026) are separate — Emre will eventually overwrite Master wholesale with 2027's contents (not before October), so no unrelated Master edits until then, and anything needing to take effect now must be changed in both. **Deadline clarified: Emre starts his 2027 payroll budget Monday 8/17/26** using this standard (softer than, and earlier than, the previously tracked Wed 8/19 date). **Guest Experience Associate job also built this session** (renamed unused "PBX Operator" → "\*Guest Experience Associate," built in Master's Unused Jobs area, then moved into Budget Standards 2027 same day — both jobs now consolidated in the same standard set): 5 shifts total — 3 PBX (occupied-rooms driven: 0700 1/2/3 at 75/167 rooms, 1500 1/2/3 at 45/167 rooms, 2300 flat 1) + 2 Pre-Planning (arrivals driven: 0700 flat 2, 1300 1/2/3 at 29/64 arrivals). Max headcount (12) matches Sherrell's original 70%-occupancy FTE proposal almost exactly. See `2026-08-14_friday-followup-call-butler-test-and-guest-experience.md`.

    **Full detail (all Butler thread files):** `2026-07-20_bnq-hours-call-notes.md` §7 (origin), `2026-07-23_rosewood-butler-restructuring-call.md` (numbers locked, now superseded), `2026-08-11_emre-precall-email-butler-standard.md`, `2026-08-12_rosewood-butler-standard-review-call.md` (config build begins), `2026-08-12_emre-butler-base-manning-breakpoint.md` (breakpoint data), `2026-08-14_current-butler-standard-baseline.md` (as-configured baseline snapshot), `2026-08-14_new-butler-standard-built.md` (new standard built), `2026-08-14_friday-followup-call-butler-test-and-guest-experience.md` (tested + Guest Experience Associate built).
21. **Rosewood Delphi granularity restoration — status unclear, needs confirmation.** Delphi was cut back to minimal event-classification granularity by someone before Pete's return (~mid-2025); Pete started an effort ~1 year ago to restore Plated/Buffet/Continental/Boxed + Heavy/Full/Light/Cocktail granularity to match Unifocus's original config. Megan has been pushing this with Rosewood but it's unclear if it was ever finished. **Constraint to remember:** any Delphi classification rename requires remapping ~4 KBIs per property × 4 properties (16+ changes) since descriptions must match Unifocus exactly — strong preference is getting Rosewood's Delphi text to match Unifocus, not the reverse.

### Blocked Items

| Item | Blocked By |
|---|---|
| BQT mapping (all properties) | EMS config reports + dummy BEO import — waiting on Rhondi/Jon |
| Tastings decision | Pete decision pending |
| INHS mapping | Research pending |
| Boat & Airline mapping | Pete + property decision |
| Stations tracking (Rosewood) | Property (Lisette) to clarify exact requirement before scoping |
| Delphi granularity restoration | Confirmation needed on whether prior effort was completed |

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
