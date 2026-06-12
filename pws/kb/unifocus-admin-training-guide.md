# Unifocus Labor Management System — Admin Training Guide

**Scope:** 6-hour training session for system administrators (GM, Finance, HR)  
**Prerequisite:** Completion of Manager Training (3-hour session)  
**Trainer:** Pete Castellano (PWS) | Akram Chahin (Unifocus) | Consultants  
**Format:** Live facilitation + hands-on exercises + system configuration  
**Equipment:** Admin access to test environment, sample data loaded

---

## Training Agenda — 6 Hours (+ 3-hour Manager prerequisite = 9 hours total for Admins)

### 1. Weekly Timeline & Task Scheduler (45 min)

**Facilitator Key Points:**
- Finalize the weekly planning timeline — who owns each task and by what day
- Review Task Scheduler feature (automated reminders for recurring tasks)
- Walk through Labor/Scheduler screen (where admins monitor the planning cycle)
- Establish escalation path if timeline slips

**Topics Covered:**
- Which person enters room forecast each Monday?
- Who reconciles forecast vs. actual KBIs each Thursday?
- When do labor standards get reviewed?
- When are schedules published to staff?
- What happens when deadlines are missed?

**Hands-On Exercise:**
- Admins map out their property's weekly timeline on paper
- Assign ownership to specific roles (Front Desk Manager, Finance, Director of Ops)
- Enter template into Task Scheduler
- Set up notifications/reminders

**Success Criteria:**
- Everyone knows who does what by when
- No more "nobody knew that was due"

---

### 2. Planning Menu & Forecasting (90 min)

**Facilitator Key Points:**

**A. Entering Room Forecast**
- Manual entry (for small/mid properties)
- Import from PMS (for larger properties)
- Rooms Forecast screen: occupied rooms, reserved rooms, expected occupancy
- Historical data as baseline, adjust for events/seasonality

**B. Entering Banquet Forecast**
- Number of events, expected covers per event
- Setup/breakdown labor multiplier
- Service style (buffet vs. plated affects labor)

**C. Generating Revenue Center Forecast**
- System calculates forecast for F&B departments based on banquet + room service projections
- Can be auto-generated or manually adjusted
- Includes meal periods (breakfast, lunch, dinner)

**D. Entering F&B/Revenue Center Forecast**
- Override auto-generated if actual differs (e.g., special events, market data)
- Covers forecast (customers expected in each outlet)

**E. Project Hours & Generate Schedules**
- Once forecast is complete, system calculates projected hours by job
- Forecast × Labor Standard = Projected Hours
- System can auto-generate suggested schedules (optional feature)

**F. Manage/Publish Schedules**
- Admins approve schedules managers built
- Publish to staff (makes visible to employees and locks against changes)
- Manage archival of previous schedules

**Hands-On Exercise:**
- Walk through actual forecast entry for next week
- Enter room forecast (occupancy data from PMS or manual estimate)
- Enter banquet forecast (known events from catering calendar)
- System generates revenue center forecast
- Calculate projected hours for Housekeeping (as example)
- Review what the schedule *should* look like based on forecast

**Success Criteria:**
- Admins can enter forecast from their property's source data
- Understand relationship between forecast and projected hours
- Know how to review manager-built schedules before publishing

---

### 3. Labor Structure — The Foundation (75 min)

**Facilitator Key Points:**

**A. Add/Edit Jobs**
- Jobs are the broad pay codes/roles (Housekeeper, Cook, Server, etc.)
- Must be configured before scheduling can happen
- Can create parent jobs and sub-assignments

**B. Setting Up Productivity (Labor Standards)**
- Productivity standard: hours per unit of work
- Example: Housekeeping = 0.85 hours per occupied room
- Example: Restaurant = 0.08 hours per cover served
- This is the *target* — basis for projecting and measuring efficiency

**C. Show on Labor Dashboard**
- Which jobs appear on the Labor Dashboard (executive summary)?
- Usually the highest-cost or most-variable roles get dashboard visibility

