<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# 08-03 Meeting: Labor Management Process and Reporting Cadence

**Date:** August 3, 2026 (PM session, same day as the AM Admin Training lecture — distinct meeting)
**Participants (per Bron's Plaud):** Speaker 1–3, plus Bron Walis. Not independently confirmed by name in the AI summary alone — likely the same room as the AM session (Bron, Casey Dow, Lou Petruzzelli), pending verbatim transcript.
**Source:** Bron's Plaud AI meeting notes (complete, below). **Verbatim transcript not yet received** — this file currently holds AI notes only.
**Relationship to existing KB:** Several findings from this meeting were already cross-referenced into `kb.md`'s Future To-Do list before this file existed (Labor Dashboard broken, mobile app training gap, ADP eTime retirement caution) — likely captured from Pete's own contemporaneous notes. This file is the first dedicated capture of the full AI summary; new items below are being added to `kb.md` now, duplicates are not.

**Terminology note (added 8/16/26, per Pete):** Bron's Plaud AI notes consistently rendered **KBI (Key Business Indicator — the volume measure driving a labor standard)** as **"KPI,"** almost certainly a mishearing/mis-transcription — Unifocus doesn't use "KPI" this way. Corrected to KBI throughout this file. Same correction applied to `2026-08-03_lecture-forecasting-labor-standards-adp-scheduling-data-governance.md`; expect this in any future Plaud capture and check for it.

---

## AI Meeting Notes (Plaud summary, in full)

### Labor Management Process, Reporting, and Meeting Cadence
**Weekly Workflow:** The current process runs the prior week's Labor Effectiveness Report Wednesday morning for review in a 12–2 PM meeting. Reports have recently been late or incomplete — "generate projected" and "generate standard hours" need to be run to ensure data is ready beforehand.

**Meeting Purpose & Cadence:** Meetings should answer two questions: "How did we do last week?" and "Are we ready for next week?" Goal: a single, self-directed midweek meeting where managers review past performance, confirm readiness for the upcoming week, and proactively resolve issues. The person running the meeting owns data accuracy and telling the story behind the numbers (weather, cancellations, etc.).

**Scheduling & Publishing:** Managers should bring draft schedules, not published versions, to labor meetings. After approval, all department schedules should publish simultaneously, ideally Friday afternoon. The system can track historical publish timing for compliance. Publishing happens at the department level with per-change notifications, preventing uncommunicated edits. Coordinated, property-wide publishing recommended.

**Timekeeping & Edits:** A cutoff for timekeeping edits must be enforced before Wednesday morning's report run. The scheduling manager owns correcting time codes so they're accurate in the next day's reports.

### Key Reports and Performance Metrics
**Core Metric (Actual vs. Standard):** The most critical performance metric — measures how well a department managed labor against actual business volume. On-target performance may not need further drill-down.

**Forecast Accuracy:** Primary focus of labor meetings. The Rooms Forecast Report compares the manager's forecast against actuals for rooms, arrivals, guests, departures. Weekly forecasts can look accurate while daily swings in arrivals/departures cause real scheduling issues, especially Housekeeping. If the forecast is trusted, variance indicates a scheduling issue, not a forecasting one.

**Weekly Labor Summary:** Highly valued by managers — day-by-day, job-by-job performance alongside the driving KBIs. Useful for variance analysis and quantifying costs like training. For Housekeeping, better to review weekly total variance than daily fluctuation. Can also serve as a two-month trend view.

**Labor Effectiveness Report:** Supplements the P&L — shows how labor cost scales with volume over any date range, summarized by division/department/job. Cited example: Room Attendant performance improved from 38% over standard to 8% over standard year-over-year.

**Labor Productivity Report:** Actual productivity numbers (fraction of an hour vs. standard) — suited to finance-level, monthly/quarterly analysis and budget prep, not daily ops management.

**Forward-Looking Reports:** Weekly Projected Schedule Report verifies projected hours align with standard requirements. Various daily-schedule print options can double as sign-in sheets.

**Labor Dashboard:** Simplified graphical performance view, can highlight cross-area variance (rooms vs. F&B). *(Confirmed elsewhere in kb.md: currently non-functional at Mohonk — Pete could not get it to display live.)*

### System Configuration, Standards, and Budgeting
**Labor Standards:** An effective standard is generous but still meets budget goals. Separate standards for budgeting vs. scheduling are possible but can drift apart over time. Standards shouldn't change without proper approval and understanding of year-long impact — **it takes 2–3 years for a standard change to fully integrate into a user's budget.** Infrequent minor issues and special events (e.g., Mother's Day) are explainable variances, not reasons to create new standards.

**Budgeting Process:** Plan to move away from historical staffing guides (some 30–35 years old) toward a Unifocus-driven process — shaping monthly volume totals (covers, occupancy) into daily numbers based on last year's actual patterns for more accurate labor budgets. Requires granular KBIs (e.g., breakfast split into continental/plated/buffet percentages) and careful shaping for sporadic events like banquets. Goal: integrate old staffing guides into a legacy labor-budget spreadsheet, then retire them.

**System & Job Structure:** The prior system over-relied on "assignments" under a primary job. Simplified so ADP job = Unifocus job, clarifying reports. Operation codes (opcodes) group jobs across departments for reporting. Leftover "problematic" assignments still exist.

**P&L and Department Structure:** Current payroll combines roles (bartenders, banquet bartenders) into one "hourly beverage" P&L line. Considering more GL detail if it passes a "materiality test." Clarified: banquet bartenders belong in the Beverage department, correcting an earlier misconfiguration.

**Data Integrity and Reporting Issues:** Forecast accuracy depends on reliable PMS/HMS data (arrivals, departures, guests) — ownership of that data needs to be clear. Excel exports from the current system often output text that breaks formulas unless manually converted to values.

### Staff Management and Technology
**Cultural Change & Incentives:** Shift from gratuity-driven pay to hourly wages reduced direct speed/volume incentives, pressuring operators to control hours while risking service quality. In Housekeeping, a start-time/room-availability mismatch (8:00 AM start vs. ~11:00 AM room availability) causes idle time. Cultural change is meeting resistance — needs leadership support to balance pace against morale.

**Manager Training & Feedback:** Managers should use variance reports for constructive, not punitive, feedback — a balanced positive/negative approach works better. Consistent weekly labor meetings build leadership and bench strength.

**Unifocus Mobile App & Adoption:** ~50%+ adoption, concentrated in F&B and Housekeeping. Lets employees view schedules/assignments and manage peer-to-peer shift swaps (manager-approved), reducing manager burden. *(Confirmed elsewhere in kb.md: real training-material gap — Mohonk built its own onboarding docs; usage reporting shows only registration, not active use; invite process is clunky.)*

**External Communications:** F&B uses Beekeeper (separate app) for posting schedule PDFs and other comms — push notifications, peer chat.

**System Integrations (Unifocus & ADP):** Time-off requests flow from ADP; schedules are not currently sent back to ADP. Wanting schedules in ADP is mainly about shift-punch enforcement (scheduled vs. actual punch comparison). **ADP's eTime platform is being retired within 1–2 years** — any integration work needs to account for this to avoid rework. *(Already cross-referenced in kb.md against the ~$4,000 punch-to-schedule automation decision.)*

**Security and User Permissions:** "Weird" environmental issues; security groups not reliably enforcing permissions, leading to per-user overrides. Recommended practice: copy an existing user profile for new hires rather than building from scratch, given complex permission interdependencies.

### Historical Context and Future Direction
**System History:** Mohonk standardized on Unifocus after multiple failed attempts to build an in-house labor management solution (Excel, Access, a programmer).

**Future Software Version:** Unifocus is rewriting its software, using select-service properties as a proving ground, aiming for a full replacement product. Timeline depends on AI development pace — estimated "a couple of years." APIs already exist to pull data; better/more customizable reporting is a stated future goal.

### Next Arrangements (from the AI summary)
- Review the labor meeting deck.
- Ensure "generate projected" and "generate standard hours" are run so prior-week data is ready for the Wednesday meeting.
- Standardize the weekly report packet: Labor Effectiveness, Weekly Labor Summary, and forecast-accuracy reports with key KBIs.
- Run the Rooms Forecast Report for every labor meeting.
- Establish a coordinated publishing window (target: Friday) to publish all department schedules simultaneously after the labor meeting.
- Set and communicate a cutoff for timecode edits before report generation.
- Review and adjust Housekeeping start times to align with room availability, reduce idle time.
- Discuss the Beverage department structure and obtain the ADP configuration report + full job code list to align job codes and P&L reporting.
- Investigate setting up the Labor Dashboard (currently non-functional).
- Define and document whether schedule publishing requires second-level approval; adjust system settings accordingly.
- Align Unifocus schedule export settings to include seven-day exports with zeros for off days (downstream compatibility).
- Map the timeline for ADP's eTime migration to sequence interface work and avoid rework.
- Standardize new-user creation by copying a template user; review/clean up security group settings.
- Find out from "Jamie" whether the shift-swap feature is being used. *(Name ambiguous — possibly a transcription variant of James; unconfirmed.)*
- Talk with James to understand the current work environment and any issues.
- Integrate existing staffing guides into the labor-budget spreadsheet; review the format.
- Update staffing guides to incorporate daily covers and Unifocus outputs.

### AI-Flagged Open Items (not concluded in the meeting)
- Exact weekly meeting time and final schedule-publication time not defined. Strict timekeeping-edit deadline (with missed-cutoff alerts) not documented.
- Ownership for verifying arrivals/departures/guest-count data not assigned. "Covers into financials (HIA)" data pipeline unresolved.
- Beverage department's org structure and P&L alignment still open. "Leftover problematic assignments" have no clear resolution action item yet. Undecided: fix the misleading Revenue Center Forecast Report totals, or train users to ignore them.
- No visibility into actual mobile-app usage (logins/activity) vs. registration. Invitation/registration process still cumbersome. No formal training-gap-fill plan.
- Second-level schedule-approval policy unclear. Security/permissions issues suggest a structured audit of groups/templates/interdependencies is needed. No secure distribution method established for automated reports containing sensitive data.
- Timeline/milestones for the select-service software rewrite and AI integration unclear. Requirements/ownership for future reporting enhancements and API usage not scheduled.
- No formal guidelines yet for the "art" of shaping banquet cover forecasts (to avoid unnecessary daily labor triggers). No overtime thresholds/escalation paths distinguishing management overscheduling from real HR staffing shortages. No formal change-management plan for cultural resistance to the new pay structure.

---

*© Peter A. Castellano. All rights reserved.*
