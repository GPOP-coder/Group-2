---
© Peter A. Castellano — Proprietary. Not for model training or redistribution.
Date: 2026-06-19
Topic: Taylor Walton call — Union Station Nashville (HMAlpha) implementation debrief
Duration: 2+ hours
Participants: Pete Castellano, Taylor Walton (Unifocus)
Status: Transcript truncated at end; some tail items may be incomplete
---

# Taylor Walton Call — Union Station Nashville
## 2026-06-19 | HMAlpha Autograph Collection property

---

## Context

Taylor Walton is the Unifocus consultant responsible for Union Station Nashville (Autograph Collection), one of the five HMAlpha pilot properties. Pete was consulted for his deep implementation experience. This call surfaced two critical pre-training issues that need to be escalated before training week.

---

## Critical Issues — Escalate Immediately

### 1. Banquet KBI Mapping: Incomplete Event Type Coverage

**The Problem:**
- Only a sample BEO file (~2 weeks of data) has been uploaded; unmapped event types silently fall out of the system with no error message. Tech support gets called weeks later because a $1,000 cocktail reception "disappeared."
- Devon Peters (HMAlpha) sent a list of intended KBIs, but:
  - It is labeled as "near future" and may not reflect current usage
  - Naming is inconsistent with what's already mapped (see below)
  - Not all hotels will use all of them — still need per-property confirmation

