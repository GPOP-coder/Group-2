<!-- © Peter A. Castellano — Proprietary. Not for model training. -->
# Unifocus Implementation Framework

**Author:** Pete Castellano, Platinum Workforce Strategies  
**Purpose:** Pre-training implementation discovery methodology — the sequence and logic Pete uses to configure a Unifocus system before training begins  
**Audience:** Implementers and consultants (future PWS training curriculum)  
**Updated:** 2026-06-30

---

## Overview

Implementation is not training. Training teaches people to use a configured system. Implementation builds that system. These are distinct phases — and the order within implementation matters enormously. Getting the sequence wrong creates rework.

**The correct implementation sequence:**

1. **Labor Structure** — must come first; jobs must exist before employees can be assigned
2. **Employees** — must exist before hours can be attributed to them
3. **Hours / Time & Attendance** — must flow before actuals can be calculated
4. **Volumes** — must be configured before forecasting can drive labor

---

## Phase 1 — Labor Structure

Labor structure is the skeleton. Everything else attaches to it.

### USALI Foundation

Unifocus follows the Uniform System of Accounts for the Lodging Industry (USALI) with Unifocus-specific implementation:

**Divisions (standard):**
- Rooms
- Food & Beverage
- Other Operating Departments
- Non-Operating Departments
- Salaried (tracked separately)

### Jobs

Jobs are the fundamental unit. Properties can have hundreds.

- Jobs may be defined by union classification, regulation, pay rate, or certification requirements
- Large properties (resort campuses) can have 600+ job codes
- Bulk import via structured spreadsheet is available — use it; don't enter 600 jobs manually
- Job import template: coordinate with Unifocus data integration team before go-live

### Operating Codes

An operating code (opcode) is simply a **package of jobs** — nothing more.

**Why opcodes exist:**
- Jobs are often scattered for HR, payroll, or financial reporting reasons
- Opcodes re-unify jobs that logically belong together for operational analysis
- Example: Room Attendant Grade 1 + Room Attendant Grade 2 + On-Call Attendant → all three are housekeepers; one opcode groups them for comparison against a single labor standard

**Key characteristics:**
- Created by system administrator
- Can cross departments (e.g., all cooks regardless of which outlet they work in)
- Show individual job detail AND a total row at the bottom
- Weekly Labor Summary is the only report that sums multiple opcodes together
- **Productivity measurements cannot be placed on an opcode** — those live on the job or department only
- Opcode does nothing until: (a) jobs are added to it AND (b) users are given access to it

**Admin creates → names → adds jobs → grants user access → usable**

**Common opcode example (cross-department):**
A chef manages all cooks regardless of outlet. Create an opcode: All Cooks. Add Cook (Main Dining), Cook (Banquet), Cook (Room Service). Chef sees one total. Also create outlet-specific opcodes if department managers need their own view.

### Schedule Groups

Distinct from operating codes — often confused.

| | Operating Codes | Schedule Groups |
|---|---|---|
| Created by | System Admin | System Admin |
| Groups | Jobs | Employees |
| Used for | Reporting / analysis | Scheduling view / filter |
| Who controls membership | Admin adds jobs | Manager adds employees |
| Used in | Reports | Scheduling screen |

**How schedule groups work:**
- Admin creates the group and names it; grants managers access to it
- Manager then controls which employees are in their schedule group
- Used to slice the scheduling screen: show only morning crew, only cooks, only a subset of a large department
- Most common early implementation complaint: "A new employee isn't showing on my schedule" — answer: manager forgot to add them to the group

**Common misconception:** Managers try to create a "all servers" group, then realize they can already filter by the Server job code. Schedule groups are for slices that don't map to a single job code — e.g., "Morning F&B Team" (servers + bussers + greeters on the AM shift).

---

## Phase 2 — Employees

### Data Requirements

Required for each employee record:

**General Tab:**
- Employee ID (from HR system)
- First and last name
- Hire date
- Employment date (may differ from hire if there are gaps in service)
- Active/inactive status
- Mobile app registration fields

**Primary Job:**
- Job code
- Start date
- End date (if applicable)

**Secondary Jobs:**
- Each secondary job code
- Effective date
- Termination date (if applicable)

### File Delivery

- Format: CSV / flat file
- Frequency: Daily minimum; can be hourly or multiple times per day
- Transmission: Email to pmsfiles@unifocus.com | Secure FTP | API
- Must include terminated employees for 30 days post-termination (prevents scheduling ghosts)

### HR System Interface

At most properties, employee data flows from the HR system (e.g., Infor) automatically — typically overnight.

**Critical caveat:** The interface only updates certain fields. It does NOT automatically set all configuration within Unifocus. Items that require manual attention after interface:
- Sub Only setting on secondary jobs (not synced — must be set manually)
- Schedule group membership (admin assigns employees)
- Mobile app activation

### Secondary Jobs — Implementation Default

**Rule:** At the start of any implementation, ALL secondary jobs are set to Sub Only = Yes.

**What Sub Only = Yes means:** The job will NOT auto-schedule. The system will not place the employee into that job when generating schedules.

**Why this matters:** Many employees have multiple secondary job codes. Without this default, the system would auto-schedule everyone into every job they're cleared for — resulting in massively over-scheduled employees and scheduling chaos.

**How it works:**
- Sub Only setting lives on the job (not the employee)
- Both admin and manager can change the setting
- Managers have permission to release individual employees from Sub Only for specific secondary jobs as they see fit
- New hire from Infor: gets created with secondary jobs; Sub Only not set by interface; must be set manually

### Reconcile Error Email

