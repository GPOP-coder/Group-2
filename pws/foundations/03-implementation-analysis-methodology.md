# Document 3: Implementation & Analysis Methodology
**PWS — Hospitality & Consulting Foundations**
*Source: Peer conversation May 19, 2026 + prior PWS client conversations (MHBR, Mohonk, Baha Mar)*
*Last updated: May 26, 2026*

---

## 1. The Missing Step — Pre-Implementation Analysis

### What It Was
Before Unifocus became a software company, implementations began with analysis. While consultants gathered information about the property — its operation, its volumes, its staff, its quirks — the interface team had time to build the interfaces. By the time the property signed off on go-live, the interfaces were already established and tested.

### What Happened
Post-Riverside, pre-implementation analysis was largely eliminated. Implementations became checklist-driven. The result:
- Interfaces are not ready at go-live
- Consultants arrive onsite and spend time staring at a screen waiting for data
- Properties go live with incomplete configurations
- Post-go-live firefighting replaces pre-go-live preparation
- Clients complain that Unifocus doesn't work — when the real problem is the implementation

### What PWS Does Instead
PWS restores the analysis step. Before configuration begins:
- Understand the property's operation
- Identify volume drivers by department
- Map interface requirements
- Validate data sources
- Set realistic go-live criteria

This is the gap. This is what clients are paying for.

---

## 2. Interface Architecture and Planning

### The Core Problem (as of May 2026)
Interface automation is not established at project outset. Instead:
- Imports are done manually
- Manual imports are forgotten or delayed
- Properties go live 10 days behind on data
- No one takes ownership of automating the interface from the start

### The Right Approach
- Identify all interface requirements during pre-implementation analysis
- Map data sources: PMS, POS, T&A, payroll, accounting
- Establish interface file formats and transmission schedules before go-live
- Test interfaces with live data before cutover
- Automate from day one — not as an afterthought

### For Existing Clients Adding Properties
If a client already uses Unifocus and is adding a new property, the interface requirements are largely known. There is no excuse for not having interfaces ready before go-live. This is a recurring failure pattern.

---

## 3. The Briefcases
*Developed by Pete's peer (Dallas) — shared IP*

### What They Are
Department-specific Excel workbooks that translate raw, property-specific data into a labor standard usable directly in Unifocus configuration — or at minimum, a defensible target for which to shoot.

Think of the Briefcase as the third gutter, stretching the bowling alley concept into a third dimension: it takes the property's own data and turns it into the inputs the gutter system needs.

### What They Contain
Each Briefcase is specific to a department or function. Known examples:
- Housekeeping / Room Attendant
- Culinary / Kitchen
- Banquet
- Front Desk / Rooms
- Payroll

Each workbook asks: what are the inputs? What do you have to have to be able to build this standard? Then it calculates the output — a standard grounded in the property's own reality, not industry generic.

### The Culinary Workbook
- Consultant or chef enters the menu
- Workbook calculates what the labor standard should be
- Eliminates the current process: chef takes the workbook, works on it for two weeks, returns something inconsistent
- Target: AI-assisted input so the chef can complete this in a fraction of the time

### The Key Questions the Briefcases Answer
Instead of a consultant arriving onsite and asking open-ended questions, the Briefcase defines exactly what information is needed and in what format. This is the difference between a structured analysis and a conversation that produces nothing actionable.

---

## 4. AI-Assisted KBI Configuration Audit
*Pete Castellano / PWS — developed and applied at Baha Mar*

### Background
Baha Mar has 4 properties, 3 with banquets. Each property was implemented separately, by different consultants, at different times. The result: inconsistent KBI configurations across the portfolio, some with errors, some missing categories, some with wrong formulas.

### The Method
1. Run a KBI Configuration Report for each property
2. Feed all four reports to Claude (AI) with a clear set of rules:
   - Every property must have group vs. local
   - Every property must have breakfast, lunch, dinner, continental
   - Plated vs. buffet distinctions required
   - Group vs. local totals required
   - Configuration must be consistent across all four properties
