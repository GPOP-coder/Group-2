# Unifocus LMS Smart Cards - Quick Reference Guide

**Purpose:** Fast lookup for trainers and managers navigating Unifocus Labor Management System  
**Format:** Task-focused visual reference (color-coded by topic)  
**Source:** Unifocus Smart Cards PDF  

---

## CARD 1: Home Page & Toolbar Icons

**Home Page Structure:**
- Tab-driven interface showing Most Used and Recently Closed modules
- User profile, Help section, main menu access all from top bar
- Click Unifocus logo to open application menu

**Toolbar Icons:**
- Help (?) — access videos, portal, support
- User name menu — profile, sign out, alerts
- Alerts bell — notifications
- Refresh — reload current view
- Full screen toggle — expand interface

---

## CARD 2: Accessing Components & Four Types of Hours

**Main Menu Pane:**
Click menu → expand sections (arrow toggle) → select module

**Sections Include:**
- Most Used (recent work)
- Labor (Planning, Scheduling, Employee Maintenance, Actuals)
- T&A (Time & Attendance)
- Financial
- Administration
- Reports
- Analytics
- Setup

**Four Types of Hours** (critical to understand):

| Type | Definition | When Used |
|------|-----------|-----------|
| **Projected Hours** | Hours needed based on forecasted KBIs + labor standards | Planning phase — "how much labor do we need?" |
| **Scheduled Hours** | Hours manager actually scheduled for staff | After planning — "what did we assign?" |
| **Standard Hours** | Hours it should take based on *actual* KBIs + labor standards | After event — "what should it have taken?" |
| **Actual Hours** | Real hours it took to complete the work | Post-shift — "what was really worked?" |

**One Report Shows All Four:** Weekly Labor Summary Report

---

## CARD 3: Employee Availability

**Purpose:** Ensure right employees on right shifts; set time-off patterns by day/time

**Three Availability Types:**

1. **Available to Work** (green bar)
   - Employee can be scheduled
   - Default state

2. **Preferred Off** (diagonal stripes)
   - Employee requested ongoing time off
   - Will work if no one else available
   - Manager can override

3. **Required Off** (solid block)
   - Employee cannot work
   - System will not schedule; manager override required
   - Example: employee can only work Thu–Mon, Tuesday–Wednesday blocked

**Setup Workflow:**
1. Go to Employee Maintenance
2. Select Scheduling tab
3. Configure day-by-day availability (can vary by time of day)
4. Set Day Off Plan and Current Pattern
5. Include in Schedule Export (checkbox)

**Example:** Employee works 6 AM–11 AM only = set Preferred Off afternoons

---

## CARD 4: Assignments vs. Jobs & Employee Types

**Distinction:**

**Job** = broad pay code/role  
Example: "Cook"

**Assignment** = specific task within that job  
Example: Line Cook, Prep Cook (two assignments under Cook job)

**Why?** Allows granular scheduling — not all cooks can do all tasks; some are line-only, some prep-only.

**Labor Structure Hierarchy:**
- Housekeeping (job)
  - HSKP Supervisor
  - Room Attendant
  - Carpet Tech (assignment of HSKP Houseperson)
  - Guest Rooms (assignment of HSKP Houseperson)

**Employee Types** (determine scheduling behavior):

| Type | Behavior |
|------|----------|
| **Permanent** | Works shift regardless of business volume |
| **Regular** | Works shift only if business volume warrants it |
| **Variable** | Works based on volume, availability, and forecasted demand |

---

## CARD 5: Schedule Groups

**Purpose:** Organizational reporting tool — group similar employees for filtering/reporting

**Example Use Case:**
- 150 Room Attendants total
- Need to separate AM Room Attendants from PM Room Attendants
- Create 2 Schedule Groups for filtering in reports/schedules

**Two-Step Setup:**

**Step 1: Create Schedule Groups**
- Menu: Labor > Setup > Employee Sub Category > Schedule Groups
- Click Add Row
- Enter group name (e.g., "AM Attendants", "PM Attendants")
- Click Add

**Step 2: Assign Employees**
- Go to Employee Maintenance
- Select employee
- Click Schedule Groups tab
- Select appropriate group
- Save

**Result:** Employees now filterable by group in scheduling, reports, and analytics screens

---

## CARD 6: Scheduling Work Area & Utilization

**Screen Components:**