A daily automated email sent after the overnight employee data sync.

**What it contains:** List of employee records that failed to import or import cleanly.

**Common errors flagged:**
- Missing or mismatched job assignments
- Duplicate employee IDs or conflicting hire dates
- Gaps in employment history affecting active/inactive status
- Missing required fields

**Admin's role:** Treat as a daily checklist. Investigate and resolve each item in Employee Maintenance. Unresolved reconcile errors cause scheduling anomalies and reporting gaps.

---

## Phase 3 — Hours / Time & Attendance

### Punch Structure

A "punch" in Unifocus contains:
- Employee ID
- Job code (which job were they working)
- Date
- Start time (clock in)
- End time (clock out)

### Break Tracking

- Paid vs. unpaid breaks
- Duration rules (30-minute or 1-hour) by employee classification
- Must be configured to match property's labor law requirements and union contracts

### File Delivery

Same transmission options as employees: email (pmsfiles@unifocus.com), secure FTP, API.

**Pull window:** System should pull back 17–18 days of history on each sync. This covers the longest pay period plus close lag — important because actual hours are often entered after the pay period closes.

### Hours Transfer Errors Email

Analogous to the Reconcile Error Email but for T&A data.

When hours fail to transfer into Unifocus, this email flags the issue. Details to be documented based on live implementation experience. Admin should treat as a daily checklist alongside the reconcile email.

### T&A Mapping

If the property's existing time & attendance system uses different job codes than Unifocus, a mapping table must be created:

T&A job code → Unifocus job code

This mapping ensures that clock-in data flows into the correct labor category in Unifocus.

### TK and Reconcile Codes

- **TK codes:** Handle non-standard time entries — PTO, training, sick, meetings, call-out, no-show
- **Reconcile codes:** Exceptions in the calculation (how to handle discrepancies between scheduled and actual)

---

## Phase 4 — Volumes

Volumes are the business activity data that drive labor forecasting. Two types: **independent variables** (rooms) and **dependent variables** (revenue centers).

**Data quality rule:** Prefer accounting system data over POS data. POS data is "dirty" — voids, corrections, and test entries contaminate it. Accounting-audited data is clean.

### Rooms Data (Independent Variable)

The rooms data is the master driver. Everything else depends on how many guests are in the house.

**Data elements needed:**
- Occupied rooms (actual and forecast)
- Arrivals
- Guest count

**Note:** Market segment breakdown is NOT important for labor. Total occupancy is what matters for staffing calculations.

**Lookback:** Pull 14–21 days of history (corrections happen after audit)  
**Lookahead:** Forward-looking forecast (from PMS)

### Revenue Centers (Dependent Variable)

Restaurant outlets, F&B operations — their volume depends on occupancy.

**Key concepts:**
- **Covers** — the primary KBI for food outlets
- **Capture ratio** — what percentage of in-house guests dine in each outlet
- **Leak-in** — outside guests who aren't hotel guests (adds to cover count)
- Revenue center data is backward-looking only for actuals (must be audited); forward-looking comes from system forecast

**Lookback:** 14–21 days (corrections require wider window)

### Banquets / Events (BEO Data)

Source: Event Management System (BEOs). Required 14–21 days forward-looking.

**Event types the system must receive:**

*Breakfast:*
- Plated
- Buffet
- Continental

*Lunch:*
- Plated
- Buffet
- Boxed

*Dinner:*
- Plated
- Buffet
- Boxed

*Receptions:*
- Heavy
- Regular
- Light
- Cocktail
- Dessert

*Breaks:*
- AM Break
- PM Break
- Coffee (quick — 15–30 minutes)

*Meetings:*
- Meeting
- Breakout session
- Exhibit
- Coat check
- Storage

**Why granularity matters:** Labor requirements differ dramatically. A plated dinner is more labor-intensive than a cocktail reception of the same headcount. The system must receive the correct event type to calculate accurate projected hours.

### Input KBIs (Manual Entry)

Some business activity is not captured in any system — it must be entered manually.

**Examples:**
- Carving stations
- Babysitters
- Special setup items that trigger additional labor

**Input KBIs may require both:**
- Forecast (entered before the event)
- Actual (entered after the event)

**Who enters them:** Typically the admin or a designated forecasting manager.

---

## Implementation Sequence Summary

```
LABOR STRUCTURE
  → Jobs (bulk import if large property)
  → Operating Codes (package jobs for reporting)
  → Schedule Groups (created; access granted to managers)

EMPLOYEES
  → Employee data file from HR system
  → Daily overnight sync established
  → Secondary jobs set to Sub Only = Yes
  → Mobile app access configured
  → Reconcile Error Email recipient designated

HOURS / T&A
  → T&A job code mapping created
  → TK and Reconcile codes configured
  → 17–18 day lookback window confirmed
  → Hours Transfer Errors Email recipient designated

VOLUMES
  → Rooms data connection established (PMS → Unifocus)
  → Revenue center KBIs configured
  → BEO event type mapping confirmed
  → Input KBIs identified and configured
  → Forecasting managers designated
```

---

## Training Implications

Implementation creates the system. Training teaches people to use it.

**The admin training should be conducted on the live system** — not a sandbox. Admins take a guided tour of their own configured environment. They are not building a new system; they are learning to maintain one.

**The manager training assumes:**
- System is configured
- Employees are loaded
- Forecast structure is in place
- At least a sample week of data exists for exercises

See `unifocus-admin-training-guide.md` and `unifocus-manager-training-guide.md` for training curriculum.

---

*© Peter A. Castellano / Platinum Workforce Strategies. Proprietary. Not for model training.*
