<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# HM Alpha Weekly Project Call — June 25, 2026

**Time:** 2:00–2:45 PM CT
**Location:** Montfort Room, 4th Floor, Autograph Union Station Nashville (Pete onsite)
**Format:** Teams call

## Attendees

| Name | Organization | Role |
|---|---|---|
| Ralph Varble | Unifocus | CCO (host; joined 5 min late — plumber at home) |
| Devon Peters | HM Alpha | Manager, Strategy & Analytics |
| Nicole Mendez | HM Alpha | (new hire; learning the system) |
| Treana Armstrong | HM Alpha | |
| Matthew Schupbach | HM Alpha | |
| Akram Chahin | Unifocus | Training Consultant |
| Taylor Walton | Unifocus | Consultant (Nashville configurer) |
| Monali Desai | Unifocus | Technical/Interfaces |
| Steve Carrell | Unifocus | Senior Implementation Consultant ("Colonel Sanders" on the call) |
| Elliott Welburn | Unifocus | |
| John Grech | Unifocus | |
| Pete Castellano | PWS/Unifocus | Trainer (onsite Nashville) |

---

## Context: Morning Session (9 AM – 1 PM)

Pete met with Union Station F&B Director, Assistant Director, GM, DOF, Devon Peters, and Nicole Mendez.
- Topics: forecasting, KBIs, mapping forecast and actuals
- 10:30 AM onward: F&B labor standards (deeper than Ralph's caution, but Devon/Nicole were present)
- Some standards could not be finalized face-to-face — require remote configuration

---

## Call Notes by Topic

### Training Recap — Nashville

- Akram recapped his parallel training while waiting for Ralph
- Nashville training: successful overall
- Lessons learned for future waves:
  - More advance notice to properties
  - Managers must watch video links before training
  - Managers must bring laptops — without them, training is observation, not hands-on
- Devon: "Glad it was engaging... disappointed a lot of folks didn't have a laptop — we'll make that clear in communication going forward"

### Standards Review Call (Elliott / Yella / Priya — Union Station)

- Devon praised this call highly: "I love that. That's exactly what I envisioned."
- Yella and Priya engaged from day one; Yella met Elliott in the lobby at 8 AM Monday
- Key lesson: GM and DOF don't need to be in every meeting — they should attend strategically
  - Focus on: **Culinary, Housekeeping, Banquets, Stewarding, Front Desk (larger hotels)**
  - These departments carry the labor load; their presence prevents "I wasn't in those meetings" friction during training
- Devon/Nicole will attend more front-end (configuration) meetings going forward
- Ralph: "The real solution is the GM and DOF need to be more engaged when we're on site. We're only there 3–5 days."

### Phase 2/3 Kickoffs

- Kickoffs begin June 26 (tomorrow) + Monday/Tuesday
- Template communications go out Tuesday afternoon from each assigned consultant
- Properties each get same initial communication template
- Steve ("Colonel Sanders") cleared to begin Wave 2 property outreach; needs contact emails/names from Nicole

### Cloning Strategy for Wave 2/3

- **What gets cloned:** Labor structure, forecast structure (including banquet KBIs), standards, mapping (with property code substitution)
- **What is NOT cloned:** Actual employees
- **GH is unique** — Ralph not planning to clone it; will build from scratch like Phase 1
- **Nicole/Devon:** Identify which Phase 1 properties are suitable donor properties for each Wave 2/3 hotel
- Mapping happens at hotel level; if property codes differ, mapping reviewed post-clone
- Example: Clone Double Tree Raleigh → Double Tree [other city] with code substitution

### Interface Issues

#### PTO (Paychecks)
- **Problem:** System was pulling denied/pending PTO requests, not just approved
- **Fix:** Monali filtering to approved only
- **Note:** If manager approves PTO after schedule is generated, conflict will show in Unifocus — manager must resolve manually. This is intentional.

#### Employee Job Codes (Paychecks)
- **Problem:** Employees with no job code in Paychecks were silently dropped
- **Fix:** They now come through but get flagged so the team knows a data point is missing; clears automatically once job code is added to both systems

#### Comp Rooms (Profit Sword)
- **Problem:** Only "occupied rooms" currently mapped; comp rooms not included
- **Fix:** Map occupied rooms + comp rooms together as one total
- **Must be done per property** — cloning does NOT carry this; each of the 5 hotels needs individual update
- **Open question:** Is the comp room count additive to or already included in the occupied rooms total? Must verify per property before mapping — Monali to investigate
- **Why it matters:** If comp rooms are not counted, housekeeping labor standards generate incorrectly (comp rooms still require cleaning)
- **Write-off caution:** If a property writes off 100 comp covers at month-end as a single negative entry, it creates negative cover counts in Unifocus → analytics show zero labor needed for that day. Properties must log comp in real time, not as period-end adjustments.

#### Revenue Mapping (Bar Outlets)
- **General rule:** Revenue is NOT used as a labor driver (Steve's mink coat example — $1,000 mink coat vs. 100 × $10 items; same revenue, very different labor)
- **Exception: Bar outlets** — no cover counts; revenue is the appropriate driver
- Union Station has a bar outlet without beverage revenue mapped — needs to be added
- **Owner:** Taylor Walton

#### BEO Event Type Granularity
- **Envision (Hyatt):** Currently not differentiating Group vs. Local — needs fix; Monali adding
- **CI (Marriott/Union Station):** Good — has group and local
- **Delphi (Hilton):** Triana following up; format looks right but needs granularity confirmed
- **Why it matters:** Group covers (in-house guests) are subtracted from available restaurant guests for regression forecast model. Rarely an issue with exponential smoothing model, but Grand Hyatt (high event volume) specifically needs it.

#### BEO Actuals vs. Forecast / Timing
- **Recommended process:** Properties pull BEO report daily (previous 21 days + forward 21 days)
- **Actuals source:** Wherever BEO checks are closed out — POS system (Micros, Infogenesis, etc.) or sales system — must be consistent
- **Profit Sword limitation:** Only provides high-level totals (total breakfast/lunch) — not event-type granularity; that must come from Envision/Delphi/CI
- **Critical timing rule:** The day the property generates schedules, ALL data must be in before the schedule generation button is pressed. Nothing is automatic.
- **Taylor's guidance:** Never give properties a noon deadline — they'll use every minute. Communicate Thursday morning as expectation for Friday noon generation. Build in lead time.
- **Union Station specifics:** Imports at noon on Fridays; Thursday evening delivery is optimal

#### Schedule Publishing Permissions
- **Problem:** Nashville (Union Station) — too many users have Publish access; risk of accidental publish of incomplete schedules
- **Publish = publishes ALL departments' schedules**, not just the user's own
- **Fix:** Restrict Publish to 1–2 people per property (GM and backup)
- **Process model:** Submit (dept manager) → Approve (division head) → Publish (designated admin)
  - Submit/Approve steps are process-driven (timeline/documentation), not necessarily security-enforced
  - Ralph: Security screen has 162 settings; will verify what can be locked
- **Action:** Review security for all 5 pilot properties; fix Nashville immediately; document in property timeline

#### Reconcile Errors / Employee Maintenance
- Champion responsible for monitoring the reconcile error screen
- Short-term: email trigger can be set up
- Long-term: Champion's job to check the screen as normal workflow
- Errors clear automatically on next interface run once underlying fix is made (job code added in Paychecks AND in Unifocus)

#### Shared Employees
- **Admin roles** (e.g., HR coordinator split between GH and Union Station): Split the standard 50/50 across properties
- **Variable roles** (e.g., cocktail server working across 2 properties): Requires special Unifocus configuration — Devon to identify who these are
- **Note:** Several Del Mar properties also share employees; same issue

#### Work Records / Contractor Interface
- Brings in **totals by job type only** — not individual employees
- Employee IDs mismatching between Work Records and Unifocus
- **Nicole to reach out to Work Records directly** to resolve
- Separate from employee interface: employee interface = named individuals; contractor interface = job-type totals

### Email Volume
- Ralph: 1,000+ emails from HM Alpha; vs. ~700 for an 18-month international Middle East project
- Ralph's request: Group related questions into fewer, batched emails rather than stream-of-consciousness sends
- He reads all of them eventually, but sets batches aside until the volume subsides
- Devon acknowledged; agreed to try to synthesize

### Upcoming: Ralph in Nashville
- Ralph (+ Steve) coming to Nashville **week of approximately July 6** for The Joseph Hotel (MakeReady project)
- Will schedule time with Devon and Nicole
- Plans to swing by Union Station to check in on the property

---

## Action Items

| Item | Owner | Notes |
|---|---|---|
| Filter PTO to approved only | Monali | |
| Add comp rooms to occupied rooms mapping | Monali | Each of 5 hotels individually |
| Verify comp rooms: additive or included in occupied total? | Monali | Per property |
| Map bar/beverage revenue for Union Station | Taylor | Confirmed needed |
| Add Group/Local differentiation to Envision | Monali | Currently all printing as one |
| Confirm Delphi granularity (Triana) | Triana/Devon | Format looks right; details pending |
| Fix Nashville Publish permissions | Unifocus team | Immediate; review all 5 pilots |
| Review all 5 pilots' security settings | Unifocus team | Restrict Publish across the board |
| Create BEO report guide for properties | Devon/Nicole + Julie | Meeting 6/26; Envision/CI |
| Identify Wave 2/3 clone donor properties | Devon/Nicole | GH excluded |
| Provide Wave 2 property contacts to Steve | Nicole | Steve cleared to begin outreach |
| Reach out to Work Records re: employee IDs | Nicole | |
| Identify shared variable-role employees | Devon | For special UF configuration |
| Remote F&B standards configuration (Union Station) | **Pete** | Standards not finalized face-to-face 6/25 |
| Continue Nashville feedback handoff to Taylor | **Pete** | Ongoing; mapping + Monali questions |
| Confirm Nashville security fix is assigned | **Pete** | Verify Monali/Taylor owns it |
| New Orleans standards review with Steve | **Pete + Steve** | Steve scheduling; Pete open next week; must complete before 7/6 |

---

## Pete's Specific Follow-Up Items

1. **Remote F&B standards configuration — Union Station** — Standards from the 9am–1pm session that couldn't be completed onsite. Configure remotely before property begins scheduling.
2. **Nashville feedback → Taylor** — Ongoing. Confirm all mapping issues and Monali questions are fully handed off.
3. **Nashville Publish permissions** — Unifocus team fix; confirm Taylor or Monali owns it so it doesn't slip.
4. **New Orleans standards review with Steve** — Must happen before July 6 training week. Steve is scheduling; Pete's calendar is open.
5. **Awareness:** Ralph + Steve in Nashville week of ~July 6 for The Joseph. Ralph will also check in at Union Station and meet Devon/Nicole.