| # | Element | Function |
|---|---------|----------|
| 1 | Planning Period Selector | Move arrows forward/backward through weeks |
| 2 | Shift Operations | Cut, copy, paste, delete selected shifts |
| 3 | Copy/Print Controls | Bulk copy or print entire schedule periods |
| 4 | Sort, Filter, View buttons | Reorder display, hide info, select columns |
| 5 | Day/Date header | Shows week layout and weather forecast |
| 6 | Daily Coverage Graph | Visual bar chart of coverage vs. demand |
| 7 | KBI Data row | Current forecast data for the day |
| 8 | Column selection | Choose which data columns to display |
| 9 | Open Shifts indicator | Green = no open shifts; yellow = open shifts |
| 10 | Collapse/Expand | + to show all employee data, - for essential only |
| 11 | Employee info cell | Name + Utilization bar (visual hours allocation) |
| 12 | Schedule cell | Shift time, job, availability, break, notes, violations |
| 13 | Availability bar | Red = over-scheduled; white = available capacity |
| 14 | Utilization bar | Yellow = scheduled hours; white = available hours |
| 15 | Summary pane | Daily totals: scheduled, projected, cost |
| 16 | Job/KBI selector | Filter by job or KBI view |
| 17 | Access button | Click to open Employee Schedules screen |

**Utilization Bars — What They Show:**
- **Yellow portion** = how many hours employee is scheduled
- **White portion** = how many hours they're available
- **Red bar** = employee scheduled more than available (violation)

---

## CARD 7: Sorting & Filtering Information

**SORTING:**
- Click date range button → select pay period from dropdown
- OR use page backward/forward buttons to move through weeks
- Hover over "Sort by" button → select from dropdown:
  - By Employee Name
  - By Seniority
  - By Job Date
  - By Job Rank
  - By Contract Type
  - By Utilization (High to Low)
  - By Utilization (Low to High)

**FILTERING:**
- Hover over Filter button → select from dropdown
- Choose filter type: by Schedule Group OR by Job
- Dialog box opens
- Select groups/jobs you want to display
- Click OK
- Schedule pane updates to show only filtered employees/shifts

**VIEW SELECTION:**
- Hover over View button
- Checkboxes appear for all available columns
- Check = display; uncheck = hide
- Options: Scheduled Hours, Estimated Hours, Contract Hours, Gap Hours, Employee Days Off, Spanned Hours, Daily Coverage, Daily Weather, Hide Unscheduled Secondary, Hide Fully Scheduled, Expand All, Collapse All

---

## CARD 8: Cutting, Pasting, Copying, Adding & Deleting Shifts

**CUTTING:**
- Click shift to select
- Press Ctrl+X OR right-click > Cut OR click Cut button
- Shift cell outline changes (dotted border)
- Ready to paste

**PASTING:**
- Click destination cell
- Press Ctrl+V OR right-click > Paste OR click Paste Into button
- Shift moves to new location

**COPYING:**
- Click shift to select
- Press Ctrl+C OR right-click > Copy OR click Copy button
- Click destination cell
- Paste normally
- Shift appears in both places

**ADDING:**
- Hover over employee name → click down arrow > Add Shift
- OR right-click cell > Add Shift
- OR click cell + press Enter
- Add Shift pane opens
- Complete fields: Date, Start/End time, Job, Assignment, Category, Notes
- Save

**DELETING:**
- Click shift
- Press Delete key OR right-click > Delete OR click Delete button
- Shift removed immediately

---

## CARD 9: Viewing Statistics in Employee Schedule

**SHOWING DAILY SUMMARY:**
- Bottom of screen: click "Show Daily Summary"
- Planning Period Summary pane opens
- Shows totals by job per week AND per day

**Scheduled Columns Show:**
- Weekly Cost (sum of daily costs)
- Weekly Regular Hours (non-premium)
- Weekly Premium Hours (overtime/benefits)
- Per-day Cost (hours × employee rates, including OT)
- Per-day Regular Hours (non-premium total)
- Per-day Premium Hours (premium total)

**Projected Columns Show:**
- Weekly Projected Cost (sum of daily projected)
- Weekly Projected Hours (sum of daily projected)
- Per-day Projected Cost (projected hours × job rate)
- Per-day Projected Hours (system-planned shifts based on forecast + standards)

**Cost/Productivity Columns Show:**
- Weekly Cost (only field with data)

**SHOWING KBI DATA:**
- Bottom of screen: click "Show Selected KBI Data" OR click "Select KBIs"
- Choose KBIs to View pane opens
- Select KBIs you want to display
- KBI data appears on screen alongside schedule
- Close with X when done

---

## CARD 10: Schedule Audits

**Purpose:** Track all changes made to schedules — who changed what, when

**How to Access:**
- Employee Schedules screen
- Click ellipses (...) button at top
- Select "Audit" from dropdown
- Schedule Audits dialog opens
- Shows detailed change log

