---
# © Peter A. Castellano
---

# Union Station Nashville Yards — Property Implementation Notes

**Date:** June 16, 2026 (late evening)  
**Conversation:** Taylor Walton (Unifocus Consultant) and Pete Castellano  
**Property:** Union Station Nashville Yards (Autograph Collection by Marriott), Nashville, TN  
**HM Alpha Portfolio:** Part of initial 5-pilot + expansion properties  
**Status:** Pre-training coordination for week of June 23–27, 2026

---

## Property Overview

### Basic Facts
- **Name:** Union Station Nashville Yards (Autograph Collection)
- **Also called:** Autograph Union Station
- **Location:** Nashville, Tennessee (on Broadway)
- **Type:** Boutique hotel, ~150 rooms
- **History:** Historic property; former train station (opened ~1900); remodeled 1970s–80s; recently remodeled again
- **Architecture:** Historic, high-end; massive stained glass, lots of glass
- **Amenities:** Pickleball courts (3rd party), historic station area

### Staff
- **GM:** Hands-on, knows operations deeply
- **DOF (Director of Finance):** Very direct, straight-to-the-point, knows budget inside/out
- **HR Manager:** Works at Grand Hyatt (across street); area/regional coordinator for multiple properties
- **Total headcount:** ~106 employees (including managers); rest are contract labor

### Location Advantage
- On Broadway in downtown Nashville
- Walking distance to bars, restaurants, music venues, food hall/court (2 floors)
- Excellent environment for training breaks/meals

---

## Food & Beverage Structure

### Outlets
1. **Station Area Restaurant** — Premier sit-down restaurant (next to bar car)
2. **Bar Car** — Inside lobby bar with food service (next to restaurant)
3. **Alligator Bar** — Outside on 1st floor, partially under driveway/Broadway bridge
4. **Pickleball courts** — Outside, partially covered

### Operational Note
Restaurant and Bar Car are adjacent and may have overlapping service (might not need both, but property has both).

### Staffing Challenge: Contract Labor & Secondary Job Codes

**Issue:** Multiple F&B outlets require bartenders/servers to rotate between locations
- **Example:** Bartender works Bar Car one day, Alligator Bar next day
- **Problem:** Property coded all bartenders as single "Bartender" job code initially
- **Solution:** Implementing secondary job codes for each outlet (Bar Car, Alligator Bar, etc.)

**Status:**
- **Paychecks** (their time/attendance + payroll system) interface working ✓
- **Work Records** (third-party contract labor T&A system) feeds standardized data to Unifocus via API
- **Initial challenge:** Primary API didn't pull secondary codes; switched to "time off" API (works) ✓
- Everything interfaced and tested; working well

**Training requirement:** Managers must:
1. Ensure employees coded in Paychecks have corresponding codes in Unifocus
2. Decide which codes are "sub only" vs. "free for all"
   - **Sub Only setting:** Makes a job code invisible to auto-scheduler (default: unchecked)
   - When checked: That job code can only be manually assigned or used as secondary (not primary)
3. Set primary home job (interface marks these with "1", secondaries with "2")

---

## Contract Labor Compliance Issue (RED FLAG)

### Work Records Flat File Import Process

**How it works:**
1. Work Records generates flat file with: Employee ID, job code, In/Out times, calculated hours (covers past X days)
2. Unifocus import logic:
   - Tries to match WR Employee ID → UF Employee record
   - **If match found:** Hours assigned to that employee/job
   - **If no match:** Error email sent (lists all unmatched records)
   - **Fallback:** Even if employee ID doesn't match, if job code is recognized, UF puts hours into that job code for labor reporting

**Contract labor design (correct approach):**
- Contract employees NOT added to UF system
- WR sends their punches; UF can't find matching employee ID
- No match = no error; hours automatically flow to job code in bulk
- **Result:** Clean, safe, reports work perfectly

### What The Joseph is Doing Wrong

**Problem:** Adding individual contract employees to Unifocus by name/ID

**Consequences:**
1. **Interface errors cascade** — WR Employee IDs now match UF records; triggers errors when job codes don't align
2. **Defeats Work Records purpose** — Contract labor is designed to flow in bulk by job; individual-level tracking defeats separation
3. **Creates legal exposure** — Individual employee IDs + individual tracking + job code assignment looks exactly like employment relationship (not just contract labor)

