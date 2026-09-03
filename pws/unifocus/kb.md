# Unifocus — Knowledge Base

Last updated: 2026-09-02

---

## Support Ticket Conventions — On-Site/Urgent Tickets

**Per Alain Derderian's group-wide guidance, relayed to Pete 8/31/26 (7:51 PM):** Unifocus's escalation automations key off subject-line format, so on-site/urgent tickets need a consistent subject line across the whole consultant group to trigger escalation reliably.

**Required subject line format:**
```
Consultant On-Site - Hotel Name - Subject Description
```

**Avoid:** the word "CLIENT" and special characters like `!`, `*`, `"` — these can throw off the escalation automation rather than helping.

**Examples (from Alain's email):**
- `Consultant On-Site - Yosemite Resorts - Receiving Ajax Error when attempting to add Labor Standards`
- `Consultant On-Site - Eau Palm Beach Resort - All Clients Labor Report Error`
- `Consultant On-Site - JA Resorts - Labor Dashboard keeps disappearing - JA Database - Ocean View`

Alain adds himself as a Watcher to any ticket meeting escalation criteria under this format, to help push it along.

**Note:** The Moran's UNIFOCUS-261575 (filed 8/31/26, subject "Schedules Not Generating - Consultant on property") predates this guidance and doesn't follow the format — not worth re-filing, but every urgent/on-site ticket going forward should use this subject convention.

---

## Platform Overview

Unifocus is a workforce management platform. PWS's consulting methodology is grounded in Unifocus architecture and best practices. All client work involving Unifocus is proprietary — not for model training.

**Company facts (per standard kickoff deck, confirmed 2026-07-03):** 42 years of consulting; software line since 1999 (27 years). Over 3,000 customers in 114 countries. HQ Dallas, TX; other offices in London, Singapore, Shanghai, Delhi. Hospitality-only focus. 4 core products: Time & Attendance, **Planning & Scheduling** (PWS's engagement area), Operations Suite, Survey Solutions.

**Kickoff/onboarding content:** See [Unifocus Implementation Kickoff Guide](../kb/unifocus-implementation-kickoff-guide.md) for the full client-facing kickoff framework (implementation phases, conceptual Forecast→Standards→Schedule model, weekly labor cycle, success factors, post-go-live adoption practices).

---

## Core Concepts

### Implementation as a Capstone System — Why ADP/HR Miscoding Always Surfaces

**Pete's observation, 9/2/26 (Moran implementation, generalized from a pattern seen across clients):** Unifocus is a **capstone system** — it sits on top of and depends on the accuracy of every upstream system feeding it (ADP job/department codes, Work Records, PMS, POS). Because the auto-scheduler and labor standards require exact, correct job coding to function, implementing Unifocus reliably **shines a light on long-standing silent data-quality problems** that existed for years without consequence — nobody noticed or cared because nothing downstream depended on the data being right.

**Why this matters:** these findings are not Unifocus bugs and not implementation mistakes — they're pre-existing property-side data debt that the implementation process is what finally makes visible and consequential. Recurring examples across engagements: employees coded to a job they no longer actually work (valet parkers who moved to Bell years ago, still coded as valet — see The Moran, 9/2/26), missing secondary job codes causing real payroll issues nobody had caught (Jesse Sandberg working Night Auditor with no differential pay code, Moran), stray/mismatched TK and Reconcile codes from manual Paychex edits drifting out of exact-match format (WLP, 8/27/26), unexplained bulk attributes with no clear origin (Mohonk's "Work Class 12" mystery). **How to apply:** frame these findings to clients as expected and normal ("this is common, it's not unusual" — Pete's own words), not as a Unifocus problem or a property failure. It's a natural, valuable byproduct of implementation, not a sign something's going wrong.

### Labor Standards — Purpose
Labor standards **model the number of hours required to run an operation** — not the number of hours to schedule. Schedulers must understand this distinction. The schedule is a product of the standard, but the manager controls it once drafted.

### Daily Hours vs. Units/Shift
Two separate settings within a labor standard. Always evaluate independently.

| Setting | What it controls |
|---|---|
| **Daily Hours** | Total hours the standard says the outlet needs to operate |
| **Units/Shift** | Volume-driven metric (covers, transactions, etc.) that drives incremental staffing |

**Diagnosis sequence:** Always examine Daily Hours first before looking at Units/Shift.

---

### Partial Shifts / Short Shifts

**What happens:** When Daily Hours do not divide evenly by the shift length, the remainder generates a short shift. There is no "partial shift feature" to enable or disable — this is inherent system behavior.

**Floor:** The minimum shift length setting determines the shortest shift the system will generate. If the remainder of hours meets or exceeds that minimum, a short shift is scheduled.

**Example:** A 2.5-hour minimum shift length with a remainder triggering that threshold produces a 5:15–7:45pm shift in a dinner operation.

**Fix:** Set Daily Hours to a clean multiple of the **actual** shift length — verify real shift duration, not just the labeled duration in the standard. No remainder = no short shift.

**Client guidance:** Explain outcomes and actions, not mechanics. Tell the client what to expect and what to do — not how the calculation works.

**Important distinction:**
- "Note the issue and move on" applies when the standard is correctly configured and a rare edge case creates an occasional short shift
- When short shifts are systematic (recurring every week on the same shift), the standard itself is misconfigured — diagnose and fix the standard, don't tell the client to absorb it

---

### Shift Length Accuracy

- Always verify the **actual** shift duration against the labeled shift length in the standard
- A shift labeled 4.5 hours that actually runs 5 hours (e.g., 5:15–10:15pm) will produce systematic short shifts even when Daily Hours appear to be a clean multiple
- Confirm actual start/end times with the client before diagnosing Daily Hours math
- Common source of error: historical shift lengths that changed operationally but were never updated in the standard

---

### Shift Generation Sequence

Unifocus generates shifts in this order. Understanding the sequence is essential for diagnosing short shift and rounding problems.

1. **Hours first** — The standard calculates total hours required (Daily Hours + volume-driven Units/Shift)
2. **Full shifts** — System fills as many complete shifts as the hours allow
3. **Remainder** — Any leftover hours are evaluated against rounding rules
4. **Rounding Threshold Below One** — If the remainder is below this value, it is absorbed (no additional shift generated). Set to 0.00 = nothing is absorbed; any remainder triggers a shift.
5. **Rounding Threshold Above One** — If the remainder exceeds this value, it rounds up to a full shift
6. **Min/Max Shift Length** — If a new shift is created from the remainder, it must fall within these bounds. If the remainder is below the minimum, no shift is created. If it meets or exceeds the minimum, a short shift appears.

**Key insight:** A leftover hour might become a 5-hour shift (if rounding rounds up) or disappear entirely (if absorbed) or produce a short shift (if it hits the minimum floor) — depending entirely on these settings working together.

**Mohonk Main Dining example:** Rounding Threshold Below One = 0.00 means nothing is absorbed. Any remainder creates a shift. Min shift length = 2.5 hours. So even a small remainder produces a visible short shift.

---

### Schedule Generation Sequence — Standards → Shifts → Auto-Scheduler

*Captured 2026-07-03, from Mohonk beverage jobs troubleshooting.*

Three distinct steps, in order. Each depends on the one before it — a failure anywhere upstream will look identical to a failure at the final step unless you check each stage independently.

1. **Forecast Volumes** — the demand input (covers, transactions, etc.) that feeds the standard.
2. **Generate Projected Hours** — applies the labor standard to the forecast and **creates shifts**. This is where "standard hours" live.
3. **Generate Schedules** — activates the **auto-scheduler**, which **fills** the shifts created in step 2 with employees, according to the settings in **Employee Maintenance** (controlled by the manager).

**Critical misconception:** The output looks like the auto-scheduler "schedules employees." It does not. **It fills shifts that already exist.** If no shift was created in step 2, there is nothing for the auto-scheduler to fill in step 3 — and the symptom presents identically to an auto-scheduler failure.

**Troubleshooting order — always work backwards from the end result:**
1. Check the job in the auto-scheduler. **Pick the correct week first** — if the reporting party didn't specify one, don't assume; check the current/upcoming week ending (WE) and say so explicitly when documenting. Are there **unassigned Open Shifts**?
   - **Yes** → shifts exist, meaning steps 1–2 worked (forecast and standard hours generated correctly). The problem is downstream of shift creation — but don't jump straight to Employee Maintenance. See step 2.
   - **No** → shifts were never created. Stop looking at the auto-scheduler entirely — the problem is upstream, in Generate Projected Hours / the standard itself.
2. **Before diagnosing Employee Maintenance, check the Generate Schedules task itself (Task Scheduler → the task's Labor Structure / job selection).** Confirmed failure mode (Mohonk, 2026-07-03): the task can have a Labor Structure selection that **silently excludes specific jobs**. Shifts for those jobs generate correctly and sit as unassigned Open Shifts forever — not because no eligible employee existed, but because the auto-scheduler task never ran against that job at all. This looks identical to an Employee Maintenance eligibility problem from the schedule screen alone; the only way to catch it is to open the task's job selection list and check whether the affected job is actually checked.
3. Only after confirming the job is in-scope for the Generate Schedules task should you move to true Employee Maintenance diagnosis (availability, qualifications, scheduling rules).

**Why this matters:** "Job X isn't auto-scheduling" is a description of the end result, not a diagnosis. It conflates at least three independent failure points: shift generation (step 2), task scope/configuration (which jobs the Generate Schedules task even considers), and shift filling (actual employee eligibility). Always work backwards through all three before concluding it's an Employee Maintenance issue.

**Related pattern — Task Scheduler as a recurring root cause:** [UNIFOCUS-247559](https://ufjira.atlassian.net/browse/UNIFOCUS-247559) (Mohonk Founders outlet, Generate Projected Hours) was resolved by creating a new task and disabling the old one. The Mohonk beverage jobs case (2026-07-03) is a different Task Scheduler failure mode on the Generate Schedules task — not a stale/duplicate task, but an incomplete job selection within the task's configuration. Both point to the same lesson: when a job's numbers look right but its output is missing, check the **task configuration itself**, not just the standard or the schedule screen.

---

### Day-of-Week Shift Differentiation

- Unifocus allows separate shift configurations by day of week within the same job
- A day-specific shift with a different length than the rest of the week creates a de facto split standard
- Each day's Daily Hours must be calibrated independently to that day's shift length
- Misalignment between shift length and Daily Hours multiples is a common source of short shifts
- Always confirm whether day-of-week differences are intentional before correcting

---

### Jobs and Assignments

**Jobs** are the base labor classification in Unifocus (e.g., Server, Cook, Bartender).

**Assignments** (sub-jobs) allow different labor standards to exist under a single job code. Use cases:
- **Kitchen stations:** TA tracks the job (Cook), but standards are by station (Grill, Fryer, Salads, Prep)
- **Seasonality:** Separate assignments for Summer vs. Winter with different hours of operation and effective dates
- Standards can live on the job, the assignment, or both

**Effective dates** apply to both jobs and assignments. This enables seasonal configuration without creating new job codes.

**Permanent limitation:** Jobs and assignments cannot be deleted — only deactivated. Deactivated items can linger and create confusion in the interface. There is no tool to make them disappear completely.

**Pete's philosophy on assignments:**
- Do NOT use job codes or assignments to indicate time of day (AM vs. PM) — there are better tools for that within the standard itself
- Overuse of assignments creates configuration debt that is painful to unwind
- When assignments are misused, the correct fix is deactivation and migration of standards to the appropriate department/job level

---

### Rounding — Purpose and Limits

Rounding settings (Threshold Below One, Threshold Above One) govern how leftover hours after full shifts are handled. They are **not** the right tool for preventing partial shifts caused by misconfigured standards.

- Changing rounding to hide a short-shift symptom creates downstream problems elsewhere
- The correct fix for systematic short shifts is always to correct the standard itself (Daily Hours as a clean multiple of actual shift length)
- Rounding is a fine-tuning tool, not a diagnostic workaround

---

## Standard Banquet KBI Numbering Pattern

*Cross-client standard. Used repeatedly across PWS engagements. Captured May 29, 2026.*

### Meal Period Code Ranges (5xxx = own banquet at each property)

| Range | Meal Period | Notes |
|---|---|---|
| 5100s | Breakfast | |
| 5200s | Lunch | |
| 5300s | Dinner | Late not typically seen in banquet KBIs |
| 5400s | Receptions | |
| 5500s | Meetings | |
| 5600s | Breaks | |

### Sub-Code Convention Within Each Range

| Ending | Meaning |
|---|---|
| x00 | **Total** (e.g., 5100 = Breakfast Total) |
| x01 | **Group** |
| x02 | **Local** |

Group and Local are added back together for labor standards; the split is for Revenue Center forecasting only.

### Service Types Within Meal Periods (Breakfast, Lunch, Dinner, Reception)

- Plated
- Buffet
- Continental
- Box
- Special
- Wedding

Special and Wedding apply across Breakfast, Lunch, Dinner, AND Reception — not just Dinner territory.

### Reception Types

| Type | Food Served? | USALI Customers? |
|---|---|---|
| Cocktail | No (beverages only) | ❌ 0 customers |
| Light / Lite | Yes | ✅ Count attendees |
| Full | Yes | ✅ Count attendees |
| Heavy | Yes | ✅ Count attendees |

### Meal Period Notes
- **Late:** Not typically seen in banquet KBI structures. Prepare numbering to accommodate (5700s) but don't build unless the property uses it.
- **Afternoon / Overnight (Rosewood-specific):** Brand additions beyond USALI standard. Map Afternoon → Lunch in Unifocus unless a dedicated KBI is needed. Falls into USALI "Other" bucket.

---

## Client Communication Standard (PWS)

> Explain outcomes and actions, not mechanics. The client's job is to run the operation. Our job is to know why it works. Reserve technical detail for when the client specifically needs it to make a decision.

This applies across all PWS clients, not just Unifocus engagements.

---

## Open Items

- [ ] PWS employment opportunity: Product Owner role under Priyanka Kalia (VP Product Management) — compensation not yet discussed
- [ ] M365 connector (pcastellano@unifocus.com): approved and active — monitor and provide feedback

---

## KBIs — Key Business Indicators

KBIs are calculated metrics in Unifocus that aggregate operational data for forecasting, reporting, and labor planning.

**KBI calculation triggers — three paths:** Any of the following will run KBI formulas and fail if a formula references a nonexistent KBI code:
1. **Calculate KBIs task** — scheduled system task; only runs when a forecast has been entered for that period
2. **Generate Standard Hours** — triggers KBI calculations as part of the standard hours generation process
3. **Generate Projected Hours** — also triggers KBI calculations

All three must succeed for labor planning to function correctly. A broken formula blocks all three.

**Day qualifier — required in all KBI formula references:** Every cross-reference to another KBI must include a day qualifier. `[0]` = today's value. `[-1]` = yesterday's value. Omitting the qualifier causes the calculation to fail even if the KBI code itself is valid. Example: `##7010[0]*.9` is correct; `##7010*.9` will fail.

**Cross-property KBIs:** KBIs that aggregate data across multiple properties within a shared database (e.g., Baha Mar campus). Must be built at each property individually and tested to confirm cross-property inclusion is correct after any property is added to the database.

**Purpose of cross-property KBIs:** The goal is Resort Total Rooms, Arrivals, Guests, and Stayovers — and most critically, **Resort Total Available Guests by meal period**. Campus-wide outlets whose covers are modeled by regression depend on the entire resort guest population (total guests minus all banquet events). All property inputs must be accurate for the regression to produce valid results.

**Implementation anti-pattern:** Do NOT replicate property-specific operational KBIs (e.g., GH housekeeping workload) in other properties' databases. Each property only needs its own operational KBIs plus the cross-property aggregates. Duplicating property-specific KBIs across the campus creates noise, confusion, and maintenance burden.

**Total Resort KBI:** Aggregates rooms + banquet available guests for each meal period across all properties. The target end-state for Baha Mar's cross-property KBI build.

**Stayover KBI:** Tracks guests staying over (not arriving or departing). Separate formula from arrival/departure counts; a common source of formula errors when KBI IDs change or are referenced incorrectly.

---

## Actuals vs. Budget — Two Different Paths to the Same Granular KBIs

*Standard Unifocus practice, not client-specific. Captured 2026-07-20 from the Rosewood/Baha Mar BNQ Hours fix — see `pws/clients/baha-mar/kb.md` item 17 and `pws/clients/baha-mar/2026-07-20_bnq-hours-call-notes.md` for the concrete case this generalizes from.*

Labor standards are always activated by the **granular Ttl KBIs** (e.g., Ttl Plated, Ttl Buffet, Ttl Continental for meal periods; Ttl Cocktail/Light/Full/Heavy for Reception). But those granular Ttl numbers get populated two completely different ways depending on whether you're looking at day-to-day/week-to-week actuals or at budget:

**Day-to-day / week-to-week (actuals):**
- Granular **Group and Local** KBIs come in directly from the EMS (Delphi, in Rosewood's case) — already split by Group vs Local *and* by service type (Plated/Buffet/Continental/Cocktail/etc.), because that's the level of detail real bookings carry.
- Those granular Grp + Loc KBIs get **totaled up** into the matching granular Ttl KBI (Ttl Plated = Grp Plated + Loc Plated, etc.).
- The granular Ttl KBIs activate the labor standards.

**Budget (forward planning):**
- Budget input is deliberately **generalized** — properties only forecast at the meal-period level: Breakfast, Lunch, Dinner, Reception (the Ttl-level #5100/#5200/#5300/#5400-style KBIs), with no Group/Local split and no service-type breakdown.
- The system takes those general meal-period Ttl inputs and uses **historical percentages** (real Plated/Buffet/Continental/Cocktail/Light/Full/Heavy splits from prior actuals) to break each one down into the granular Ttl KBIs.
- Those derived granular Ttl KBIs then activate the labor standards for budget purposes — same standards, same granular KBI targets as actuals, just populated top-down from a simpler input instead of bottom-up from Grp+Loc EMS detail.

**Why this matters for diagnosing "standard generating no/wrong hours" issues:** check which path is actually feeding the KBI in question. A property (or a consultant) entering budget data at the Group/Local or already-granular level — rather than at the general Ttl meal-period level — breaks the percentage-based budget path, even though the same granular KBI would populate correctly from real EMS data during actuals. The fix is rarely "rebuild the KBI structure" — it's almost always "put the input at the right level for the path you're actually on."

---

## Banquet Mapping — Booking/Event Type Combinations

Unifocus maps imported banquet data (from EMS/Delphi) to internal planning using Booking/Event Type combinations. The mapping screen only shows combinations the system has encountered in an actual import.

**Problem:** Initial mapping captures only the combinations present in BEOs imported at go-live. New combinations added later are invisible to the mapping screen.

**Solution — Dummy BEO File Approach:**
1. Create a synthetic BEO file containing every valid Booking/Event Type combination for a property
2. Monali Desai (Lead, Data Integration & Interface Implementation) does a one-time import
3. All combinations become visible in the mapping screen
4. Dummy file is deleted — does not affect any past or future planning weeks
5. Full mapping can now be completed

This is a one-time setup step per property. Must be repeated if new combinations are ever added to the EMS.

**Delphi:** The Event Management System (EMS) used for banquet/event management at hotel properties. Can be property-specific or a shared companywide instance. Banquet files are exported from Delphi and imported into Unifocus.
