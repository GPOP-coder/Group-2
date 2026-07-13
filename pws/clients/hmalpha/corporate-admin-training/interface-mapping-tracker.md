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
| Employee Reconcile | Paychex employee list | Once a day, time TBD | Source has primary and secondary jobs | Labor Structure / Reconcile Codes |
| Actual Hours | Paychex Time and Attendance | Once a day, time TBD | Source only sends approved shifts — recommend it send ALL shifts, approved or not | Labor Structure / TK Codes |
| Time Off Requests | Paychex | TBD | TBD | TBD |
| Schedules | Paychex (UF → Paychex — **outbound**, opposite direction from the interfaces above) | TBD | TBD | TBD |
| Rooms Forecast | ProfitSword | TBD | TBD | TBD |
| Rooms and F&B Actual KBI Values | ProfitSword | TBD | TBD | TBD |
| Banquet Forecast | Property event management system (varies by property — see breakdown below) | TBD | Same source file as Banquet Actuals below — EMS sends one file covering both. Source system differs per property, not a single fixed source like the others | Separate UF config area from Banquet Actuals, even though they share one source file |
| Banquet Actuals | Property event management system (varies by property — see breakdown below) | TBD | Same source file as Banquet Forecast above | Separate UF config area from Banquet Forecast, even though they share one source file |

**Key nuance (confirmed 7/13 in Nashville, working with Nicole on Union Station's mapping):** Forecast and Actuals come from **the same file** out of the EMS, but they are **two separate parts of the UF configuration** — don't treat this as one interface just because there's one source file.

### Banquet Forecast/Actuals — Source System by Property

| Property | EMS Source | Notes |
|---|---|---|
| Union Station Nashville | Marriott CI/TY | Marriott-brand system, since Union Station is Autograph Collection |
| InterContinental New Orleans | Delphi — IHG brand-wide instance | Shared across the InterContinental/IHG brand family (not property-specific, and not the same shared instance as the HMA-managed one below) |
| Other HMAlpha properties | Shared Delphi instance under HMA | HMA (the management company) hosts one unified Delphi for multiple properties — a third, distinct pattern from both the Marriott brand system and IHG's brand-wide Delphi |

*(Add more properties as we confirm their EMS during training.)*

---

## Other Interfaces to Eventually Document
- [ ] Fill in Frequency / exact UF menu path for the TBD rows above as they come up in training
- [ ] Confirm which specific HMAlpha properties share the unified Delphi instance vs. running standalone
- [ ] (add more as discovered during training)