**What It Shows:**
- Date/time of change
- User who made change
- What was changed (shift added, deleted, moved, etc.)
- Before/after values
- Full audit trail for compliance

---

## CARD 11: Timeline Scheduling

**Purpose:** User-friendly alternative to standard Scheduling screen — better for visual coverage planning and drag-and-drop assignment

**When to Use:** When coverage of fluctuating guest demand is critical (F&B, Front Desk, etc.)

**Key Controls:**

| # | Control | Function |
|---|---------|----------|
| 1 | Shift Operations | Add shift, Undo, Gear menu (Copy/Clear schedules, Recalculate, Generate, Restore Auto, Redistribute Work) |
| 2 | View Options | Toggle Job View or Employee View; Show Statistics; Work Content View; Shift View |
| 3 | Zoom Slider | Zoom in/out of timeline (far right = days+hours; far left = weeks+days) |
| 4 | Select Jobs/Dates | Filter dialog to choose which jobs/employees appear |
| 5 | Calendar Selection | Dropdown to select date range |
| 6 | Shift Bar Menu | Right-click shift bar: Edit, Delete, Fill, Change Employee, Edit Notes, Edit Labels |
| 7 | Schedule Pane | Timeline view of shifts (appearance changes with zoom) |
| 8 | Left Pane | Lists Jobs, Employees, Work Content, Work-flow, or Statistics (depends on view selected) |

**Legend:**
- Pending Time Off = light shade
- Approved Time Off = darker shade
- Preferred Time Off = diagonal stripes
- Required Time Off = solid block
- Assigned Shift = solid color bar
- Zooming In = move slider right (shows days/hours)
- Zooming Out = move slider left (shows weeks/days)

---

## CARD 12: Creating Report Views (Parameter Sets)

**Purpose:** Save frequently-used report configurations so you don't reconfigure from scratch every time

**How to Save a Report View:**
1. Go to Reports > Reporter
2. Select a report from list
3. Configure the report (filters, divisions, date ranges, etc.)
4. Click "Save the current form values" button
5. Enter a name for this configuration (e.g., "Daily Labor – Rooms Division")
6. Click OK

**Using Saved Views:**
- Next time you open the same report
- Parameter Set dropdown now shows your saved view
- Select it to auto-populate all settings
- Click Generate Report

**Report View Features:**
- Parameter Set dropdown (apply saved config)
- Save button (create new view)
- Edit button (rename existing view)
- Delete button (remove view)
- Favorite button (set as default view)
- Clear button (reset form)

---

## CARD 13: LMS Reports

**LABOR EFFECTIVENESS:**
- Shows job-by-job performance with key metrics
- Columns: Worked Hours, Standard Hours, Projected Hours, Variance, Actual Costs, Standard Costs, Cost Variance, Overtime Hours, Pay

**Use Case:** "How did each position perform relative to standards?"

**WEEKLY LABOR SUMMARY:**
- Day-by-day breakdown with KBI and staffing data
- Shows: Forecast, Scheduled, Actual, Standard hours
- Compares staffing plan vs. what actually happened
- Shows labor cost vs. standard cost

**Use Case:** "What was our actual vs. planned labor spend this week, by day and job?"

**LABOR PRODUCTIVITY:**
- Each job shows: Actual vs. Required vs. Standard hours
- Unit of measure (Hours/Room, Hours/Cover, Hours/Event)
- Productivity metrics (actual ÷ required = efficiency %)

**Use Case:** "Are we staffing efficiently? What's our actual productivity vs. benchmark?"

**WEEKLY SCHEDULE:**
- Lists all employees in a department by job
- Shows: daily shift times, breaks, days off
- Total hours per employee for the week
- Comparison of scheduled vs. projected hours

**Use Case:** "Who works when this week? Print for employee distribution."

---

## Quick Reference — Most Used Workflows

| Task | Steps |
|------|-------|
| **View a schedule** | Labor > Scheduling > select week > filter by job |
| **Add a shift** | Click cell + Enter OR right-click > Add Shift; fill form; Save |
| **Copy shifts across days** | Select shift > Ctrl+C > click new day > Ctrl+V |
| **Filter by schedule group** | Hover Filter > select Schedule Group > choose groups > OK |
| **View labor cost** | Show Daily Summary at bottom; look at Cost columns |
| **See actual vs. standard** | Labor Effectiveness report; compare Actual Costs vs. Standard Costs |
| **Audit schedule changes** | Employee Schedules > Ellipses (...) > Audit |
| **Save a report config** | Configure report > Save current form values > name it > OK |

---

*© Peter A. Castellano / Platinum Workforce Strategies. Unifocus content proprietary.*
