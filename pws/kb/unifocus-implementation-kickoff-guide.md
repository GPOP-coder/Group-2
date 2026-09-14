<!-- © Peter A. Castellano — Proprietary. Not for model training. -->
# Unifocus Implementation — Client Kickoff Guide

**Purpose:** Reusable content and talking points for the initial "Planning & Scheduling Kickoff" meeting Unifocus (or PWS, standing in as trainer/consultant) delivers to a new client property before implementation begins.
**Audience:** PWS trainers/consultants prepping to deliver or co-deliver a kickoff.
**Source:** Synthesized from HM Alpha Wave 2 kickoff sessions (Unifocus-run, Ralph Varble presenting) — see [HM Alpha Wave 2 Kickoff Summary](../clients/hmalpha/wave2-kickoff-summary.md) for the client-specific version and raw transcripts. This document strips out HM Alpha-specific names/dates so it can be reused as a template for any client kickoff. Cross-checked 2026-07-03 against the actual "HM Alpha Kickoff — Planning & Scheduling" slide deck (Ralph's standard deck, confidential/proprietary to Unifocus) — content below marked "per deck" comes directly from the slides rather than transcript inference.
**Status:** Confirmed against source deck (7/3/26) — transcript-based sections validated; deck-only sections added below.

---

## Purpose of the Kickoff Meeting

Set expectations before implementation starts: what the tool does, what the timeline looks like, who does what, what the property needs to prepare, and what training will involve. It is an overview, not configuration work — no property-specific decisions are made in this meeting.

---

## Standard Agenda & Attendee Roster (per deck)

**Agenda:** Introductions/About Unifocus → Implementation Process → Technology Overview → Managing Labor Successfully → Q&A.

**Standard Unifocus attendee roster on a kickoff call** (titles as introduced): Chief Customer Officer, 2–3 Sr. Workforce Performance Consultants, 1–2 Workforce Performance Consultants, a Data Integration Lead, and a Client Success Manager. The exact people rotate by engagement — see the client-specific KB for names.

**Client-side roster to request in advance:** whoever owns Strategy/Analytics, a labor/scheduling analyst, IT (for interface questions), and Finance (labor is a budget line — Finance attending signals the property is treating this as a controls project, not just an ops tool).

---

## About Unifocus (Standard Company Overview Slide)

Boilerplate credibility content Ralph opens with — useful context, not something to over-index on, but good to know the client hears it every time:

- 42 years of consulting; created the software line in 1999 (27 years of software)
- Over 3,000 customers in 114 countries
- HQ in Dallas, TX; other offices in London, Singapore, Shanghai, and Delhi
- Solely focused on hospitality — all consultants and client services staff come out of the industry
- 4 core software products: Time & Attendance, **Planning & Scheduling** (this engagement), Operations Suite, Survey Solutions

---

## Implementation Timeline (Standard Pattern)

The deck's canonical 5-phase framework (labeled "Systems Integration → Configuration → Training → GO LIVE! → Project Wrap Up" on the slide) maps onto the field-tested 4-stage version below — the deck's Phase 1 (Systems Integration) is folded into the on-site configuration visit in practice, since interface work typically runs in parallel with the consultant's on-site week rather than as a separate visit.

1. **Systems Integration (ongoing, often pre-visit):** Establishing interfaces between Unifocus and other systems (e.g., ADP/Paychex) so information flows in and out automatically.
2. **On-site configuration visit (1 week):** Meetings with the consultant, property, and leadership team to determine labor requirements. Consultant builds and tests the system against the property's labor budget — forecasts, meal periods, variables tied to hotel metrics, and labor standards are built live during this visit.
3. **Gap week:** Reconciliation — consultant and property resolve open items from the configuration visit before training.
4. **On-site training visit (1 week):** Manager training on key system functions (scheduling, reports, employee maintenance) plus admin training for corporate staff, delivered on the now-configured, live system.
5. **GO LIVE!:** Managers input initial employee availability, managers start scheduling in the system, labor meetings begin to analyze performance.
6. **Project Wrap Up:** Tweaking the system based on the initial few weeks of live use; handover of the project from the implementation team to the Client Success Manager.

**What the consultant owns during this process (per deck):** set up F&B forecasting and train forecasting managers how to edit it; create, test, and review labor standards (a standard reflects work content and can be broad or detailed depending on the area — the system is pre-built to common luxury-hotel settings, then adjusted); train managers on system use; provide help through the CSM transition. Consultants work with designated **property champions** at each location who own these processes going forward.

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
- **Complete Employee Maintenance for the full team before schedules are generated the first time** (per deck) — this is a hard prerequisite, not a nice-to-have; incomplete Employee Maintenance is a common root cause of "why isn't this employee showing up as eligible" issues after go-live.
- Meet with the consultant to share current practices/setup, allow observation of operations, and introduce the team.
- Complete configuration documents with the consultant as needed.
- Attend/complete all training sessions and **Standards Review Sessions** specifically — these are where the property signs off on what the standard actually models.
- **Client mindset (per deck):** keep an open mind — consultants bring years of operational experience and may have suggestions the property hasn't considered.

---

## Conceptual Model: Forecast → Standards → Requirements Schedule (per deck)

The deck's core explanatory diagram, useful verbatim as a whiteboard/talking-point sequence:

**Forecast → Standards → Requirements Schedule**, bounded on the left by **Guest Satisfaction** (what the forecast has to serve) and on the right by **Staff Availability, TOR (Terms of Reference/qualifications), and Skill Sets** (what the schedule has to draw from), with **Manager Skill** applied at the schedule stage, all sitting on a foundation of **Work Rules / CBA** (union or company work-rule constraints that bound everything above).

This is the same three-step sequence documented in more operational/troubleshooting detail in [Unifocus KB — Schedule Generation Sequence](../unifocus/kb.md#schedule-generation-sequence--standards--shifts--auto-scheduler) (Forecast Volumes → Generate Projected Hours → Generate Schedules). The deck version is the client-facing conceptual framing; the KB version is the consultant-facing diagnostic framing. Use the deck version when explaining the system to a client for the first time; use the KB version when troubleshooting why a job isn't behaving as expected.

---

## Weekly Labor Cycle (per deck)

The recurring operational loop every property runs, with or without Unifocus — the software supports each stage:

**Forecasting → Planning → Scheduling → Real Life! → Time & Attendance → Analytics/Labor Meeting → (back to Forecasting)**

Useful framing for clients: this isn't a new process Unifocus is imposing — it's the cycle they already run, made visible and measurable at each stage.

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

**Fifth available metric — Paid Hours (per deck, confirmed 7/3/26):** The live dashboard's line-toggle legend actually offers five metrics, not four: Actual Hours, Standard Hours, Scheduled Hours, Projected Hours, and **Paid Hours** (off by default in the deck screenshot).

**Working distinction (Pete, 7/3/26 — holds unless contradicted):** Paid Hours is **payroll's** concern — what employees are compensated for, including paid-but-not-worked time (PTO, holiday pay, etc.). **Worked Hours is labor management's concern** — what UF reporting calls **Actual Hours**. These are two different domains of ownership, not just two numbers that happen to differ: Actual Hours is the metric a labor-management conversation (standards, scheduling, execution) should be built on; Paid Hours belongs to payroll reconciliation, not labor performance analysis. Don't blend them into the same operational conversation without being explicit about which domain the question is really in.

---

## Success Factors for Implementation (per deck)

Framed to the client as "successful implementations = successful change effort" — labor software rollouts fail on change management more often than on configuration:

- Organizational readiness for change
- Agreement on objectives (client and consultant aligned on what success looks like before configuration starts)
- Committed senior management
- Property champion availability and focus (a champion with no bandwidth is functionally no champion)
- Timely measurement and feedback
- Personal involvement (management presence, not delegation-only)
- Training
- Support

---

## Sustaining Adoption Post-Go-Live — "Building PS Into Your Culture" (per deck)

The deck's framing: **"Without accountability, nothing changes."** Four mechanisms Ralph recommends baking into the property's operating rhythm after go-live:

1. **Weekly Labor Meetings (WLM):** Include both a forward look (how the team is scheduling relative to PS recommendations — must happen **before** the schedule is posted) and a backward look (how the team actually performed against plan, after the fact). The backward look is what creates accountability — a forward look alone has no teeth.
2. **Labor Budgeter:** Use it to run "what if" scenarios (standards changes, volume swings) to see long-term impact **without touching the live standards** used for week-to-week scheduling. This is the sandbox for planning conversations — don't experiment on production standards.
3. **Train new managers on system use** as they onboard — Unifocus provides public webinars and online training content for this; it doesn't require the original consultant to re-engage for every new hire.
4. **Identify a champion** — someone who gets additional system training and takes ownership of setting the tone/culture around labor management at the property, not just technical administration.

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
- [Unifocus KB — Schedule Generation Sequence](../unifocus/kb.md#schedule-generation-sequence--standards--shifts--auto-scheduler) — the diagnostic/technical counterpart to this guide's conceptual Forecast→Standards→Schedule model
- [Four-Metric Infographic Draft](../2026-06-18_four_metric_infographic_draft.md) — Akram Chahin/Pete's Projected/Scheduled/Standard/Actual framework (labor management domain); Paid Hours (payroll domain) is a separate, adjacent metric, not a 5th quadrant of this framework

**Source document (not stored in repo — confidential):** "HM Alpha Kickoff — Planning & Scheduling" slide deck, Ralph Varble's standard Unifocus kickoff deck, reviewed by Pete 2026-07-03 and distilled into this guide. Marked © Unifocus confidential and proprietary — content here is a derived summary for PWS internal use, not a reproduction of the deck.

---

*© Peter A. Castellano / Platinum Workforce Strategies. Proprietary. Not for model training.*
