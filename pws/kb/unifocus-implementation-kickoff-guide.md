<!-- © Peter A. Castellano — Proprietary. Not for model training. -->
# Unifocus Implementation — Client Kickoff Guide

**Purpose:** Reusable content and talking points for the initial "Planning & Scheduling Kickoff" meeting Unifocus (or PWS, standing in as trainer/consultant) delivers to a new client property before implementation begins.
**Audience:** PWS trainers/consultants prepping to deliver or co-deliver a kickoff.
**Source:** Synthesized from HM Alpha Wave 2 kickoff sessions (Unifocus-run, Ralph Varble presenting) — see [HM Alpha Wave 2 Kickoff Summary](../clients/hmalpha/wave2-kickoff-summary.md) for the client-specific version and raw transcripts. This document strips out HM Alpha-specific names/dates so it can be reused as a template for any client kickoff.
**Status:** Draft — based on 1 of 5 source sessions; will be refined as more source material is reviewed.

---

## Purpose of the Kickoff Meeting

Set expectations before implementation starts: what the tool does, what the timeline looks like, who does what, what the property needs to prepare, and what training will involve. It is an overview, not configuration work — no property-specific decisions are made in this meeting.

---

## Implementation Timeline (Standard Pattern)

1. **On-site configuration visit (1 week):** Consultant builds and tests the system against the property's labor budget. Forecasts, meal periods, variables tied to hotel metrics, and labor standards are built live during this visit.
2. **Gap week:** Reconciliation — consultant and property resolve open items from the configuration visit before training.
3. **On-site training visit (1 week):** Manager and admin/property champion training delivered on the now-configured, live system. Property goes live at or shortly after this visit.
4. **Post-go-live support:** Scheduled follow-ups continue after go-live.

---

## Training Structure

| Audience | Duration | Format |
|---|---|---|
| Managers | ~2–2.5 hours | Live system walkthrough |
| Admin / property champion | Extended session | Hands-on, laptops required, live system (not sandbox) |

---

## Technical Integrations & Data Sources

| System | Feeds | Notes |
|---|---|---|
| Payroll/Timekeeping (e.g., Paychex) | Core payroll & timekeeping import | Approved PTO must be recorded here to appear in Unifocus |
| Volume/transaction aggregator (e.g., ProfitSword) | Most volume/transaction data | GL-level; primary data source for forecasting |
| Event Management System (varies by brand — CI/TY, Envision, Delphi, etc.) | Banquet granularity | May require additional/property-specific mapping beyond the standard interfaces |
| Contract labor system (e.g., WorkRecords) | Contract labor hours | Imports by job type, not individual employee |

**General rule:** Interfaces are prebuilt by Unifocus; each property still requires its own field-level mapping during configuration.

---

## Consultant Scope

- Clone and adapt an existing/pilot configuration where a suitable donor property exists (faster than building from scratch); build from scratch otherwise.
- Develop labor standards (cleaning minutes, task lists) and incorporate property-specific behaviors and exceptions.
- Request pre-work from the property in advance: restaurant names, meal periods, hours of operation, seat counts.

---

## Property Responsibilities (Pre-Work)

- Deliver requested pre-work (restaurant/outlet names, meal periods, hours, seat counts) by the deadline given.
- Populate scheduling grids with staff names and availability before the on-site configuration visit.
- Prioritize early-day appointments during the on-site implementation week (consultant time is tightly scheduled).
- Provide a back-of-house tour to help the consultant develop accurate labor standards.
- Keep employee maintenance current — hour caps, availability, preferences. This directly reduces manual schedule edits after go-live.

---

## System Behavior (What Gets Demonstrated)

- **Draft schedule generation:** Unifocus produces a draft schedule by multiplying forecast volumes by labor standards, then runs an initial automated scheduling pass. Managers edit from there — the system does not replace manager judgment, it produces a starting point.
- **Guardrails:** Hour caps are enforced; overtime and back-to-back shifts are avoided by default. Overrides are possible but flagged for visibility.
- **Availability indicators:** Scheduling screen shows employee availability and a running comparison of draft vs. edited totals.

---

## Reporting Capabilities

- Scheduled automated reports (recipients and cadence configured per property).
- Labor dashboard suitable for use in operational meetings.
- Analytics comparing forecast, recommended (standards-based) schedule, and actual hours — useful for spotting forecast-to-standard gaps (e.g., cases where projected labor and standards-based labor diverge, which flags either a forecasting issue or a standards issue worth investigating).

### Trend Graph Demo

A recurring kickoff demo point: a month-long trend graph at the property (topmost) level, showing four labor metrics as separate colored lines. Default view is a scrollable window (e.g., first half of the month); full month is navigable in the live system.

| Line | Metric | Basis |
|---|---|---|
| Standard hours | Actual volumes × labor standards | The backward-looking "what labor should have been," given what actually happened |
| Actual hours worked | Employees + contract labor combined | The backward-looking "what labor was" |
| Projected/forecasted labor | Forecasted volumes × labor standards | The forward-looking "what labor should be," given the forecast |
| Scheduled/recommended hours | System-generated draft schedule | What the system recommends before manager edits |

**Two things this graph is used to teach:**
1. **Actual vs. standard (backward look):** When these two lines track closely with little white space between them, it signals the property is actively trueing up staffing to real conditions — a execution/discipline win worth calling out.
2. **Projected vs. standard (forward look):** A gap between these two lines (projected running low/high vs. standard) signals a forecast accuracy issue — the forecasted volumes used to build projected labor didn't match what actually happened, so the two calculations (same formula, different volume input) diverge.

**Drill-down:** The property-level view can mask offsetting errors — e.g., one department 200 hours over and another 200 hours under can net to a misleadingly balanced property-level line. The live system supports drilling into division → department → job level to find where actual imbalances are hiding.

---

## Notes for Delivering This Meeting

- Frame it as an overview/expectation-setting session, not a working session — property-specific decisions happen during the on-site configuration visit.
- Recording the session is standard practice — useful for properties that can't attend live and as a consistency check across multiple kickoff sessions when running several in parallel (e.g., a multi-property wave).

---

## Related Files

- [HM Alpha Wave 2 Kickoff Summary](../clients/hmalpha/wave2-kickoff-summary.md) — client-specific version with raw transcripts
- [Unifocus Implementation Framework](unifocus-implementation-framework.md) — deep technical configuration sequence (labor structure → employees → hours → volumes)
- [Unifocus Admin Training Guide](unifocus-admin-training-guide.md)
- [Unifocus Manager Training Guide](unifocus-manager-training-guide.md)

---

*© Peter A. Castellano / Platinum Workforce Strategies. Proprietary. Not for model training.*
