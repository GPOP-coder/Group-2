# PWS — Unifocus Training Reference

**For:** Property trainers conducting Manager (3 hr) and Admin (6 hr) sessions  
**By:** Pete Castellano, Platinum Workforce Strategies  
**Use:** Trainer notes + manager handout material  
**Updated:** June 2026

---

## Foundation: The Four Types of Hours

Before anyone touches a keyboard, they need to understand this one concept:

**The Four Types of Hours are four different moments in time:**

1. **Projected Hours** — Monday, before the week starts
   - "Based on the forecast (we expect 250 rooms Friday), how much housekeeping do we need?"
   - Unifocus calculates this: Forecast × Labor Standard = Projected Hours
   - This is the target

2. **Scheduled Hours** — Wednesday, after the manager builds the schedule
   - "I assigned 18 housekeepers Friday, 8 hours each = 144 hours"
   - What the manager actually put in the system
   - Can be more or less than projected

3. **Standard Hours** — Saturday, after Friday is done
   - "We had 267 occupied rooms Friday; per our standard (0.85 hours/room), it should have taken 227 hours"
   - Based on what *actually happened* (occupancy)
   - Shows what good performance looks like

4. **Actual Hours** — Saturday afternoon, time sheets in
   - "Our housekeepers worked 234 hours"
   - What really happened on the clock
   - If Actual (234) > Standard (227), you're running heavy

**The Conversation This Enables:**
- *Projected* vs *Scheduled*: "Are we staffing the forecast?"
- *Scheduled* vs *Actual*: "Are people working the shifts we assigned?"
- *Standard* vs *Actual*: "Are we efficient relative to the work?"

**Where This Lives:** The Weekly Labor Summary Report shows all four, side by side, for every job.

---

## Screen Geography: Scheduling Work Area

The scheduling screen looks complicated. It's not. Everything serves one purpose: **see who's assigned where, and adjust fast.**

**Left side (employee list):**
- Names, utilization bars (yellow = scheduled, white = available)
- Red bar = problem (person scheduled more than available)
- Click to collapse/expand each employee

**Middle (the shifts):**
- Colored boxes = actual shifts (time, job, notes, availability blocks)
- Drag to move a shift
- Right-click to edit/delete

**Top (date/controls):**
- Week selector (arrows forward/back)
- Sort button (by name, by utilization, by seniority)
- Filter button (show only one department, one schedule group)
- View button (show/hide columns: cost, availability, KBI data, etc.)

**Bottom (the summary):**
- Daily totals: how many hours scheduled vs. projected
- Cost summary (actual spend vs. standard)
- Shows variance immediately — "we're 12 hours over target Thursday"

**Key insight:** Utilization bars are your friend. Yellow high relative to white = you're using all available hours. Red = you've made a scheduling error.

---

## Availability — The Foundation of the Schedule

You cannot build a good schedule without accurate availability. Full stop.

**Three States:**

1. **Available to Work** (green, no marking)
   - Person can work any time this day
   - Default

2. **Preferred Off** (diagonal stripes)
   - Person requested this time off
   - But they'll work if you're desperate
   - Good for "I prefer evenings" or "Sundays off if possible"
   - Manager can override

3. **Required Off** (solid block)
   - Person cannot work
   - System won't even let you assign
   - Good for vacations, injuries, school hours, court dates

**Granularity:** You can set availability by specific hours. Example: "Maria works 6 AM to 2 PM only" = she's available 6–2, required off 2 PM onward.

**Setup Reality:**
- Every employee needs an availability pattern
- This is a one-time setup, then maintenance as needed
- If availability is wrong, schedules will be wrong
- Check it when people join, when they request changes, when they're no-shows (might indicate a constraint you don't know about)

**Trainer Callout:** "If someone is consistently hard to schedule, check availability first. Usually someone set Required Off on their best availability windows by accident."

---

## Assignments vs. Jobs — Why This Matters

**The Problem Without Assignments:**
You have 50 line cooks. You need a pastry cook. You assign "Cook" to someone who's never touched pastry. Disaster.

**The Solution — Assignments:**
One "Cook" job. Multiple assignments:
- Line Cook (15 people cleared)
- Prep Cook (20 people cleared)
- Pastry (5 people cleared)
- Sous Chef (3 people cleared)

