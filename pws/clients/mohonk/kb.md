# Mohonk Mountain House (MMH) — Knowledge Base

Last updated: 2026-05-28

---

## Contacts

| Name | Title | Contact |
|---|---|---|
| James Danks | Director of Dining Services | jdanks@mohonk.com \| 845.256.2073 |
| Bron Walis | (Dining — CC on issues) | bron@mohonk.com |
| Lou Petruzzelli | On-call Main Dining Room Server (position) | lpetruzzelli@mohonk.com |
| Patrice Huart | (Dining — CC on issues) | phuart@mohonk.com |
| Susanna Briggs | Unifocus internal contact | sbriggs@unifocus.com |
| Ralph Varble | Unifocus Chief Customer Officer | O: 972-512-5083 \| C: 832-226-8945 \| rvarble@unifocus.com |

---

## Implementation History

**Original implementation:** Significant configuration problems created during initial Unifocus implementation. James Danks had influence over the implementation team and steered decisions that created overuse of Assignments — consultants at the time were unable to push back effectively.

**Pete's remediation work (prior to current engagement):**
- Identified Assignment overuse as the root cause of configuration complexity
- Deactivated the majority of misused Assignments
- Migrated standards to the appropriate department/job level
- Result: dramatically simplified configuration, cleaner system

**Outcome:** James and all Mohonk stakeholders expressed strong satisfaction. Reported directly to Ralph Varble (CCO) how pleased they were and specifically requested Pete for all future Unifocus work at the property.

**Relationship context:** Pete's standing at Mohonk is unusually strong because he solved a problem the original implementation created. James can be demanding, but the relationship is positive and built on demonstrated results.

---

## Project Status

- Open PO: ~10 weeks in; ~2 weeks remaining once F&B standards arrive
- **Holding all F&B standard changes** pending Mohonk's operational decisions
- On-call main dining room server position: Lou Petruzzelli green-lit — configure with James Danks

## Onsite Visit — August 2026

**Arranged by:** Ralph Varble (CCO) and Susanna Briggs with Bron Walis and Lou Petruzzelli
**Purpose:** F&B standards review + training
**Tentative dates:** First week of August (second week also an option — Pete to confirm preference)
**Billing:** Covered under existing active change order
**Travel notes (from Ralph, who has been there):**
- Fly into **Newark** — easier than NYC; 10 miles further but avoids navigating out of the city
- Rent a car — approximately 2-hour drive to Mohonk
- First hour out of Newark covers only ~⅓ of the distance due to traffic; much faster once across NJ/NY border
- Albany is physically closer but harder to fly into and likely more expensive
- Must arrive **Sunday**, depart **Saturday** — Mohonk expects the full week

**Next step:** Unifocus to schedule a follow-up call with Mohonk in ~2 weeks; Pete will be invited
**Pete's status:** Blocking first week of August; checking for conflicts with Kim

---

## Tickets

| Ticket | Subject | Status |
|---|---|---|
| UNIFOCUS-247559 | Founders outlet — shifts not generating | 🔴 Active |

---

## Active Issues

### 🔴 Shifts Not Generating — Founders Outlet
**Ticket:** UNIFOCUS-247559
**Reported by:** James Danks — May 28, 2026
**Participants:** Pete Castellano, Susanna Briggs, bron@mohonk.com
**Status:** 🔴 Open — not yet diagnosed

**Issue:** System is not generating shifts for four Founders positions:
- Founders Head Runner
- Founders Runner
- Founders Head Host
- Founders Host

Forecast counts are being entered, so the trigger condition is met — the system should be producing shifts. It is not.

**Likely diagnostic areas:**
- Standards may not be configured for these job codes (no standard = no shift generation)
- Standards may exist but have zero or missing volume thresholds
- Outlet or department may be inactive or misconfigured
- Forecast may be entering to the wrong KBI

**Diagnostic progress (May 28):**
- Standards ARE built for the affected positions — configuration exists
- Founders Server works correctly — using it as the comparison baseline
- Investigated KBI references and standard settings — no obvious configuration error found
- **Pete's assessment:** Legitimate Unifocus bug — no configuration reason for the failure; compounds James' existing frustrations
- **Escalated to Susanna Briggs via Teams** with Jira link: https://ufjira.atlassian.net/browse/UNIFOCUS-247559

**Status:** ⏳ In Unifocus hands — Pete cannot resolve from the configuration side
**Billing:** Diagnostic time logged in Clockify

---

### ✅ Incomplete / Short Shifts — Main Dining Room Server
**Reported by:** James Danks, May 25, 2026
**Job:** `2 - Food and Beverage\Dining Room - Main\Server`
**Status:** ✅ Resolved — May 26, 2026

**Root cause:**
- Sun–Thu shift was mislabeled as 4.5 hours when the actual shift is 5:15–10:15pm (5 hours), matching Friday
- Sun–Thu Daily Hours = 9.0 (correct multiple of 4.5, but 4.5 was wrong)
- 9 hours ÷ 5-hour actual shift = 1 full shift + 4-hour remainder → triggered short shift at 2.5-hour minimum floor
- Result: server scheduled 5:15–7:45pm instead of 5:15–10:15pm

**Fix applied:**
- Confirmed with James: Friday separation IS intentional — Friday always opens at 5:15 PM; Sun–Thu sometimes opens at 6:00 PM
- Changed Sun–Thu Daily Hours from 9.0 → 10.0 to prevent the short shift the misconfigured standard was generating
- Retained day-of-week split — separation is operationally valid
- James to confirm next week whether short shifts are eliminated

**Open — deferred to F&B standards review:**
- What conditions trigger the 6:00 PM start on Sunday–Thursday?
- If Sun–Thu can run a 4.25-hour shift (6:00–10:15), Daily Hours and shift length may need revisiting at that time

**Lesson learned:**
- "Note the issue and move on" applies to rare edge cases when the standard is correctly configured
- When short shifts are systematic (every week, same shift), the standard itself is misconfigured — fix the standard

---

## Job Configurations — Known

### 2 - Food and Beverage \ Dining Room - Main \ Server

| Shift | Days | Shift Length | Daily Hours | Units/Shift |
|---|---|---|---|---|
| 1145–1445 | M–F | 3 hrs | 6.0 | Suppressed (0) |
| 1700–2215 | Sat | 5.25 hrs | 10.50 | 15 |
| 1715–2215 | Fri | 5 hrs | 10.0 | 15 |
| 1715–2215 | Sun–Thu | 5 hrs | 10.0 | 15 |

Volume range: 180–∞ (lunch) | 1–∞ (dinner)
Distribution: Non-Flow, Beginning

### 2 - Food and Beverage \ Dining Room - Main \ Server \ Main Dining AM — Planner Settings

| Setting | Inherited Value |
|---|---|
| Period Length | 15 Minutes |
| Standard Type | KBI Related |
| Min / Max Shift Lengths | min: 2.5 hrs; max: 12 hrs |
| Rounding Threshold Below One | 0.00 |
| Rounding Threshold Above One | 0.2 |
| Generate Long Shifts | Yes |
| Limit Shift To Max Shift For Non-... | Yes |
| Simple Non-Flowed Distribution | Beginning |
| Effective Dates | 1/1 – 12/31 |

Note: All values are inherited (no overrides set). Rounding Threshold Below One = 0.00 means no remainder is absorbed — any leftover hours will attempt to generate a shift, governed by the 2.5-hour minimum.

---

## Client Communication Notes

- James understands operational outcomes; does not need technical Unifocus mechanics explained
- Explain what to expect and what to do — not how the system calculates it
- Responsive via email; copy Susanna Briggs (Unifocus) on all threads