3. Claude reads all four reports simultaneously and produces:
   - A property-by-property list of what needs to be added
   - Identification of calculation errors
   - Identification of inconsistencies (e.g., one property using prior-day departure when it shouldn't)
   - A step-by-step remediation plan

### Results at Baha Mar
- Analysis completed in under one minute
- Found formula errors that had been causing regression failures
- Found departure day calculations looking at the wrong day
- Found inconsistencies in booking type configurations across properties
- Produced a clear remediation backlog (approximately 3 weeks of configuration work)

### Why This Matters
This audit would have taken a consultant days to do manually — if it was done at all. Most properties never get a systematic cross-property configuration audit. They just live with the errors until someone complains that the regression doesn't work.

### Replicability
This methodology can be applied to any Unifocus client with multiple properties. The inputs are the standard KBI Configuration Reports. The rules are defined by the consultant based on what the configuration should look like. The AI does the comparative analysis.

---

## 5. Banquet Configuration — The Baha Mar Case Study

### The Setup Problem
When Rosewood (first property at Baha Mar) was implemented, banquet KBIs were configured with group vs. local booking types — the correct approach for a property that has both external group business and internal/employee events.

When the other two properties with banquets were implemented later, a different consultant accepted the client's claim that "everybody's a group — we don't have local." The local booking type was not configured.

### The Consequence
- 5,500 employees at Baha Mar
- Employee meetings generate BEOs
- Employee events are internal — they are not group business
- Without a local booking type, internal events have no home in the configuration
- Regression fails because the data is miscategorized
- Client complains that Unifocus doesn't work

### The Lesson
Every outlet should be configured with every meal period and every booking type from day one — even if current operations don't use them. If they don't do breakfast: put in zeros, or shut the meal period off. When they add breakfast, the configuration is already there.

The cost of reconfiguring later — in consultant time, client frustration, and data integrity — far exceeds the cost of building it right the first time.

### Pete's Standard Configuration Rule
Every F&B outlet gets:
- Breakfast, lunch, dinner, late night (shut off what you don't use)
- Group and local booking types
- Plated and buffet where applicable
- Continental and box meal options where applicable
- A total for each

Build the whole board. Turn off what you don't need. Turn it back on when they change their mind.

---

## 6. Post-Implementation Recovery

### The Pattern
Many of Pete's engagements begin with a client who has Unifocus already installed — sometimes for years — but not working correctly. Common causes:
- Incomplete initial implementation
- Consultant turnover mid-implementation
- Standards never developed or developed incorrectly
- Interfaces never automated
- Configuration errors never caught or corrected
- Property changed operations (added meal period, renovated rooms, changed staffing model) and nobody updated the system

### The Recovery Approach
1. **Audit the configuration** — use the KBI audit methodology to identify what's wrong
2. **Audit the standards** — are they based on observation and data, or on guesses?
3. **Audit the interfaces** — is data flowing correctly? Is it current?
4. **Identify the gap** — what would it take to make this work the way it should?
5. **Build the remediation plan** — sequence the fixes, set realistic timelines
6. **Implement with the client** — don't just hand them a list; work through it with them

### The Business Case
Recovery engagements are often where the most value is demonstrated quickly. The system is already there. The client has already paid for it. Pete is making their existing investment work.

At MHBR: $101K/year in identified savings. 6.7x ROI on Pete's fee. This is a recovery engagement.

---

## 7. Training Timing — The Right Conditions for Go-Live

### The Problem
Clients and sales organizations push for training dates based on contract milestones and revenue recognition — not operational readiness. The result:
- Training happens when housekeeping staff is not available
- Training happens during peak season when managers are distracted
- Training happens before interfaces are live (no real data)
- No one retains what was taught because they couldn't practice with live data

### The Right Conditions
Before scheduling onsite training, confirm:
- Key staff who will be trained are available and not on vacation or blackout
- Interfaces are live and data is flowing
- Property is not in peak season or a major event period
- Management champion is available and engaged
- Go/no-go criteria are met

### The Contract Backstop
Unifocus contracts include a 3-week cancellation notice requirement with penalty clauses for last-minute changes. This exists. The question is whether it is enforced.

PWS position: enforce it. A training visit that happens under the wrong conditions wastes everyone's time, produces no results, and generates a callback engagement that costs more than doing it right the first time.

---

## 8. Configuration Backlog Management

### The Reality
Complex implementations — especially multi-property portfolios — generate configuration backlogs. At Baha Mar as of May 2026:
- Banquet booking type configuration across 3 properties
- KBI formula corrections identified in the AI audit
- Rosewood Miramar and SLS banquet pattern alignment
- Approximately 3 weeks of focused configuration work

### Pete's Approach
- Know what needs to be done (the audit provides this)
- Sequence the work by impact and dependency
- Do the tedious configuration work or delegate it to a trusted resource
- Use AI tools to accelerate where possible (e.g., feeding configuration rules and having AI generate the step-by-step)

### On Delegation
Pete's peer offered to do $2–3K/month of remote configuration work. This is the right model: Pete identifies what needs to be done (the expert judgment), someone else does the tedious clicking (the execution). AI accelerates the identification step.

---

*[To be expanded with: specific Briefcase templates when received from peer, interface file format examples, configuration checklist by module]*