Now when you build the schedule, you assign to *Assignment*, not Job. The system knows exactly who can do what.

**Hospitality Example:**
- **Job:** Housekeeping Department
  - **Assignments:** Room Attendant, Carpet Tech, Bathroom Specialist, Supervisor
- Only Room Attendants can clean guest rooms
- Only Carpet Tech is allowed to shampoo
- Bathroom Specialist handles deep clean standards
- Supervisor does quality checks + coverage

**Setup:** Employee Maintenance > Assignments tab > check which assignments this person is cleared for.

**Trainer Callout:** "Run a report someday of all employees with assignment gaps. You'll find people who've been cleared for jobs they haven't done in years. Clean it up or be ready to cover their shifts."

---

## Schedule Groups — Organization Without a Database Redesign

**Use Case That Drove This Feature:**
Large hotel with 200 room attendants. You want to know:
- How many are scheduled on morning shift?
- How many on evening shift?
- Cost for each group?

Without Schedule Groups: manually count every time.  
With Schedule Groups: filter once, report forever.

**Setup (5 minutes):**
1. Labor > Setup > Employee Sub Category > Schedule Groups
2. Add "Morning Attendants"
3. Add "Evening Attendants"
4. Go to Employee Maintenance, select each person, assign group
5. Now every report/filter in the system recognizes these groups

**Real-World Extension:**
Some properties use groups like:
- By shift (AM/PM/Night)
- By skill level (Senior/Experienced/New)
- By department function (Guest Rooms/Public Areas/Turndown)
- By language (for diversity reporting or specialized tasks)

**Trainer Callout:** "Set up 5–6 Schedule Groups that match how your operations actually run. Done once, used forever. Good investment."

---

## Sorting & Filtering — The 30-Second Workday Saver

**Why?** Instead of scanning 200 names, show only the 30 front-desk people for Friday. Instantly.

**Sorting:**
- "Sort by Employee Name" — alphabetical, easier to find someone
- "Sort by Utilization (High to Low)" — who's scheduled the most? Useful for load balancing
- "Sort by Utilization (Low to High)" — who has room for more? Find the person for the open shift
- "Sort by Seniority" — respect the chain
- "Sort by Job Rank" — group leads together, then staff

**Filtering:**
- Filter by Schedule Group: Show only "Morning Attendants"
- Filter by Job: Show only "Front Desk" people
- Combine: "Show Morning Attendants in Front Desk" (both filters at once)

**Real Workflow:**
Manager enters scheduling screen.  
1. Filter to "F&B Department"
2. Sort by "Utilization (Low to High)"
3. Sees immediately: Chef is over 40 hrs, Junior is at 20 hrs
4. Knows who to call for Saturday brunch coverage