**The Fix (Pete's standard process):**
1. Get the complete event type configuration list from the property's EMS (Delphi or equivalent) — letter-for-letter, space-for-space, including all booking types used in their pull-down menus
2. Create a dummy BEO file with one cover on a nonsense date (1975 or 2050) covering every event type × group/local/in-house combination
3. Have Monali import it (or submit via ticket for behind-the-scenes import + delete)
4. Map everything. Once. Don't go back.
5. Since all HMAlpha properties use the same EMS structure, one dummy file template can be adapted per property

**Naming conflict — needs resolution before Devon distributes to properties:**
- Devon's list includes: "bar only reception"
- What's already mapped in the system: "cocktail reception"
- If Devon tells banquet staff to enter "bar only reception" it will break mapping and leak BEOs
- **Action:** Akram or Ralph needs to contact Devon: *"We already have cocktail reception mapped. Can you standardize to that instead of 'bar only'?"*
- Taylor has been copied on the Devon email thread (Devon → Akram/Ralph + Taylor); should raise it there

**Why this matters at scale:**
- Hilton required every property to use a standardized list: breakfast/lunch/dinner × plated/buffet/continental, plus a catch-all "special." Luaus, Indian weddings, bingo nights — all mapped to the nearest standard. Once set, it takes an act of Congress to change. That is the right approach.
- Changing an event type name later cascades into KBIs, standards, and accounting system breakage. Fix it now.

---

### 2. Schedule Export to T&A System: Needs Publish Trigger

**The Problem:**
- HMAlpha properties all use the same Time & Attendance system with an employee-facing app showing schedules
- If the schedule export runs on a time trigger (nightly), employees see draft/unpublished schedules as soon as "Generate Schedule" is run — before managers have reviewed or adjusted anything
- Manager: "I generate on Tuesday, finish editing Thursday, publish Thursday — but employees already saw the wrong schedule Tuesday night and are confused"

**The Fix:**
- Export should only trigger when a manager pushes "Publish" — not on a timer
- **Pete built this exact mechanism for Baha Mar.** It exists, it works. It was later turned off at Baha Mar because managers stopped publishing consistently (a people problem, not a system problem), causing their T&A mismatches
- Since all HMAlpha properties use the same T&A system, this should be a universal setting, configured once at the project level

**Current status (as of this call):**
- Monali has confirmed the export is "tested and working" — meaning the file flows, not that the trigger is configured correctly
- The timing (daily? publish-triggered?) has not yet been confirmed
- John Grech's position on this call was that publish-trigger is only relevant if they're using Unifocus's mobile app — Pete and Taylor both disagree; it applies to any T&A integration

**Action needed:**
- Taylor to put this in a ticket and/or raise to Ralph/Akram at project level — this is not a single-property decision
- Question to confirm: Is Monali's current configuration doing a nightly export or waiting for publish? Get the answer before training week.

---

## Implementation Timeline / LMS Corrections

**Wording errors corrected during call:**
- "enter rooms forecast" → "import rooms forecast (automated)"
- "import, input KBI forecast" → "import banquet KBI data (automated)"
- Revenue center forecast generation moved later (see below)
- Approve time-off requests moved to Sunday end of day
- Taylor updating LMS and redistributing to property and Devon

**Confirmed weekly cycle (Union Station Nashville):**

| Step | Event | Day | Time | Mode |
|---|---|---|---|---|
| 1 | New planning period opens | Friday | 6:00 AM | Automated |
| 2 | Import rooms forecast (ProfitSword API) | Friday | Noon | Automated |
| 3 | Import banquet KBI data | Friday | 12:30 PM | Automated |
| 4 | Edit outlet forecast + review revenue center forecast | Friday | After 12:30 | Brad (Dir. F&B) — has all weekend |
| 5 | Generate revenue center forecast | Friday afternoon | After Brad reviews | Automated (moved later than original 1pm) |
| 6 | Approve time-off requests | Sunday | End of day | Department managers |
| 7 | Generate and review projected hours | Monday | Noon | Automated |
| 8 | Generate schedules | Monday | ~1:00 PM | Automated (per HMAlpha/Ralph directive) |
| 9 | Edit and complete schedules | Wednesday | By noon | All managers |
| 10 | Labor meeting | Wednesday | 1:00 PM | GM + department heads |
| 11 | Post schedules to employees | Thursday | — | Managers |

**Daily tasks:**

| Task | Time | Mode |
|---|---|---|
| Edit actual punches | By 11:00 AM | Managers (Paycheck T&A cutoff) |
| Import yesterday's actual banquet KBI data | 2:00 PM | Automated |
| Generate standard hours | 2:00 PM | Automated (can run multiple times/day) |

**Banquet import timing rationale:**
- 12:30 PM (not noon) because support team directed that automated tasks should not run simultaneously — queue collisions cause failures
- Revenue center forecast moved later than original 1pm so Brad has time to actually review rooms + banquet data before it generates
- Brad has all weekend to refine the revenue center forecast after it generates

**Banquet actuals (daily):**
- Banquet file comes in overnight; imported daily at 2pm
- If a BEO is added or changed that morning, it won't make the overnight file — will catch next day
- Property has been told: close BEOs same day if possible; evening events closed next day is acceptable
- Pete's clarification on "close next day": as long as the BEO is closed in the EMS (Delphi/event system), it actualizes on the correct event date — the POS close date is separate and may affect accounting but not Unifocus data
- **Resolved:** Column is labeled "Actual" — confirmed that past event dates have data in that column. Past actuals are being captured correctly.

**First day of week = Saturday:**
- Planning period opens on Friday (last day of current week) = opens the period for week-after-next
- Counterintuitive but chosen so staff are present Friday to review rooms + banquet data before the weekend

**Who owns the forecast (Union Station Nashville):**
- Brad, Director of Food & Beverage — owns reviewing and editing both banquet forecast and revenue center forecast
- Brad's Associate Director of F&B — also trained, login created
- Director of Banquets — GM said (with Devon in the room) he will never be able to do it; not tech-capable
- Conclusion: Brad carries the F&B forecast process

**Schedule generation:**
- GM does not want to generate schedules
- Ralph and Devon's directive: generate schedules
- Taylor proceeding per directive and will wait for pushback to come from property/HMAlpha
- "Change schedule state: open for secondary jobs" on template — left on timeline but not active; Union Station is not large enough to need it (same managers schedule the same employees across Stationary/Bar Car/Alligator Bar)

---

## Rooms Forecast / Negative Departures

**What Taylor observed:**
- Union Station Nashville's forecast shows negative departures, consistently on Mondays
- Example: Monday showing -28 departures, -12 departures in prior weeks

**Root cause (Pete's diagnosis):**
- The formula: `Departures = (Yesterday's Occupancy) + (Today's Arrivals) - (Today's Occupancy)`
- Property is adjusting occupancy in ProfitSword without independently adjusting arrivals
- Result: the math produces negative departures
- Likely cause: Their revenue management system auto-calculates arrivals from average length of stay (annualized), which doesn't account for seasonality, group blocks, or day-of-week variation

**Why this matters for Unifocus:**
- Unifocus reads a negative departure figure as zero
- Zero departures = no checkouts scheduled = no room attendants needed
- Housekeeping gets understaffed on forecast; labor model breaks down

**Why it can't just be overridden:**
- Adjusting arrivals in Unifocus cascades forward — it messes up future days
- The fix is upstream: the revenue team needs to adjust arrivals in ProfitSword when they adjust occupancy

**Training opportunity:**
- Show the forecast accuracy screen and the negative departures live during training
- Walk through the formula so managers understand what they're seeing
- Devin has already acknowledged property needs to look at ProfitSword more frequently than current every-2-weeks cadence

**Dubai parallel:**
- Same problem was encountered in Dubai; revenue team was using annual average length of stay with no seasonality adjustment — they were close on total occupied rooms but wildly off on arrivals/departures

---

## Other Notes

**Pete's system login — CREATED during call:**
- Login ID: PCastellanoHMAlpha
- Email: p.castellano@unifocus.com
- Access: DB Admin, all properties
- Default property: Union Station Nashville
- Taylor created it directly (DB Admin can create users at same level with workaround)
- Taylor's own login updated: T.Walton → T.WaltonHMAlpha (standardized format for all consultants)

**Training email distribution — URGENT (unresolved at end of call):**
- Taylor sent pre-training materials to 3 property admins only — NOT to all attending managers
- Training classes start Tuesday June 23; orientation/setup Monday June 22
- Property needs to distribute materials to all managers TODAY (Friday June 19) or Saturday at the latest
- Open question at end of call: who at the property is responsible for sending it out?
- Taylor's plan: include updated timeline + registration status list (several managers have not yet activated their accounts despite invites being sent and resent)

**Devon Peters dynamic:** Devon is rubbing Unifocus team members the wrong way. He may be driving standardization with good intent, but his communication style is creating friction. Pete's practical advice: don't fight the structure, just make sure the naming is right before it gets distributed to properties. Devon was physically present at Union Station when the GM stated the Director of Banquets is not capable of managing the forecast — Devon heard this firsthand.

**ProfitSword:** Rooms forecast is managed at HMAlpha corporate level. Union Station Nashville actuals and forecast both flow through ProfitSword. Devon is aware the update cadence needs to increase from every 2 weeks.

**Baha Mar as precedent:** The publish-trigger export, the dummy-file-for-mapping approach, and the arrivals/departures negative value problem were all first encountered and solved at Baha Mar. Both Pete and Taylor referenced Baha Mar multiple times as the known-working precedent.

**Labor meeting dynamics:**
- Pete's experience: weekly labor meetings with peer visibility (not just boss) are more effective than individual manager reports
- Peer pressure works: nobody wants to be the one with unexplained overtime in front of ownership
- Best format: distribute overtime report + meal break penalty report + monthly running total before the meeting; let managers run their own additional reports
- HMAlpha ownership (Devon's level) attends or calls into the labor meeting — managers need to be prepared with answers, not just data

**Valet/Bell standard complexity (Pete's background, for KB):**
- When Pete worked at Fairmont, valet/bell standard was turned off because the system stacked labor incorrectly
- Root issue: arrivals driver and event driver were independent — system added hours for both instead of recognizing the same crew handled both
- Pete built manual spreadsheets tracking cars parked by day, hotel occupancy, arrivals, and events to find the right staffing level
- The fix: separate drivers (cars parked, cars retrieved, arrivals, departures, valet events) with a max staffing cap — the cap prevents double-stacking
- Lesson for implementations: when two drivers share a workforce, they need a maximum constraint or you over-generate hours

---

## Action Items

| # | Action | Owner | Priority | Status |
|---|---|---|---|---|
| 1 | Raise banquet KBI dummy file / complete event type list to Akram/Ralph — escalate as pre-training blocker | Taylor | URGENT | Open |
| 2 | Reply to Devon email thread: "cocktail reception" already mapped — do not distribute "bar only" to properties | Taylor (via Akram/Ralph thread) | URGENT | Open |
| 3 | Confirm schedule export trigger with Monali — publish-only or timer? Ticket for publish-trigger if not set; raise to Ralph/Akram as universal HMAlpha setting | Taylor | URGENT | Open |
| 4 | Follow up with property: who is distributing training materials to all managers? Must happen TODAY or Saturday | Taylor | URGENT | Open |
| 5 | Update LMS timeline with all corrections from this call + resend to property and Devon | Taylor | Today | Open |
| 6 | Include manager registration status list with timeline distribution (resend invites to unregistered) | Taylor | Today | ✅ Done 6/22 — updated list with column E comments sent; follow-up invites sent to all unregistered users |
| 7 | Confirm banquet KBI import is scheduled for 12:30 PM Friday (separate from rooms import at noon) | Taylor / Monali | This week | Open |
| 8 | Identify "actual/completed" field in BEO file to confirm past actuals are captured | Taylor | This week | ✅ Field confirmed: column labeled "Actual" — past dates have data |
| 9 | Get revenue center forecast generation moved to later on Friday (after Brad reviews rooms + banquet) | Taylor | This week | Open |
| 10 | Brief revenue team / property on negative departures and ProfitSword arrivals methodology | Taylor | Training week | Open |
| 11 | Pete login confirmed: PCastellanoHMAlpha, Union Station default | — | Done | ✅ |

---

## Pete's Broader Observations (for KB / Chief of Staff)

- The interface team's job is to make files flow. Mapping is the consultant's job. This creates a structural gap: nobody is responsible for ensuring ALL event types are captured before a consultant maps. This should be a formal implementation gate.
- Hilton's approach (standardized, finite event type list, company-wide enforcement) is the gold standard. HMAlpha has an opportunity to do this right since they're early in their rollout.
- The "dummy file" pre-mapping technique is Pete's method and is not widely used by other Unifocus consultants. It should be.
- Taylor is asking the right questions. Pete's explicit feedback to Taylor: "Don't doubt yourself. You're asking questions that should be asked, and most consultants don't think like that."

---

*Note: Transcript truncated twice; final items (who distributes training materials, environment configuration discussion) may be incomplete. Pete's login was created during the call — confirmed working.*