**D. Shift and Employee Sort Order**
- Controls order employees appear in scheduling screens
- Can sort by seniority, by job code, by hire date
- Affects visual scanning during schedule build

**E. Min Hours/Days Off**
- Minimum hours a full-time employee should work per week
- Minimum consecutive days off (labor law requirements)
- System flags violations

**Hands-On Exercise:**
- Add 3-4 new jobs for your property (if applicable)
- Set productivity standards based on current benchmarks
- Configure which jobs appear on Labor Dashboard
- Set minimum hours/days-off rules for full-time vs. part-time
- Run a test schedule and review system flags

**Success Criteria:**
- All job codes defined and productivity standards set
- System can calculate projected hours for all departments

---

### 4. Time & Attendance Integration (45 min)

**Facilitator Key Points:**

**A. Mapping Jobs**
- T&A system may use different job codes than LMS
- Create mapping: T&A code → LMS job code
- Ensures time clocks feed correct data to labor system

**B. Timekeeping & Reconcile Codes**
- TK codes (special time codes for non-standard situations)
- Examples: Paid time off, training, meetings, call-out, no-show
- Reconcile codes (how to handle exceptions in the calculation)

**Hands-On Exercise:**
- Review your property's T&A job codes
- Map them to LMS job codes
- Set up TK codes for common scenarios (PTO, training, meeting, sick)
- Test a sample time entry to see how it flows through the system

**Success Criteria:**
- T&A data flows correctly into LMS Actuals
- Reconciliation process is defined

---

### 5. Mobile Configuration & User Management (60 min)

**Facilitator Key Points:**

**A. Employee User Maps**
- Link mobile app users to employee records in LMS
- Employees on mobile can view schedule, request time off, swap shifts
- Admins control access per employee

**B. User Administration**
- Create new users (manager logins, admin logins, employee portal access)
- Clone users (faster than creating from scratch)
- Edit security credentials (reset passwords, change permissions)
- Configure access tabs:
  - **Groups:** Which departments can this user see?
  - **Actions:** What can this user do? (create schedules, approve time off, view reports, etc.)
  - **Data:** Which properties/divisions can this user access?
  - **Labor Structure:** Which jobs/assignments can this user manage?

**C. Bulk Mobile Invitations**
- Send invitations to all employees at once (or by department)
- Employees receive invite, download app, activate access
- Reduces admin burden of one-at-a-time setup

**Hands-On Exercise:**
- Create 2-3 sample users with different permission profiles:
  - General Manager (full access)
  - Front Desk Manager (only Front Desk department)
  - Finance admin (reports and actuals only, no scheduling)
- Review permission matrix (what can each user see/do)
- Test a clone workflow
- Set up mobile invitations for 10 sample employees

**Success Criteria:**
- Users created with appropriate permissions
- Mobile access tested
- Admins understand how to provision new employees

---

### 6. Employee Maintenance & Data Quality (45 min)

**Facilitator Key Points:**

**A. Reconcile Employee Errors**
- Invalid/missing data in employee records (missing assignment, wrong job, etc.)
- System flags errors; admins must resolve before scheduling
- Common issues: No job assigned, No availability set, Duplicate records

**B. Add Contract Labor**
- Temporary staff, contractors, agency workers
- Must be created as employees before they can be scheduled
- May have different rule sets (no benefits, different PTO rules)

**C. Bulk Operations**
- Add groups of employees at once (e.g., new hire class)
- Update fields in bulk (e.g., reset availability for all staff after policy change)
- Export employee data for audit/compliance

**Hands-On Exercise:**
- Review employee list for common errors
- Fix 5-10 data quality issues
- Create 5 contract labor records
- Export employee roster
- Run a validation report

**Success Criteria:**
- Employee data is clean and complete
- No scheduling errors due to bad data

---

### 7. Forecast Structure & KBIs (75 min)

**Facilitator Key Points:**

