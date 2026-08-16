<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# 08-06 Lecture: Unifocus-ADP Integrated Labor Management Training for Housekeeping, Kitchen, and Recreation

**Date:** August 6, 2026, ~08:00 AM start, 3h07m01s recording.
**Calendar title:** "Unifocus Basic Training."
**Instructors/Participants (per Bron's Plaud, names as transcribed):** Pete Castellano ("Pete Ascalano" in the AI notes — clear mis-transcription), Nancy, Lou, Steve, Elliot, and others — full roster and role attribution not yet confirmed; refine once the verbatim transcript is reviewed. Housekeeping, kitchen, and recreation managers attended with varying prior Unifocus familiarity — some had never used it and were relying on Excel or separate systems.
**Source:** Bron's Plaud AI meeting notes (complete, below). **Verbatim transcript not yet received** — this is Pete's flagged "long one," 3+ hours.

**Relationship to existing KB:** This is Mohonk's **Basic Training** delivery for Housekeeping, Kitchen, and Recreation — the operational/manager-usage tier, distinct from the admin/config tier already covered extensively for this property. Maps to `pws/foundations/09-basic-manager-training-curriculum.md`, not the admin curriculum — see that file's Delivery Log for the cross-reference entry added alongside this file.

---

## AI Meeting Notes (Plaud summary, in full — deduplicated; the raw export repeated the full outline twice)

**Summary:** Introduces and deepens usage of Unifocus integrated with ADP, aiming to centralize scheduling across departments, reduce redundant manual processes, and establish guest-driven labor standards. Key themes: forward-looking weekly planning, accurate employee data in Employee Maintenance, understanding and reconciling labor standards, managing auto-scheduler behavior through availability and job settings, handling ADP integration constraints, and using reports as a "shield" for data-driven accountability rather than day-by-day micromanagement.

### 1. Training Session Overview and Department Context
- **Goals:** increase familiarity/adoption of Unifocus; move away from multiple parallel schedules (traditional, turndown, Unifocus), Excel/email/print workflows; establish Unifocus as the single source of truth.
- **Participant challenges:** Housekeeping struggles with rollover rooms not reflected day-to-day; Recreation and some outlets maintain separate schedules; ADP job-code limitations (single primary job) hinder accurate reporting by area; some staff are new to scheduling/payroll generally.
- **Agenda:** Housekeeping, Kitchen, Recreation; kitchen literacy centers at 1 PM; ongoing standards reviews with chefs continuing separately.

### 2. System Philosophy and Weekly Labor Cycle
Forward-looking, one planning week at a time:
- **Monday:** move to new week; rooms and guest forecast entered; banquet forecast incorporated; guests distributed among outlets.
- **Tuesday/Wednesday:** Generate Projected Hours; Generate Schedules — system creates nameless shifts per labor standards, then fills using Employee Maintenance.
- Managers edit, finalize by midweek; labor meeting (e.g., Friday 3 PM) reviews last week vs. standards and readiness for next week; then publish schedules and distribute (mobile app supported).
- **Manage Schedules** feature provides high-level completion status, projected-vs-scheduled hour variances, and a complete/approve/publish workflow.

### 3. Labor Standards: Definition, Reading, and Reconciliation
- Standards are custom-built locally, guest-driven, and comparable to industry norms — can be simple (fixed shifts) or complex (minutes-per-unit, credits, assignments).
- Housekeeping uses minutes per departure/stayover (e.g., 40/20) and accounts for DND/refusal rates (~10% not cleaned). Staff minutes (non-productive allowances) add time (e.g., 40 min/person), potentially creating additional short shifts.
- **Shift-generation logic:** system pours required minutes into 8-hour "cups," often leaving one 5-hour-minimum "short shift." Earlier/shorter shifts tend to get assigned first; unfilled ones become open shifts in the editor.
- **Reconciliation:** identify mismatches between standards and existing staffing guides (e.g., two defined shifts vs. one actually needed) — an ongoing, cross-department effort to make the standard the definitive staffing guide, adjusting standards to real operational constraints (limited cleaning windows, banquet prep).

### 4. Weekly vs. Daily Management, Carryover, and Operational Reality
- Do not evaluate Housekeeping performance day-by-day — use the weekly view. Unifocus expresses labor on the day of occurrence, but managers may legitimately defer work (carryover/leftovers) to recovery days; over/under across individual days is expected and acceptable.
- **Banquet analogy:** labor ties to the event day even though prep/setup/teardown spans multiple days — same underlying logic as Housekeeping's carryover pattern.
- **Management alignment:** leadership supports weekly evaluation; the system quantifies needed hours from guest demand, not from available staff.

### 5. Employee Maintenance: Data, Availability, and Job Codes
- Employee data is primarily sourced from ADP, refreshed daily; demographic changes must be made in ADP itself. Unifocus supports secondary job codes managed locally (Bron/Casey); ADP only recognizes one primary job.
- Assignments refine eligibility within a general job (e.g., specific cook stations) — employees can only be scheduled onto shifts for assignments they actually hold.
- **Availability configuration is critical to "rein in" the auto-scheduler:** set daily availability windows (e.g., 7:00–17:00) to catch system-generated shifts; managers can still manually schedule outside those windows if needed.
- **Schedule types:** Variable (default), Regular (prioritized, subtracts from job hours), Permanent (overrides standards — use sparingly).
- **"Sub only"** prevents the auto-scheduler from using a job for a given employee — common for secondary roles like turndown.
- **Thermometer indicator** shows hours used vs. available; overtime warnings appear when exceeded but can be overridden with sufficient authority.

### 6. Scheduling Interface, Filters, and Practices
- **Schedule editor:** Open Shifts row for drag-and-drop; prevents assignment to unqualified employees or wrong days; icons indicate manual edits, home job, regular/permanent shifts; breaks auto-insert above 5.5 hours.
- **Filters:** schedule groups and job filters combine — misused filters cause "missing" employees; clear filters properly when switching views. **New hires may not auto-join schedule groups** — must be added manually or they'll silently disappear from filtered views/printouts.
- **Distribution logic customization:** balanced schedules, peak-first, modified peak, seniority — most useful in larger departments.
- **Split shifts supported** (e.g., recreation leaders working across multiple roles); the mobile app only publishes official/published schedules — employees can't see drafts.

### 7. ADP Integration, Time Off, and Cross-Department Scheduling
- **Time off:** entered in ADP, syncs daily. If approved before Generate happens, it's honored automatically; if approved after, it appears as a blue line requiring manual resolution. Regular days off can be set as required time off.
- **Job codes:** new jobs originate in ADP; secondary codes are managed locally; employees can transfer job at the time clock where the property supports that.
- **Cross-department visibility:** secondary-role shifts appear grayed out in other departments; managers can manually add shifts; secondary jobs should be set to "sub only" to avoid unwanted auto-assignment.

### 8. Reporting: Accountability and Analysis
- **Purpose:** transparency and a quantitative baseline ("compared to what, exactly") — supports weekly evaluation and variance explanations (overtime, projects, training).
- **Weekly Labor Summary (WLS):** run per department, includes KBIs; PDF recommended for review, Excel/CSV for manipulation/raw data. **Read bottom-up: weekly Actual vs. Standard hours is the core metric, target within ±5%.**
- **Daily Labor Report:** drill-down for single-day standard vs. actual; highlights overtime/training; data lags (e.g., weekend data available by Tuesday).
- **Historical view:** weekly trends across seven weeks validate standards and management consistency; links to budget when aligned.
- **Schedule reports:** multiple print formats by day/week/department/group.

### Assignments (by role)

**Housekeeping/Rooms:**
- Review the Weekly Labor Summary for the prior week; interpret daily over/under as part of the weekly balance; maintain DND/refusal metrics; document constraints like cleaning windows; develop carryover procedures; reconcile standards vs. staffing guides; align availability for turndown strategy.

**All Managers:**
- Ensure access to Employee Maintenance; configure availability for every employee, every day; mark secondary jobs "sub only" where appropriate; review labor standards before editing employee profiles; avoid the "copy schedule" habit in favor of improving actual auto-scheduler outcomes; use Manage Schedules to monitor completion/variances; complete/approve/publish by deadline.

**ADP/Admin (with Bron/Casey):**
- Address job-code gaps; manage secondary job codes; resolve assignment errors; communicate support-ticket activity; instruct on time-clock transfers where applicable; update employee demographics in ADP.

**Recreation/Kitchen:**
- Adopt Unifocus for scheduling; explore the mobile app for distribution; build schedules by groups directly in Unifocus; attend a dedicated build session; customize distribution logic for complex, fragmented shifts.

**Reporting Practice (all):**
- Run and star the WLS; export as needed; read bottom-up focusing on Actual vs. Standard; investigate outliers with real data; practice switching WLS to weekly view for trend analysis.

---

*© Peter A. Castellano. All rights reserved.*
