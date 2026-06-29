<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott International — Brand Knowledge Base

## Brand Hierarchy (Relevant to PWS Work)

| Brand | Tier | Notes |
|---|---|---|
| **JW Marriott** | Luxury | Upper-upscale full-service; meetings-intensive |
| **Autograph Collection** | Upper-Upscale | Independent hotels under Marriott umbrella; "exactly like nothing else"; independent character retained |
| **Marriott Hotels** | Upper-Upscale | Core flagship brand |
| **Courtyard** | Upscale | Select-service |
| **Residence Inn** | Upscale | Extended stay |

**Loyalty Program:** Marriott Bonvoy — points currency across all brands

---

## Event Management System: CI/TY

**CI/TY** (pronounced "City") — Consolidated Inventory Total Yield

Marriott's proprietary global sales and event management platform. Used internally by hotel staff at all Marriott-branded properties.

### Core Functions

| Function | Description |
|---|---|
| **Sales & Catering** | Master database for event leads, group room blocks, function space availability |
| **BEO Generation** | Creates Banquet Event Orders — food, beverage, A/V, setup requirements |
| **Property Integration** | Pushes daily event schedules to reader boards and meeting room door cards |
| **Revenue Management** | Optimizes pricing and yield for function space based on historical data |

### CI/TY → Unifocus Integration

- CI/TY is the **source of banquet forecast and banquet actuals** for Marriott properties
- Single daily export file: **21 days back (actuals) + 21 days forward (forecast)**
- File contains Event Category and Booking Type per BEO
- Cover counts aggregate by category per day → drives Unifocus banquet labor standards
- **Group vs. Local differentiation:** CI/TY supports both — suitable for regression forecast model
- **Silent bypass risk:** Any Event Category not mapped in Unifocus is dropped without alert; unmapped covers disappear from labor planning

### CI/TY vs. Other EMS Systems

| EMS | Brand(s) | Unifocus Integration Notes |
|---|---|---|
| **CI/TY** | Marriott (all brands) | Group/Local confirmed; 21-day rolling file |
| **Envision** | Hyatt | Group/Local differentiation being added (Monali) |
| **Delphi** | Hilton/Curio/DoubleTree | Format looks correct; granularity being confirmed |
| **Other/proprietary** | Independent/Luxury | Case-by-case; may require custom mapping |

---

## Autograph Collection

- Marriott's upscale independent sub-brand
- Each property maintains its own identity, name, and character — not cookie-cutter
- Fully on Bonvoy loyalty network and Marriott distribution
- Uses CI/TY for event management (same as all Marriott brands)
- **PWS clients with Autograph properties:** Union Station Nashville Yards (HM Alpha), The Joseph Nashville (MakeReady)

---

## PWS Client Properties on Marriott Flags

*Note: HM Alpha and MakeReady are multi-brand operators — only their Marriott-flagged properties appear here.*

| Property | Brand | Client | Status |
|---|---|---|---|
| Union Station Nashville Yards | Autograph Collection | HM Alpha | Training complete June 2026; remote F&B standards open |
| The Joseph Nashville | Autograph Collection | MakeReady | Config week Jul 6; training week Jul 20 |
| JW Marriott Houston Downtown | JW Marriott | HM Alpha | Training scheduled Aug 2026 (Akram) |

---

## Related Files

- [HM Alpha Client KB](../../clients/hmalpha/kb.md)
- [MakeReady Client KB](../../clients/makeready/kb.md) *(to be created)*