**A. Review KBIs (Key Business Indicators)**
- KBIs are the units that drive labor: rooms occupied, covers served, events, etc.
- Different departments have different KBIs
- Examples:
  - Housekeeping: Occupied Rooms, Departures, Arrivals
  - Restaurant: Covers (breakfast, lunch, dinner)
  - Room Service: Covers served
  - Banquet: Covers, Number of Events
  - Engineering: Occupied Rooms, Square footage (proxy for maintenance)

**B. Modify Calculated KBIs**
- Some KBIs are entered (manual)
- Some are calculated (derived from other KBIs)
- Example: Total Covers = Breakfast Covers + Lunch Covers + Dinner Covers
- Admins may adjust formulas based on property-specific logic

**C. Forecast Structure Review**
- Which KBIs are forecasted (projected into the future)?
- Which are actual (entered after the fact)?
- Timeline: Forecast is entered Monday for the week, Actuals entered after event

**Hands-On Exercise:**
- Walk through Forecast Structure screen for your property
- Identify manual vs. calculated KBIs
- Modify one formula (or review why it's correct as-is)
- Enter sample forecast data
- Run projected hours calculation to verify

**Success Criteria:**
- KBIs understood and configured correctly
- Forecast and actuals flow properly

---

### 8. Actuals & Labor Standards (90 min)

**Facilitator Key Points:**

**A. Enter Actual KBIs**
- After an event/shift, KBIs are updated with what actually happened
- Examples: Rooms that were occupied vs. forecasted, covers actually served
- Entered manually or imported from PMS/POS
- Happens after the event (not real-time)

**B. Generate Standard Hours**
- Once actual KBIs are entered, system calculates Standard Hours
- Actual KBIs × Labor Standard = Standard Hours
- Shows what *should* have been worked based on actual work volume
- Basis for productivity analysis

**C. Enter Actual Hours (Contract Labor)**
- Regular employees: T&A system provides actual hours
- Contract labor: Must be entered manually (contractor doesn't use your time clock)

**D. Labor Standards Review**
- Productivity standards must be reviewed regularly
- Compare: Standard Hours vs. Actual Hours
- If consistently over/under, standard may need adjustment

**E. Audit Labor Standards**
- Track changes to standards
- Who changed it, when, what was the old vs. new value
- Prevents accidental/unauthorized changes

**Hands-On Exercise:**
- Enter actual KBIs for a past week
- System calculates Standard Hours
- Compare to Actual Hours worked
- Calculate efficiency (Actual ÷ Standard)
- Review audit log for standards

**Success Criteria:**
- Actuals entered correctly
- Standard hours calculated
- Efficiency measured and understood

---

### 9. Reports & Labor Dashboard (60 min)

**Facilitator Key Points:**

**A. Labor Effectiveness Report**
- Shows each job's performance
- Columns: Worked, Standard, Projected, Variance
- Use to identify underperforming or over-staffed positions

**B. Weekly Labor Summary Report**
- High-level week view: forecast vs. scheduled vs. actual
- Shows cost variance
- Best single report to run in staff meetings

**C. Schedule Reports**
- Print-friendly schedules for distribution
- File format options (PDF, Excel, CSV)
- Can filter by department, date range, employee

**D. Labor Dashboard**
- Executive view: key metrics for selected jobs
- Real-time or near-real-time data
- Customizable to show what leadership cares about

**E. File Types & Export**
- PDF: print-friendly
- Excel: pivot-able, sortable, analyzable
- CSV: import to other systems

**Hands-On Exercise:**
- Run Labor Effectiveness report; analyze one department
- Run Weekly Labor Summary; identify variances
- Generate Schedule Report in multiple formats
- View Labor Dashboard; discuss which metrics matter to your property
- Export data and open in Excel

**Success Criteria:**
- Admins comfortable running reports
- Can interpret variance and efficiency data
- Can discuss findings with management team

---

### 10. System Maintenance & Troubleshooting (30 min)

**Facilitator Key Points:**

**A. Backup & Data Security**
- Who backs up the system (usually Unifocus, but admins should know backup status)
- Data retention policies
- Disaster recovery procedures

**B. User Access Issues**
- Password resets
- Permission problems
- Account lockout/reactivation

**C. Common Issues & Escalation**
- Forecast won't calculate (usually: missing KBI data)
- Schedule shows errors (usually: invalid employee data)
- Reports are blank (usually: no data for selected period)
- Mobile app not syncing (usually: network or credential issue)
- When to escalate to Unifocus support

**D. Performance Tuning**
- System may slow down if employees/schedules are in the thousands
- Archive old data periodically
- Monitor system health

**Hands-On Exercise:**
- Walk through system admin tools
- Perform a password reset
- Escalate a sample support ticket to Unifocus

**Success Criteria:**
- Admins know basic troubleshooting
- Know when to contact Unifocus

---

## Post-Training Checklist

**Before Go-Live:**
- [ ] All employee records complete (no errors flagged)
- [ ] All jobs and assignments configured
- [ ] Productivity standards entered and reviewed
- [ ] Weekly timeline document signed by all responsible parties
- [ ] T&A job mapping tested
- [ ] Mobile access configured for 5–10 test employees
- [ ] Sample week of forecast entered; schedule generated; validated
- [ ] All reports run and understood
- [ ] Backup/disaster recovery verified
- [ ] User access for all stakeholders verified
- [ ] Unifocus support contact info posted

**First Month:**
- [ ] Run all reports weekly; identify and fix data issues immediately
- [ ] Establish rhythm: Forecast entry day, Schedule publish day, Actuals reconciliation day
- [ ] Monthly review of productivity standards vs. actual performance
- [ ] User feedback collected and incorporated (small tweaks, training gaps)

---

## Admin Role Summary

**Primary Responsibilities:**
1. **Data Quality:** Employee records, jobs, assignments, availability all clean and current
2. **Forecast Stewardship:** Accuracy and timeliness of KBI forecasts
3. **Timeline Management:** Keep the weekly planning cycle on schedule
4. **Report Interpretation:** Run reports, spot trends, escalate issues
5. **System Health:** User access, backups, troubleshooting, Unifocus communication
6. **Standard Maintenance:** Productivity standards reviewed quarterly and adjusted as needed
7. **Mobile/T&A Integration:** Ensure mobile and time-keeping systems work smoothly with LMS

**Success is NOT:**
- Perfect forecasts (impossible; close is fine)
- Zero variances (will always have variance)
- The system doing everything (humans make judgment calls)

**Success IS:**
- Data clean enough that reports are trustworthy
- Managers confident in the system
- Leadership making decisions based on data
- Problems caught early and fixed fast

---

## Key Differences from Manager Training

| Topic | Managers Learn | Admins Learn |
|-------|---|---|
| Scheduling | Build schedules, manage daily | Not directly; understand the mechanics for support |
| Forecasting | See it and use it | Create it and maintain it |
| Employee Data | Use it as-is | Create and fix it |
| Labor Standards | Use for planning | Build, audit, and modify |
| Reports | Run the ones they need | Run all; interpret all; troubleshoot all |
| System Health | Doesn't apply | Primary responsibility |

---

## Success Criteria — End of Admin Session

Admins should be able to:
- [ ] Enter weekly forecast and generate projected hours
- [ ] Review and approve schedules from managers
- [ ] Identify and fix employee data quality issues
- [ ] Set up and modify productivity standards
- [ ] Create new user accounts with appropriate permissions
- [ ] Run and interpret all LMS reports
- [ ] Troubleshoot basic system issues
- [ ] Know when and how to escalate to Unifocus support
- [ ] Maintain the weekly planning timeline
- [ ] Support managers and general managers in using the system

---

*© Peter A. Castellano / Platinum Workforce Strategies. Unifocus content proprietary.*