**Column Selection (View Button):**
Besides filters, you control *what you see*:
- Show Scheduled Hours? Yes
- Show Estimated Hours? No
- Show Availability Bar? Yes
- Show Daily Weather? (yes, affects some properties' staffing)
- Hide Fully Scheduled Employees? (yes, focus on who still needs hours)

**Trainer Callout:** "One minute with filters saves 20 minutes of manual work. Learn them first."

---

## Shift Operations — The Mechanics

**Adding Shifts:**

Slow method: right-click cell > Add Shift > fill form  
Fast method: click cell > press Enter > fill form  
Fastest method: copy an existing similar shift + paste

**The Form Fields:**
- Shift Date: when
- Start/End Time: when
- Job: which department area
- Assignment: which specific role (if used)
- Shift Category: usually "Default" unless you track special flags (training, fill-in, standby, etc.)
- Shift Note: anything relevant (special request, coverage for absence, temporary assignment)

**Copying Shifts (Don't Rebuild Every Week):**
- Standard 7-day schedule for Main Dining Room? Schedule it once.
- Copy it forward 13 weeks.
- Overwrite exceptions only (call-offs, special events, vacation blocks).

**Deleting/Restoring:**
- Delete does exactly what it says. Gone.
- But there's an "Undo" button (gear menu).
- And a "Restore Auto Schedules" for scheduled patterns you want to reset.

**Drag & Drop Assignment:**
- Click a shift bar
- Drag to another employee
- Instant reassignment
- Useful for swaps or covering no-shows

**Trainer Callout:** "First property you implement: invest 2 hours building template schedules for all departments. Every property after that: 30 minutes to customize templates. Template library is your hidden productivity tool."

---

## Utilization Bars — The Visual Language

**Yellow bar** = scheduled hours for this person this week  
**White bar** = available hours for this person this week  
**Red bar** = oops, scheduled more than available (violation)

**How to Read It:**
- Mostly yellow (filling the white): you're using their availability well
- Mostly white (small yellow): person is underutilized — room to add hours
- Red: you've made a mistake (or someone changed their availability after you scheduled)

**Why It Matters:**
- Labor cost visibility: yellow bar tells you at a glance who's expensive (long bars) and who's light
- Fairness: visual equity — peers should have similar bar lengths if skill level is the same
- Compliance: red bar = violation (over-schedule) — union contracts, labor laws, company policy

**Common Misreading:**
A long yellow bar doesn't mean "bad" — it means the person is scheduled heavily. Could be right (they're full-time, high availability). Could be wrong (you wanted part-time but scheduled full-time by accident).

**Trainer Callout:** "Bar lengths tell a story. Long bars + high labor cost = is this person the right fit? Short bars on a full-time hire = are we utilizing our resources? Use the bars to ask questions, not judge."

---

## Reports — The Scoreboard

**LABOR EFFECTIVENESS** (Job Performance)
- Shows each job individually
- Columns: Actual Hours worked, Standard Hours expected, Projected Hours planned, Variance
- Purpose: "Is this position efficient?"
- Read: If Actual (234) < Standard (245), you're efficient (–5% variance). If Actual (234) > Standard (227), you're running heavy (+7%).

**WEEKLY LABOR SUMMARY** (Operations Performance)
- Shows forecast vs. scheduled vs. actual, by day, by job
- Includes cost columns (Actual Costs, Standard Costs, Variance $)
- Purpose: "Did we execute the plan? Did it cost what we expected?"
- Read: Friday Actual Cost $1,200, Standard $1,100 = we spent $100 more than planned. Why?

**LABOR PRODUCTIVITY** (Unit Economics)
- Each job shows: Unit of Measure (Hours/Room, Hours/Cover, Hours/Event)
- Actual vs. Required vs. Standard productivity (as ratio)
- Purpose: "How efficient are we per unit of work?"
- Read: Housekeeping at 0.87 Hours/Room (required is 0.85) = slightly over standard but good performance.

**WEEKLY SCHEDULE** (Employee & Coverage Plan)
- Print-friendly list of who works when
- Distributed to staff for their wall calendar
- Purpose: "What's my schedule? Who's working with me?"
- Read: Easy reference, no numbers needed.

**Trainer Callout:** "Run these reports weekly in staff meetings. Shows people you're managing to metrics, not guessing. Transparency builds trust."

---

## Timeline Scheduling — Alternative View

**When to Use:** When visual coverage across the week matters most (F&B, Front Desk, operations with spike demands)

**How It Differs from Standard Scheduling:**
- Vertical axis = employees or jobs (depends on view)
- Horizontal axis = time (hours and days)
- Shifts appear as color-coded bars spanning their duration
- Zoom in/out to see detail or big picture
- Drag shift bars to reassign instantly

**Advantages:**
- See coverage gaps visually (blank spaces = no one assigned)
- See overlaps (too many people same time)
- Drag-and-drop is faster than form-filling for simple moves
- Better for complex scheduling (events, variable shifts, cross-coverage)

**Disadvantages:**
- Can't see detailed KBI data or cost as easily
- Column-based view (standard scheduling) is better for large employee lists

**Best Practice:** Use standard scheduling for planning + cost. Use timeline for coverage visualization + quick adjustments.

---

## Availability — Hospitality Reality Check

**Hotel Housekeeping Example:**
- Ana: Required Off Tuesday–Wednesday (school classes), Available to Work Thursday–Monday 6 AM–4 PM
- Michael: Preferred Off weekends (secondary job), but will work if needed
- David: Available to Work anytime (full-time, flexible)

Setup each in Employee Maintenance > Scheduling tab. Now schedule around these realities.

**Restaurant Example:**
- Front-of-house: Preferred Off Mondays (industry standard slow night)
- Line cooks: Available 10 AM–11 PM (shift-based kitchen)
- Manager: Available all hours (salary)

**Retail Example:**
- Student staff: Required Off 8 AM–2 PM (school), Available 3 PM–close
- Full-time supervisor: Available all hours
- Saturday specialist: Preferred Off during weekday (primary job), available Saturdays only

**Implementation:** Every availability change is a 30-second update in the system. Do it as people request it, not in batches. Accuracy matters.

---

## Walkthrough: Build a Schedule

**Scenario:** You're building the housekeeping schedule for next Monday. 100 rooms expected.

**Step 1: Check Forecast & Projected Hours**
- Labor > Planning
- Select your property, department (Housekeeping)
- See Monday: 100 rooms forecasted
- System says you need 85 hours (100 rooms × 0.85 hours/room standard)
- You have 12 full-time housekeepers (8 hrs each = 96 available hours) + 4 part-timers

**Step 2: Check Availability**
- Labor > Scheduling
- Monday filter
- Filter by "Housekeeping"
- Look for red bars (over-scheduled) or Required Off blocks
- Ana: Required Off Monday (checking against availability, she's blocked)
- Michael: Available
- All 15 others: Available

**Step 3: Build the Schedule**
- Copy template from last Monday (same day of week, similar pattern expected)
- Delete Ana's shift (she's not available)
- Add Michael to morning shift (he preferred evening off, but he's available)
- Adjust start/end times as needed for coverage
- Total hours: target 85, you've got 86. Perfect.

**Step 4: Review**
- Look at Utilization bars. Full-timers show 8 hrs (yellow); part-timers 4-5 hrs (yellow). Looks balanced.
- Check Daily Summary at bottom: Monday shows 86 scheduled, 85 projected. ✓
- No red bars (violations). ✓
- Click Publish Schedule. Done.

**Tuesday Morning Review:**
- Labor Effectiveness Report shows Monday actuals in.
- Housekeeping Actual Hours: 88 (expected 85)
- Over by 3 hours. Why? Unusual guest request? Housekeeping emergency? Check notes.
- 3 hours over on 100 rooms = still good. 0.88 hours/room vs. 0.85 standard.

---

## Quick Tips for Trainers

**Myth Busting:**
- "This system will do the scheduling for me" → Nope. It calculates targets and removes data-entry busywork. You still decide.
- "I have to use the system exactly as Unifocus says" → No. You adapt it to your operation. Assignments, Schedule Groups, and Job codes are customizable to fit your reality.
- "This will catch every mistake" → Violations (red bars) help, but you need to *read* the reports. System shows data, human judgment applies meaning.

**Common First-Month Issues:**
1. Availability is incomplete — someone's marked Required Off on their best hours by accident
2. Assignments are missing — you ask for a pastry cook but didn't assign "Pastry" to the person
3. Schedule Groups were never created — you still manually count
4. Reports are never run — data sits unseen, no insights happen

**Prevention:** First week of go-live, run every report, walk through the checklist, assign someone as "Unifocus champion" to maintain availability + assignments + groups.

---

## Trainer Handout: One-Page Cheat Sheet

[This can be extracted into a separate document for properties to print and give managers]

**Unifocus Quick Ref for Property Managers**

| Task | Path | Time |
|------|------|------|
| Build a schedule | Labor > Scheduling > filter > add/edit shifts | 30 min/week |
| Check labor cost | Labor > Scheduling > Show Daily Summary | 2 min |
| See if you're efficient | Reports > Labor Effectiveness | 5 min |
| Find out who works Friday | Labor > Scheduling > filter by date | 1 min |
| Add a new employee | Labor > Employee Maintenance | 15 min |
| Update someone's availability | Labor > Employee Maintenance > Scheduling tab | 2 min |
| Publish the schedule | Labor > Scheduling > Manage/Publish | 1 min |
| See forecast vs. actual | Reports > Weekly Labor Summary | 5 min |

**Four Types of Hours — Which One?**
- Need to plan?: Projected
- Need to execute?: Scheduled
- Need to compare to actual?: Standard
- Looking at time cards?: Actual

**Utilization Bar Colors**
- Yellow = scheduled hours
- White = available hours
- Red = problem (over-scheduled)

**Filters & Sorts**
- Filter: by Schedule Group, by Job
- Sort: by Name, by Utilization, by Seniority

---

*© Peter A. Castellano / Platinum Workforce Strategies. Unifocus content proprietary. Not for model training.*