**Legal risk:** Federal level (not state-specific)
- Tennessee's "Wild West" enforcement reputation irrelevant
- Federal labor/employment law applies regardless
- Contract workers can claim entitlement to employee benefits if treated as individuals in HR systems
- Individual tracking + job assignment = appearance of employment relationship

**Property's assumption:** "We're special; this doesn't apply to us"  
**Reality:** Federal compliance doesn't care about state-level enforcement gaps

### Current State
Taylor created generic contract labor buckets (e.g., "Contract Labor — Bartender 1", "Contract Labor — Bartender 2") to avoid individual tracking. Property later changed back to individual names anyway, recreating both the interface problem and legal exposure.

### Recommended Approach
- **Do NOT add contract employees to Unifocus** — Ever
- **Keep generic job buckets only** — One per job type (e.g., "Bartender Contract Labor", "Stewarding Contract Labor")
- **Let Work Records hours flow in bulk** — Matches design; no errors; reports work perfectly
- **Property loses:** Ability to know *which person* worked *which shift* (intentional; that's what contract labor means)
- **Who should enforce:** HR Manager only (governance decision, not operational/scheduler)

### Training Point for Pete/Taylor
This is a **property-level governance decision**, not a Unifocus configuration issue. Frame as:
- "Work Records is designed to handle contract labor this way"
- "Here's why individual tracking creates problems"
- "Here's the federal risk"
- "Here's what we recommend"

### Unifocus Training Point
- This is a **property-level governance issue**, not Unifocus issue
- Unifocus can support either approach (named or generic)
- **Pete/Taylor should flag this in training:** "Here's what we recommend from a compliance standpoint"

---

## BLSBD (Budget/Labor Standard Alignment) — Broader HM Alpha Context

**What is BLSBD?** Report/tool comparing labor standards against budget

**HM Alpha's complaint:** Standards don't match their budget

**The real issue:** HM Alpha has a BAD budget. When consultants build accurate labor standards, those standards expose the budget shortfall.

**Why this matters:**
- **Unifocus is a giant comparison machine** — it surfaces misalignments
- When standards ≠ budget, the problem isn't Unifocus; it's the budget
- Clients often blame Unifocus instead of fixing their own budget planning

**Consultant challenge:**
- Building standards to match a bad budget perpetuates the problem
- Building accurate standards exposes the problem
- Client gets defensive ("Unifocus is broken!") instead of fixing their budget

**For Pete/Taylor at The Joseph:** If standards don't match their budget, that's a business planning issue, not a Unifocus problem. This is a property-level conversation.

---

## Banquet Mapping

**Status:** Not yet active  
**Current approach:** Let property continue manual process for now  
**Timeline:** Schedule implementation once baseline training complete  
**Rationale:** Avoid overwhelming property with too many interfaces at once

---

## Auto-Scheduling Decision

**Positions:**
- **HM Alpha (corporate):** Wants auto-scheduling enabled
- **GM (property):** Doesn't want auto-scheduling; prefers to review Projected vs. Scheduled manually

**Compromise approach:**
- Enable auto-scheduling with permanent schedules (pre-populated with existing shift patterns)
- Manager can edit down from template rather than build from scratch
- Advantage: Faster than blank canvas; still gives manager control

**Status:** TBD based on property preference during training

---

## Training Schedule (Week of June 22–26)

### Dates & Travel
- **Arrive:** Monday, June 23 (or flexible)
- **Training:** Tuesday, Wednesday, Thursday (June 24–26)
- **Depart:** Friday morning, June 27 (Southwest convenient from Nashville)
- **Flexibility:** Can adjust to Wed/Thu/Fri or spread across other days if property needs

### Session Structure

#### Manager Training
- **Session A:** Manager training (one group of key managers)
- **Session B:** Manager training (alternate group of key managers)
- Managers attend one or the other (not both)

#### Admin Training
- **Duration:** 6 hours (compressed; not ideal but what was sold)
- **Attendees:** GM, DOF, HR Manager (all three required)
- **Note:** 6 hours insufficient for full admin training; will require follow-up CSM handholding
- **Can split into 2–3 sessions** if property prefers (e.g., 3 hours Tuesday afternoon, 3 hours Wednesday morning)

#### Office Hours (Day 3)
- Friday (or 3rd training day) reserved for Q&A
- Consultant available for questions, logins, job code issues, etc.
- **Not a classroom session** — drop-in office hours format

### HM Alpha Corporate Participation
- **Devon Peters** (Strategy & Analytics Manager) — will likely attend some sessions
- **Nicole Mendez** (newly hired, learning the system) — should attend **all sessions**; needs context
- Both indicated they'll visit/observe training

---

## Email Coordination Strategy

### Two-Email Approach
**Email 1: Introduction/Logistics** (from Taylor)
- Pete's arrival (Monday) and departure (Friday)
- Training dates (Tuesday–Thursday, with flexibility noted)
- Mention of separate detailed email coming

**Email 2: Training Details** (from Taylor)
- Specific session times
- Which staff attend which sessions
- Training overview
- Attachments (training materials)
- CC: Devon, Nicole

### Timing
- **First email:** Arrives early morning (7–9 AM) to top inbox
- **Second email:** 15 minutes after first (so training details don't get lost; gives time to process logistics)
- **Benefit:** Logistics team gets room/reservation email; training team gets training email; different distributions

### Materials
- Labor Meeting Guide (and other docs) — **note: .key file was broken, Akram corrected this**
- 7 total training attachments

### Room/F&B Requirements (for logistics email)
- Room with desk and 2nd monitor (for screen projection)
- Ideally breakfast, lunch, coffee available
- Confirmation number needed

---

## Implementation Timeline

### Current (6/16 evening, Eastern time)
- Taylor just returned from property visit
- Wrapping up email prep
- Will send logistics + training emails Tuesday morning (6/17) before HM Alpha corporate call at 11 AM Pacific (1 PM Eastern)

### Immediate (6/18–6/20)
- Pete/Taylor potentially on quick call with property to confirm dates if needed
- HM Alpha corporate Unifocus training overview Thursday 11 AM Pacific
- Property confirms training dates/times by end of week

### Training Week (6/23–6/27)
- Pete at property Mon–Fri
- Taylor not physically present; available for phone/email support
- Consultant handling configuration (not Taylor or Pete)
- Handholding post-training managed by Taylor

---

## Key Contacts

| Name | Role | Notes |
|---|---|---|
| **Devon Peters** | HM Alpha Strategy & Analytics | Intelligent; asks scaling questions; involved in corporate decisions |
| **Nicole Mendez** | HM Alpha (new hire) | Recently onboarded; will attend training to learn system |
| **GM** | Property General Manager | Hands-on, knows operations; prefers manual scheduling review |
| **DOF** | Director of Finance | Direct, budget-focused; good participant |
| **HR Manager** | Property HR | Regional/area coordinator; responsive; can make system changes |

---

## Unifocus Coordination

- **Configuration:** Akram Chahin (completed or near-complete)
- **Training:** Pete Castellano + Taylor Walton
- **Post-training handholding:** Taylor Walton
- **Corporate oversight:** Devon Peters, Nicole Mendez

---

## Known Challenges / Follow-Up Items

1. **Contract labor governance** — Flag compliance risk; recommend HR-only changes to individual tracking
2. **Admin training duration** — 6 hours is compressed; expect follow-up CSM time needed
3. **Banquet interface** — Not live yet; keep manual for now, schedule later
4. **Auto-scheduling** — Corporate wants it; GM doesn't. Compromise needed.
5. **Secondary job codes** — Training must emphasize manager responsibility to set these correctly
6. **Nicole's onboarding** — She should attend training to get context; she's new

---

## Related Documents

- HM Alpha Training Coordination Protocol (6/17)
- Akram Training Methodology (6/16)
- Four-Metric Infographic (draft)

---

## Personal Notes

Taylor had to shift at last minute from Dubai vacation → cruise → Nashville within days. Ralph gave 4 hours notice Friday, Taylor diverted from cruise to Nashville training. Despite short notice, property seems ready (had Monday call with Taylor; DLM confirmed no scheduling conflicts).

Pete interested in potential Baha Mar casino project; Taylor hasn't connected with Ed (contact at Baha Mar) recently. Plan to see him at Baha Mar or Grand Hyatt later in year.
