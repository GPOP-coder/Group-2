# Baha Mar Campus — Unifocus KBI Change Log

**Project:** Rosewood Database Integration / Campus KBI Alignment  
**Consultant:** Pete Castellano, Platinum Workforce Strategies  
**Period Covered:** May 13 – June 10, 2026  
**Properties:** Rosewood Baha Mar (RW) · Grand Hyatt Baha Mar (GH) · SLS Baha Mar (SLS) · CTF Operations (CTF)  
**Document compiled:** June 10, 2026

---

## Project Scope Summary

| Category | Count | Properties |
|---|---|---|
| KBIs created (new) | 100 | RW, GH, SLS, CTF |
| KBIs modified (formula / code corrections) | 9 | RW, SLS, CTF |
| Resort total formulas updated (added Rosewood) | 23 | GH, SLS, CTF |
| KBIs deactivated | 1 | CTF |
| KBIs converted (Input → Calculated) | 1 | RW |

**Objective:** Complete the integration of Rosewood Baha Mar into the shared Unifocus campus database — correcting stayover logic errors at SLS and CTF, building all cross-property KBIs at Rosewood, and updating all campus-wide resort total formulas to include Rosewood.

---

## Session 1 — May 13, 2026 · Early Corrections and Rosewood Stayover Foundation

### 1A. Formula Corrections

| Property | KBI Name | Code | Old Formula | New Formula | Reason |
|---|---|---|---|---|---|
| RW | GH Hotel Departures | #1104 | `##1101[-1]+##1002[0]-##1101[0]` | `##1101[-1]+##1102[0]-##1101[0]` | Arrivals code was wrong (##1002 = RW Arrivals; should be ##1102 = GH Arrivals) |
| SLS | GH Stayovers | #7010 | `##7005[0]` | `##7005[0]-##7004[0]` | Formula was incomplete — missing Departures component |
| CTF | 46. GH Hotel Stayovers | #9010 | `##9001[0]-##9004[0]` | `##9005[0]-##9004[0]` | Was referencing today's occ rooms; should reference yesterday's occ rooms (##9005) |
| CTF | 28. SLS HSK Stayover (60%) | #7012 | `##7001[0]*.6` | `##7010[0]*.6` | Was referencing today's occupied rooms instead of stayover count |
| CTF | 07. Baha Mar TTL Stayovers | #1007 | `@SUM(##7010[0],##9010[0])` | `@SUM(##7010[0],##8010[0],##9010[0])` | Rosewood stayovers (##8010) missing from campus total |
| SLS | Resort TTL Stayovers | #7824 | `@SUM(##1010[0],##7010[0])` | `@SUM(##1010[0],##7010[0],##9006[0])` | Rosewood stayovers (##9006) missing from resort total |

### 1B. KBIs Deactivated

| Property | KBI Name | Code | Action |
|---|---|---|---|
| CTF | XXX Rosewood 04. Departures | #1104 | Formula removed; type changed to Input; name prefixed XXX — made redundant by correct formula at RW |

### 1C. KBIs Created

| Property | KBI Name | Code | Type | Formula |
|---|---|---|---|---|
| SLS | Rosewood 05. Occ. Rms. Yesterday | #9005 | Calculated | `##9001[-1]` |
| SLS | Rosewood 06. Stayovers | #9006 | Calculated | `##9005[0]-##9004[0]` |
| CTF | 57. Rosewood Occupancy Yesterday | #8007 | Calculated | `##8001[-1]` |
| CTF | 58. Rosewood Stayovers | #8010 | Calculated | `##8007[0]-##8005[0]` |

---

## Session 2 — May 14, 2026 · Code Renumber

| Property | KBI Name | Old Code | New Code | Reason |
|---|---|---|---|---|
| SLS | Resort TTL Arrivals | #8021 | #7821 | Standardize to 78xx resort total range (8xxx reserved for Rosewood cross-property) |

