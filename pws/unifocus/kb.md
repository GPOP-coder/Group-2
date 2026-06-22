# Unifocus — Knowledge Base

Last updated: 2026-05-26

---

## Platform Overview

Unifocus is a workforce management platform. PWS's consulting methodology is grounded in Unifocus architecture and best practices. All client work involving Unifocus is proprietary — not for model training.

---

## Core Concepts

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
