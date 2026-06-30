<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# HM Alpha — Client Knowledge Base

## Brand Context

**HM Alpha** is a multi-brand hotel management company focused on luxury and upper-upscale properties. Their portfolio spans Marriott, Hilton, Hyatt, and IHG flags. The EMS at each property is determined by the brand flag, not HM Alpha corporate.

| Brand Family | Brands in Portfolio | EMS |
|---|---|---|
| Marriott | Autograph Collection, JW Marriott, Westin, Marriott | CI/TY |
| Hilton | DoubleTree, Hilton | Delphi |
| Hyatt | Grand Hyatt, Hyatt Regency | Envision |
| IHG | InterContinental | Confirm — likely Delphi |

---

## Event Management System: CI/TY (Marriott Properties Only)

**CI/TY** (pronounced "City") — Consolidated Inventory Total Yield

Marriott's proprietary global sales and event management software. **Not used at HM Alpha's Hilton, Hyatt, or IHG flags.**

Full CI/TY technical detail: see [Marriott Brand KB](../../../brands/marriott/kb.md)

---

## Full Portfolio (15 Properties)

| Property | Location | Brand | Brand Family | EMS |
|---|---|---|---|---|
| Union Station Nashville Yards | Nashville, TN | Autograph Collection | Marriott | CI/TY |
| JW Marriott Houston | Houston, TX | JW Marriott | Marriott | CI/TY |
| Marriott Del Mar | San Diego, CA | Marriott | Marriott | CI/TY |
| Warner Center Marriott | Woodland Hills, CA | Marriott | Marriott | CI/TY |
| Westin La Paloma | Tucson, AZ | Westin | Marriott | CI/TY |
| Grand Hyatt Nashville | Nashville, TN | Grand Hyatt | Hyatt | Envision |
| Hyatt Regency Valencia | Valencia, CA | Hyatt Regency | Hyatt | Envision |
| Hyatt Regency Westlake | Westlake, CA | Hyatt Regency | Hyatt | Envision |
| DoubleTree Del Mar | San Diego, CA | DoubleTree | Hilton | Delphi |
| DoubleTree Sunrise | Sunrise, FL | DoubleTree | Hilton | Delphi |
| DoubleTree Raleigh | Raleigh, NC | DoubleTree | Hilton | Delphi |
| DoubleTree Charlotte | Charlotte, NC | DoubleTree | Hilton | Delphi |
| Hilton Indianapolis | Indianapolis, IN | Hilton | Hilton | Delphi |
| Hilton Scottsdale | Scottsdale, AZ | Hilton | Hilton | Delphi |
| InterContinental New Orleans | New Orleans, LA | InterContinental | IHG | Confirm EMS |

---

## Wave 1 Pilot Properties (Unifocus Implementation)

*5 pilot properties confirmed. Training and configuration in progress as of mid-2026.*

| Property | Brand | EMS | Pete's Role | Trainer | Configurer | Status |
|---|---|---|---|---|---|---|
| Union Station Nashville Yards | Autograph Collection (Marriott) | CI/TY | Trainer | Pete Castellano | Taylor Walton | Training complete June 2026; remote F&B standards open |
| InterContinental New Orleans | InterContinental (IHG) | Confirm | Trainer | Pete Castellano | Steve Carrell | Training July 6–9, 2026 |
| Westin La Paloma, Tucson AZ | Westin (Marriott) | CI/TY | Trainer | Pete Castellano | TBD | Training week of Aug 17, 2026 |
| JW Marriott Houston | JW Marriott | CI/TY | None | Akram Chahin | Steve Carrell | Scheduled |
| DoubleTree Raleigh | DoubleTree (Hilton) | Delphi | None | TBD | TBD | Scheduled |

*Note: Grand Hyatt Baha Mar is NOT an HM Alpha property — it is part of the Baha Mar campus (separate PWS client).*

---

## Key HM Alpha Contacts

| Name | Title | Email | Notes |
|---|---|---|---|
| Devon Peters | Manager, Strategy & Analytics | DPeters@hmalpha.com | Primary point of contact; intelligent, asks scaling questions; trigger-happy on emails |
| Nicole Mendez | (New hire) | NMendez@hmalpha.com | Learning the system; attends training |
| Treana Armstrong | | tarmstrong@hmalpha.com | |
| Esther White | | ewhite@hmalpha.com | |
| Matthew Schupbach | | MSchupbach@hmalpha.com | |

---

## Technology Stack

| System | Type | Purpose | Notes |
|---|---|---|---|
| **CI/TY** | Event Management (Marriott proprietary) | BEO generation, function space, group sales | Banquet forecast + actuals; 21-day rolling file |
| **Envision** | Event Management (Hyatt properties) | BEO generation | Group/Local differentiation being added (Monali) |
| **Delphi** | Event Management (Hilton/IHG properties) | BEO generation | Granularity being confirmed by Triana |
| **ProfitSword** | Rooms & F&B Data (audited POS aggregator) | Rooms Forecast, Rooms Actuals, F&B Actuals, audited POS data | GL-level only — no event-type granularity; comp rooms mapping open item |
| **Paychecks** | Payroll / HR | Employee records, time, PTO | Interface to Unifocus for employee data and PTO |
| **Work Records** | Contract Labor | Contractor hours by job type | Brings totals by job, not individual employees |

### ProfitSword Notes (from June 25, 2026 weekly call)
- Source of Rooms Forecast, Rooms Actuals, F&B Actuals, and other audited POS data
- **Limitation:** GL-level totals only — no event-type granularity
- **Comp rooms:** Currently only mapping "occupied rooms"; must also map comp rooms — additive vs. inclusive status must be confirmed per property (Monali)
- **Write-off risk:** Period-end lump negative entries for comp covers create negative cover counts in Unifocus; properties must log comp in real time
- **Revenue as labor driver:** Generally not used (Ralph's mink coat example); exception is bar outlets where no cover count exists

---

## Engagement Notes

- **Billing model:** Fast, lean, mean. Test standards; if they pass, done. Not consultative.
- **Devon's expectation vs. reality:** Wants q-tip detail; paid for drive-through car wash.
- **Email volume:** 1,000+ emails sent to Ralph Varble's team; Ralph has requested batched questions.
- **Pre-training standards review:** Formalized June 24, 2026 — configurer must brief trainer before each property.
- **Wave 2/3 cloning:** Devon/Nicole to identify Phase 1 donor properties for cloning. Grand Hyatt Nashville builds from scratch (not cloned).
- **Hilton Indianapolis:** In the full portfolio but swapped out of Pete's schedule — assigned to another Unifocus consultant.

---

## Related Files

- [HM Alpha Weekly Call Notes — June 25, 2026](../../2026-06-25_hmalpha-weekly-call-notes.md)
- [HM Alpha Training Contacts](../../../memory/contacts_hmalpha_training_2026.md)
- [Marriott Brand KB](../../../brands/marriott/kb.md)
- [Union Station Nashville Yards — Contacts](union-station-nashville/contacts.md)
- [Grand Hyatt Nashville — Contacts](grand-hyatt-nashville/contacts.md)
- [Westin La Paloma — Contacts](westin-la-paloma/contacts.md)
- [InterContinental New Orleans — Contacts](intercontinental-new-orleans/contacts.md)
- [InterContinental New Orleans — Standards Review 6/29/26](intercontinental-new-orleans/2026-06-29_standards-review-transcript.md)