**Note:** This renumber was the root cause of support ticket UNIFOCUS-247305. Formula at SLS (#7101 Grand Hyatt HSKP S/O to Clean) was referencing the old code #8021 and broke when the code changed. Resolved May 26 — see Session 3.

---

## Session 3 — May 26, 2026 · Ticket Resolution (UNIFOCUS-247305)

| Property | KBI Name | Code | Old Formula | New Formula | Reason |
|---|---|---|---|---|---|
| SLS | Grand Hyatt HSKP S/O to Clean (90%) | #7101 | `##8021[0]*.9` | `##7010[0]*.9` | #8021 was renumbered to #7821 on May 14; formula was never updated. Also corrected underlying logic: now references GH stayovers (##7010) rather than arrivals (##8021/##7821). |

**Ticket status:** UNIFOCUS-247305 — ✅ Resolved. Generate Standard Hours passed 5/26/26 6:55 PM.

---

## Session 4 — May 28, 2026 · Rosewood 60-KBI Build and GH/SLS Resort Total Updates

### 4A. 60 KBIs Created at Rosewood

All built at property **Rosewood Baha Mar** in dependency order: GH cross-property inputs → GH totals → SLS cross-property inputs → SLS totals → resort totals.

#### Phase 1 — GH Cross-Property Banquet at RW (6xxx range)

| KBI Name | Code | Type | Formula |
|---|---|---|---|
| GH Bqt Grp Bkfst Plated | #6111 | Input | BQT mapped |
| GH Bqt Grp Bkfst Buffet | #6121 | Input | BQT mapped |
| GH Bqt Grp Bkfst Cont | #6131 | Input | BQT mapped |
| GH Bqt Grp Lunch Plated | #6211 | Input | BQT mapped |
| GH Bqt Grp Lunch Buffet | #6221 | Input | BQT mapped |
| GH Bqt Grp Lunch Box | #6231 | Input | BQT mapped |
| GH Bqt Grp Dinner Plated | #6311 | Input | BQT mapped |
| GH Bqt Grp Dinner Buffet | #6321 | Input | BQT mapped |
| GH Bqt Grp Reception Lite | #6511 | Input | BQT mapped |
| GH Bqt Grp Reception Heavy | #6521 | Input | BQT mapped |
| GH Bqt Grp Break | #6411 | Input | BQT mapped |
| GH Bqt Grp Meeting | #6601 | Input | BQT mapped |
| GH Bqt Tastings Bqt | #6416 | Input | BQT mapped |
| GH Bqt Tastings Outlets | #6415 | Input | BQT mapped |
| GH Bqt Ttl Bkfst | #6101 | Calculated | `@SUM(##6111[0],##6121[0],##6131[0])` |
| GH Bqt Ttl Lunch | #6201 | Calculated | `@SUM(##6211[0],##6221[0],##6231[0])` |
| GH Bqt Ttl Dinner | #6301 | Calculated | `@SUM(##6311[0],##6321[0])` |
| GH Bqt Ttl Reception | #6501 | Calculated | `@SUM(##6511[0],##6521[0])` |
| GH Bqt Ttl Meals | #6731 | Calculated | `@SUM(##6101[0],##6201[0],##6301[0],##6501[0])` |
| GH Avail Guests Bkfst | #6107 | Calculated | `##1103[-1]-##6101[0]` |
| GH Avail Guests Lunch | #6108 | Calculated | `##1103[-1]-##6201[0]` |
| GH Avail Guests Dinner | #6109 | Calculated | `##1103[0]-##6301[0]` |

#### Phase 2 — SLS Cross-Property Banquet at RW (7xxx range)

| KBI Name | Code | Type | Formula |
|---|---|---|---|
| SLS Bqt Grp Bkfst Plated | #7111 | Input | BQT mapped |
| SLS Bqt Grp Bkfst Buffet | #7121 | Input | BQT mapped |
| SLS Bqt Grp Bkfst Cont | #7131 | Input | BQT mapped |
| SLS Bqt Grp Lunch Plated | #7211 | Input | BQT mapped |
| SLS Bqt Grp Lunch Buffet | #7221 | Input | BQT mapped |
| SLS Bqt Grp Lunch Box | #7231 | Input | BQT mapped |
| SLS Bqt Grp Dinner Plated | #7311 | Input | BQT mapped |
| SLS Bqt Grp Dinner Buffet | #7321 | Input | BQT mapped |
| SLS Bqt Grp Reception Lite | #7511 | Input | BQT mapped |
| SLS Bqt Grp Reception Heavy | #7521 | Input | BQT mapped |
| SLS Bqt Grp Break | #7411 | Input | BQT mapped |
| SLS Bqt Grp Meeting | #7601 | Input | BQT mapped |
| SLS Bqt Tastings Bqt | #7416 | Input | BQT mapped |
| SLS Bqt Tastings Outlets | #7415 | Input | BQT mapped |
| SLS Bqt Ttl Bkfst | #7141 | Calculated | `@SUM(##7111[0],##7121[0],##7131[0])` |
| SLS Bqt Ttl Lunch | #7241 | Calculated | `@SUM(##7211[0],##7221[0],##7231[0])` |
| SLS Bqt Ttl Dinner | #7341 | Calculated | `@SUM(##7311[0],##7321[0])` |
| SLS Bqt Ttl Reception | #7541 | Calculated | `@SUM(##7511[0],##7521[0])` |
| SLS Bqt Ttl Meals | #7731 | Calculated | `@SUM(##7141[0],##7241[0],##7341[0],##7541[0])` |
| SLS Avail Guests Bkfst | #7107 | Calculated | `##1203[-1]-##7141[0]` |
| SLS Avail Guests Lunch | #7108 | Calculated | `##1203[-1]-##7241[0]` |
| SLS Avail Guests Dinner | #7109 | Calculated | `##1203[0]-##7341[0]` |

#### Phase 3 — Resort Total KBIs at RW (78xx range)

| KBI Name | Code | Type | Formula |
|---|---|---|---|
| Resort TTL Occ Rooms | #7820 | Calculated | `@SUM(##1001[0],##1101[0],##1201[0])` |
| Resort TTL Arrivals | #7821 | Calculated | `@SUM(##1002[0],##1102[0],##1202[0])` |
| Resort TTL Guests | #7822 | Calculated | `@SUM(##1003[0],##1103[0],##1203[0])` |
| Resort TTL Departures | #7823 | Calculated | `@SUM(##1004[0],##1104[0],##1204[0])` |
| Resort TTL Stayovers | #7824 | Calculated | `@SUM(##1005[0],##1106[0],##1206[0])` |
| Resort TTL Avail Guest Bkfst | #7825 | Calculated | `@SUM(##1008[0],##6107[0],##7107[0])` |
| Resort TTL Avail Guest Lunch | #7826 | Calculated | `@SUM(##1009[0],##6108[0],##7108[0])` |
| Resort TTL Avail Guest Dinner | #7827 | Calculated | `@SUM(##1010[0],##6109[0],##7109[0])` |
| Resort TTL GRP Bkfst | #7828 | Calculated | `@SUM(##5100[0],##6101[0],##7141[0])` |
| Resort TTL GRP Lunch | #7829 | Calculated | `@SUM(##5200[0],##6201[0],##7241[0])` |
| Resort TTL GRP Dinner | #7830 | Calculated | `@SUM(##5300[0],##6301[0],##7341[0])` |
| Resort TTL GRP Reception | #7831 | Calculated | `@SUM(##5400[0],##6501[0],##7541[0])` |
| Resort TTL Bqt Breaks | #7832 | Calculated | `@SUM(##5500[0],##6411[0],##7411[0])` |
| Resort TTL Bqt Meals | #7833 | Calculated | `@SUM(##5020[0],##6731[0],##7731[0])` |

**Note on #7824:** Built as Input initially pending intermediate stayover KBIs at RW. Converted to Calculated after ##1105/##1106/##1205/##1206 were confirmed built — see Session 6.

### 4B. KBIs Created at GH (Rosewood Cross-Property)

| KBI Name | Code | Type | Formula |
|---|---|---|---|
| RW Avail Guests Bkfst | #9521 | Calculated | `##9003[-1]-##9101[0]` |
| RW Avail Guests Lunch | #9522 | Calculated | `##9003[-1]-##9201[0]` |
| RW Avail Guests Dinner | #9523 | Calculated | `##9003[0]-##9301[0]` |
| RW Bqt Grp Break | #9401 | Input | BQT mapped |
| RW Bqt Ttl Meals | #9731 | Calculated | `@SUM(##9101[0],##9201[0],##9301[0],##9501[0])` |

### 4C. Resort Total Formulas Updated at GH (Added Rosewood)

| KBI Name | Code | Updated Formula |
|---|---|---|
| Resort TTL Avail Guest Bkfst | #7825 | `@SUM(##1021[0],##7107[0],##9521[0])` |
| Resort TTL Avail Guest Lunch | #7826 | `@SUM(##1022[0],##7108[0],##9522[0])` |
| Resort TTL Avail Guest Dinner | #7827 | `@SUM(##1023[0],##7109[0],##9523[0])` |
| Resort TTL GRP Bkfst | #7828 | `@SUM(##5101[0],##7141[0],##9101[0])` |
| Resort TTL GRP Lunch | #7829 | `@SUM(##5201[0],##7241[0],##9201[0])` |
| Resort TTL GRP Dinner | #7830 | `@SUM(##5301[0],##7341[0],##9301[0])` |
| Resort TTL GRP Reception | #7831 | `@SUM(##5501[0],##7541[0],##9501[0])` |
| Resort TTL Bqt Breaks | #7832 | `@SUM(##5411[0],##7411[0],##9401[0])` |
| Resort TTL Bqt Meals | #7833 | `@SUM(##5900[0],##7731[0],##9731[0])` |

### 4D. KBIs Created at SLS (Rosewood Cross-Property)

| KBI Name | Code | Type | Formula |
|---|---|---|---|
| RW Avail Guests Bkfst | #9520 | Calculated | `##9003[-1]-##9101[0]` |
| RW Avail Guests Lunch | #9521 | Calculated | `##9003[-1]-##9201[0]` |
| RW Avail Guests Dinner | #9522 | Calculated | `##9003[0]-##9301[0]` |
| RW Bqt Grp Break | #9401 | Input | BQT mapped |
| RW Bqt Ttl Meals | #9731 | Calculated | `@SUM(##9101[0],##9201[0],##9301[0],##9501[0])` |

### 4E. Resort Total Formulas Updated at SLS (Added Rosewood)

| KBI Name | Code | Updated Formula |
|---|---|---|
| Resort TTL Avail Guest Bkfst | #7825 | `@SUM(##1021[0],##7107[0],##9520[0])` |
| Resort TTL Avail Guest Lunch | #7826 | `@SUM(##1022[0],##7108[0],##9521[0])` |
| Resort TTL Avail Guest Dinner | #7827 | `@SUM(##1023[0],##7109[0],##9522[0])` |
| Resort TTL Bqt Breaks | #7832 | `@SUM(##5411[0],##7411[0],##9401[0])` |
| Resort TTL Bqt Meals | #7833 | `@SUM(##8007[0],##7731[0],##9731[0])` |

---

## Session 5 — May 29, 2026 · CTF Rosewood Cross-Property Build and Resort Total Updates

### 5A. 26 KBIs Created at CTF (Rosewood 8xxx range)

#### Inputs (BQT mapped)

| KBI Name | Code | Type |
|---|---|---|
| RW Bqt Grp Bkfst Plated | #8111 | Input |
| RW Bqt Grp Bkfst Buffet | #8121 | Input |
| RW Bqt Grp Bkfst Cont | #8131 | Input |
| RW Bqt Grp Bkfst Box | #8151 | Input |
| RW Bqt Grp Lunch Plated | #8211 | Input |
| RW Bqt Grp Lunch Buffet | #8221 | Input |
| RW Bqt Grp Lunch Box | #8251 | Input |
| RW Bqt Grp Dinner Plated | #8311 | Input |
| RW Bqt Grp Dinner Buffet | #8321 | Input |
| RW Bqt Grp Dinner Box | #8351 | Input |
| RW Bqt Grp Reception Lite | #8511 | Input |
| RW Bqt Grp Reception Heavy | #8521 | Input |
| RW Bqt Grp Break | #8411 | Input |
| RW Bqt Grp Meeting | #8601 | Input |

#### Calculated Sub-Totals and Totals

| KBI Name | Code | Type | Formula |
|---|---|---|---|
| RW Bqt Ttl Bkfst | #8101 | Calculated | `@SUM(##8111[0],##8121[0],##8131[0],##8151[0])` |
| RW Bqt Ttl Lunch | #8201 | Calculated | `@SUM(##8211[0],##8221[0],##8251[0])` |
| RW Bqt Ttl Dinner | #8301 | Calculated | `@SUM(##8311[0],##8321[0],##8351[0])` |
| RW Bqt Ttl Reception | #8501 | Calculated | `@SUM(##8511[0],##8521[0])` |
| RW Bqt Ttl Break | #8411 | Input | BQT mapped |
| RW Bqt Ttl Meeting | #8601 | Input | BQT mapped |
| RW Bqt Ttl Meals | #8731 | Calculated | `@SUM(##8101[0],##8201[0],##8301[0],##8501[0])` |
| RW Avail Guests Bkfst | #8107 | Calculated | `##8003[-1]-##8101[0]` |
| RW Avail Guests Lunch | #8108 | Calculated | `##8003[-1]-##8201[0]` |
| RW Avail Guests Dinner | #8109 | Calculated | `##8003[0]-##8301[0]` |

### 5B. Resort Total Formulas Updated at CTF (Added Rosewood)

| KBI Name | Code | Updated Formula |
|---|---|---|
| Baha Mar TTL Avail Guest Bkfst | #1008 | `@SUM(##7107[0],##9107[0],##8107[0])` |
| Baha Mar TTL Avail Guest Lunch | #1009 | `@SUM(##7108[0],##9108[0],##8108[0])` |
| Baha Mar TTL Avail Guest Dinner | #1010 | `@SUM(##7109[0],##9109[0],##8109[0])` |
| Baha Mar TTL GRP Bkfst | #7828 | `@SUM(##7141[0],##9141[0],##8101[0])` |
| Baha Mar TTL GRP Lunch | #7829 | `@SUM(##7241[0],##9241[0],##8201[0])` |
| Baha Mar TTL GRP Dinner | #7830 | `@SUM(##7341[0],##9341[0],##8301[0])` |
| Baha Mar TTL GRP Reception | #7831 | `@SUM(##7541[0],##9541[0],##8501[0])` |
| Baha Mar TTL Bqt Breaks | #7832 | `@SUM(##7411[0],##9411[0],##8411[0])` |
| Baha Mar TTL Bqt Meals | #7833 | `@SUM(##7731[0],##9731[0],##8731[0])` |

---

## Session 6 — June 2026 · RW Stayover Completion (confirmed 6/10/26)

**Background:** Resort TTL Stayovers #7824 at RW was built as Input (Session 4) because an inline `[-1]` offset in the formula would have triggered a Unifocus duplication alert. Four intermediate KBIs were built to resolve this.

### KBIs Created at RW

| KBI Name | Code | Type | Formula |
|---|---|---|---|
| GH Occ Rms Yesterday at RW | #1105 | Calculated | `##1101[-1]` |
| GH Stayovers at RW | #1106 | Calculated | `##1105[0]-##1104[0]` |
| SLS Occ Rms Yesterday at RW | #1205 | Calculated | `##1201[-1]` |
| SLS Stayovers at RW | #1206 | Calculated | `##1205[0]-##1204[0]` |

### KBIs Converted at RW

| KBI Name | Code | Old Type | New Type | Final Formula |
|---|---|---|---|---|
| Resort TTL Stayovers | #7824 | Input | Calculated | `@SUM(##1005[0],##1106[0],##1206[0])` |

---

## Open Items (as of 6/10/26)

| Item | Status |
|---|---|
| BQT mapping — Rosewood (GH and SLS files) | Blocked: awaiting EMS/Delphi admin contacts for SLS and GH |
| BQT mapping audit — all properties | Blocked: same |
| GH #7833 Resort TTL Bqt Meals formula correction | Pending — `##5900` should be `##5905` (meals-only vs. all covers) |
| GH SLS HSK Stayover #7012 formula correction | Pending — `##7001[-1]*.6` should be `##7010[0]*.6` |
| Boat & Airline (SLS #5522) mapping decision | Pending property confirmation |

---

*© Peter A. Castellano. All rights reserved.*
