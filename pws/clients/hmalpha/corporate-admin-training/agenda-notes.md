<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# HMAlpha Corporate Admin Training — Agenda Notes
**Context:** System administration training for Devon Peters and Nicole Mendez
**Reference:** Unifocus system admin guide (TOC as framework)
**Trip:** Nashville, July 13–16, 2026
**Attendee materials:** Devon and Nicole already have the full 172-page System Admin Handbook PDF — no need to re-teach it page by page, reference sections by name and go deeper live.

---

## DAY 1 COMPLETE — Tuesday, 7/14/26

**Actual session structure:** two ~2-hour sessions (not one continuous 4-hour block as originally drafted).

**Actual vs. planned:** Day 1 was drafted as "Configuration Foundations + Master KBI/Jobs Mapping + Interface Level Mapping" (Market Groups, Revenue Centers, Environments, Flow Patterns, KBIs, Labor Structure). What actually happened: Market Groups & Market Segments and Revenue Centers **were** covered — not as standalone named topics, but embedded in the Rooms KBI/forecasting discussion (Market Groups/Segments = the Rooms KBIs, the independent variables; Revenue Centers = the dependent variables, generated from those and then edited by the forecasting manager). Environments and Flow Patterns were addressed but as quick **decisions not to use them yet**, not full configuration teaching. Actual depth went further into forecasting method status, the EMS/interface landscape (a major, unplanned but valuable detour), and a full Labor Structure deep dive including the job-naming action item and TK/Reconcile code mechanics.

## DAY 1 SESSION NOTES (live, from transcript — 7/14)

### Forecasting Method — Current State
- **Market Groups & Market Segments = the Rooms KBIs, and are the independent variables** in the forecast model. **Revenue Centers = the dependent variables** — they get forecasted when the system "generates" revenue centers (derived from the independent Rooms KBIs), and are then editable by the forecasting manager. This independent/dependent framing is the conceptual backbone under everything else in this section.
- **TASE (trend-adjusted exponential smoothing)** is what's actually configured everywhere right now — described plainly as "a fancy way of saying weighted average," using a rolling 13-week window. Nothing is set up with regression yet anywhere Pete has checked.
- **Regression requires, before it's viable:** 13 weeks of accurate "available guest count" data (guests in-house minus group breakfast guests that morning) + 13 weeks of correctly-mapped banquet data (group vs. local) + a working rooms forecast — all running cleanly at the same time. InterContinental doesn't have banquets mapped yet, so it can't move to regression until that's resolved (ties directly to the interface onboarding work above).
- **Why regression is better once available:** it uses a fresh, rolling capture ratio (covers ÷ available guest count) that reacts immediately to swings — TASE is still just an average of the recent trend, so it lags reality; capture ratio tends to hold steady even as volume swings, so regression "follows you off a cliff" while TASE gradually catches up.
- Regression is calculated **per meal period, per day of week** — a 3-meal restaurant can have up to 21 separate regressions running.
- **Forecast ownership belongs to the property, not Unifocus** — whichever method is used, someone at the property must still own eyeballing and adjusting the number. This is a deliberate design point Pete makes repeatedly.

### Environments — Decision: Not Being Used Yet
- Two purposes: (1) forecast into a recurring-but-irregular event (needs 10–13 historical data points to be worth using), or (2) exclude a one-off anomalous event from actuals history (skip it, reach back further for a "normal" data point instead).
- No property is using environments in a sophisticated way yet — deferred as a later training topic, not part of this trip's scope.

### Flow Patterns — Decision: Not Being Set Up
- Flow patterns require granular (e.g. 15-minute-increment) setup — too expensive/time-consuming to justify at HMAlpha's current properties. Available in the system if ever needed, but explicitly out of scope for now.

### Labor Structure ↔ Above-Property Reporting
- **Important connection surfaced on the call:** Labor Structure is what above-property reporting is actually built on top of — confirms Labor Structure deserves the Day 1 depth already planned, since it's not just a property-level topic.

### Work Rules — Status
- Barely covered in property-level training so far (maybe one example: scheduled lunch/break spacing).
- **Open item:** HMAlpha needs a confirmed default lunch/break policy stance — the legal answer varies by state (e.g., a state may require a break at 6 hours, or not require one at all), and the property's own policy may be stricter than the state minimum. Need to know both the legal floor and HMAlpths's chosen default before finalizing work rules, since UF's labor standard settings interact directly with break rules (the system adds the break time on top of the standard, so getting this wrong throws off shift-length math).
- Unifocus is not a payroll/T&A system of record for these rules — it helps avoid overtime and enforce break-aware scheduling, but doesn't enforce compliance itself.

### Employee Requests — Open Question (not yet decided)
- Currently ALL time-off requests flow through Paychex. Pete flagged, but explicitly did not resolve: should there be an exception path for some time-off requests to be entered directly in Unifocus instead of through Paychex? Revisit later, not a Day 1 decision.

### Go-Live / Schedule Interface Cutover — Key Decision
- **Problem surfaced:** communication has been inconsistent across properties about whether they can dual-run the old scheduling method alongside Unifocus during the transition — Akram had offered some properties the option to "trial run" both systems in parallel, which Devon/Ralph didn't intend.
- **Decision (Devon + Ralph, confirmed with Pete):** rip the band-aid off. Whatever schedule a property is already working on has to be in Unifocus by the end of that property's training week, going forward from Unifocus from then on. Properties may keep an old method going informally as long as they want, but the **official/published schedule must live in Unifocus**, not both places.
- This applies to banquet-based scheduling too, however granular — even if staffing is done BEO-by-BEO, it still has to end up in Unifocus.
- **Direction of schedule data flow:** Unifocus → Paychex only, going forward (future schedule, ~21 days out). Nothing flows backward from Paychex to Unifocus except actuals/time-and-attendance data. Open question Pete flagged but didn't resolve: is anything in Paychex dependent on the *old* schedule being accurate for closing payroll or catching exceptions? Needs confirmation before assuming a clean cutover.
- **Publish workflow recommendation:** each property designates who has publish rights (likely one scheduling manager/admin per property — HMAlpha's team structures are generally not complex enough to need a separate approver layer, though Grand Hyatt might be an exception). Recommended sequence: schedule complete/submitted → weekly labor meeting happens and changes get discussed → changes made → published by a set cutoff time that same day. **This directly ties to the Weekly Labor Meeting / WFM Culture topic already on Day 3.**
- Confirmed: Unifocus is not currently sending unpublished schedules over the interface — only published ones.

### Budgeting
- Pete wants a **dedicated, separate session** for Labor Budgeting — not clear yet how much Devon/Nicole already know, doesn't want to show everything at once. Reinforces the existing "confirm if in scope" open item rather than resolving it.

### Master KBI — Teased, Not Yet Explained
- Pete introduced the concept ("call it whatever you want, it all boils up to total occupied rooms") but deferred the full explanation. **Open thread — circle back to fully explain Master KBI.**

---

## PETE'S THOUGHTS — Banquets (developing philosophy, not yet delivered to Devon/Nicole, 7/14)

*Pete's own reasoning, captured for later — not yet taught in a session. Worth developing into an explicit teaching point given how much time Day 1 already spent on banquet interfaces/forecasting.*

- **The structural mismatch:** Banquet forecast KBIs get pulled too early (per the interface tracker, banquet files come in on a ~21-day-out window) to ever make Projected Hours accurate for a specific banquet event. This isn't a data-quality problem to fix — it's inherent to how far ahead the forecast has to be pulled.
- **Consequence — don't over-scrutinize the banquet schedule itself.** Because the underlying forecast can't be precise this far out, judging the schedule against projected hours day-by-day is judging it against a number that was never going to be accurate in the first place.
- **The right comparison for anything touching banquets is Actual vs. Standard** — not actual vs. schedule, not actual vs. projected/forecast.
- **But Standard Hours themselves shouldn't be scrutinized day-by-day either**, because of a separate mechanical quirk: **all standard hours are calculated and attributed to the day of the event itself**, even though the labor to support that event is actually spent over multiple days.
- **Why:** culinary, stewarding, and setup/houseperson teams do their work in the days *leading up to* a banquet event, not all on the event day — prep, staging, breakdown all span a window of days, but the system's standard hours booking lands it all on the single event date.
- **Practical recommendation:** Banquet culinary, stewarding, and setup (houseperson) roles should be evaluated over **the whole week or longer**, not day-by-day, to avoid a misleading mismatch between when the standard hours land (event day) and when the actual labor was really incurred (the days before).

**✅ Real-world validation (7/14, IC New Orleans go-live support call, same day):** InterContinental hit exactly this problem — banquet labor standards (3 min/cover for house persons, units-per-shift for servers) generated a 6:00–9:00 AM breakfast shift when actual service ran 7:45–9:00 AM, missing all the setup/cleanup time. Same root cause Pete identified here. Full writeup: `pws/clients/hmalpha/intercontinental-new-orleans/2026-07-14_go-live-support-week1-meeting-notes.md`. Taylor Walton (Unifocus) is taking it to Devin (HMAlpha) to review the standards. Worth bringing this real example into the Day 2/3 banquet discussion with Devon/Nicole as concrete proof of the philosophy above.

---

## DAY 1 SESSION NOTES, CONTINUED — Labor Structure Deep Dive (Session 2, 7/14)

### Labor Structure Fundamentals
- Labor Structure is foundational — you cannot have employees, hours, or labor standards without it. Not arbitrary: generally follows the property's chart of accounts (USALI).
- **One deliberate exception:** Management is broken out into its own division — not for accounting reasons, but for functionality (isolating user administration visibility, reporting access, and dollar visibility/security).
- Standard divisions: Rooms, F&B, Other Operating, Non-Operating. HMAlpha isn't using Non-Operating currently (their "Support" may be the closest analog).
- Structure nests like folders (property → division → department → job), but **the real functionality lives at the job level** — it's the bucket everything else (KBIs, standards, hours, reporting) actually attaches to.
- **Moving things is risky:** dragging a job/department/division elsewhere can break things or drag unintended dependencies along with it. Pete is deliberately cautious about this.

### Adding a New Job — Governance Is Still an Open SOP, Not a Tech Setting
- **The problem:** any system admin at any property currently CAN add a new job — it's just an unchecked permission box, not a hard technical restriction. Whether that *should* be centralized is a management-practice question, not something Unifocus enforces.
- **Current real-world process (as described by Devon):** net-new jobs are typically created centrally by HMA's payroll/accounting team when a property's HR contact requests one; the same centralized pattern likely makes sense for who then adds the corresponding job in Unifocus.
- **Decision:** this needs to become a documented HMAlpha SOP (who requests, who approves, who executes in Paychex, who executes/notifies for Unifocus) — **not a Unifocus permission lockdown**. Devon wants to land on this internally and align messaging before the next round of property admin training, so it's communicated consistently.
- **⚠️ Critical warning — jobs cannot be deleted once used:** once a job accumulates any hours or codes (even by accident), it cannot be removed — only disconnected/inactivated, or moved into a "Do Not Use" division (hidden from non-admins via Labor Structure visibility permissions). The same rule applies to KBIs once they've been used. Mis-created jobs/KBIs become a real support-ticket burden to unwind. Pete noted HMAlpha's properties (praised Steve and Taylor's config work) haven't hit this problem yet — worth keeping it that way.

### Job Naming Convention — Decision + Action Item (in progress this trip)
- **Problem identified live:** many jobs across outlets are just named generically ("Server," "Bartender") with no outlet identifier. This breaks schedules for any employee who floats between outlets (Nicole's example: an employee scheduled at 3 different restaurants that all just say "Bartender" has no way to tell from the printed schedule which outlet each shift is at).
- **Convention going forward:** every outlet-specific job should start with a short abbreviation identifying the outlet/department (e.g., "BQT Server" for banquet vs. a restaurant-specific bartender name) and stay compact — long names truncate/wrap on schedule prints and narrow UI columns.
- **What stays uniform vs. what's flexible:** Divisions (Rooms, F&B) and most Departments should stay identical across all properties for cross-property comparison — but property-specific department/outlet names can flex to match local culture (e.g., "Front Office" vs. "Front Desk"), as can specific outlet abbreviations, as long as they're short and consistent within that property.
- Renaming has **zero functional/technical impact** — it's purely cosmetic, and any admin can do it at any time.
- **Action taken this trip:** Pete, Devon, and Nicole are doing a first-pass rename/shortening effort now, prioritizing the first 5 pilot properties — urgency driven by Indianapolis cloning its property setup **next week**, and new properties clone off of already-existing properties (not a clean master template), so bad naming would otherwise keep propagating forward. Plan: do an initial shortening pass, communicate the change to properties, then let each property suggest their own preferred outlet abbreviation within the new shorter convention. Devon is building a glossary of standard abbreviations (e.g., BQT = Banquet, TTL = Total) to distribute.

### Job-Level Configuration Fields (walkthrough)
- **Code column:** no functionality at all — purely a scrolling/reference convenience (frozen leftmost column). Pete's convention: 4-digit job code for jobs, department number for divisions/departments.
- **Abbreviation field:** rarely used at HMAlpha currently; surfaces in a handful of specific reports. Leave blank until a real need for it appears.
- **Job Category:** not currently configured/used for HMAlpha. Purpose: rolls differently-named jobs up to a master category for corporate-level reporting/consolidation (e.g., different property naming conventions still consolidating to one comparable bucket). Caution: changes here don't propagate automatically across properties — must be manually verified property-by-property, so avoid casual changes once set.
- **Variance %:** planning/scheduling variance reports default to 5% +/- unless overridden per job (e.g., a union-specific overtime rule).
- **Master Job / Productivity / Show on Dashboard:** must be set explicitly every time a new job is created — doesn't auto-populate. Standard practice: match the settings of similar/neighboring jobs rather than reconfiguring from scratch.
- **Job Schedule Order:** controls what order the auto-scheduler fills shifts (not literally "who gets scheduled," but which shift gets attention first and who's next in line). Options: left-to-right by day, Cascade, **Modified Peak** (HMAlpha's current default — prioritizes the day the system judges hardest to fill), by employee set (alphabetical/seniority), or Manual (a manager can hand-set the order).
- **Job Rank:** the tie-breaker sequence — distinct from Job Schedule Order. Fills full-time first, then part-time, then contract; within each tier, breaks ties by seniority/hire date/alphabetical. **Not** productivity-based — there's no "most productive employee" signal driving this.
- **Minimum Days Off** (set at the job level, not division-level despite an apparent division-level control — must be changed line by line): currently set to 1 at HMAlpha; Pete typically recommends 2. This is the auto-scheduler's guardrail — it won't auto-schedule a 7th consecutive day at 1, though managers can still manually schedule doubles/7-days if needed. Relevant to banquet scheduling specifically, since banquets generate many small shifts and a low min-days-off setting can let senior/first-in-line employees soak up all of them while others get nothing.
- **Schedule Approval/Publish requirement (checkbox):** exists at the job level to require manager approval before a schedule can publish. Technology supports it; **management practice is still evolving and explicitly not yet decided for HMAlpha.** Cautionary example from another Pete client: turning on strict "won't publish without approval" backfired because the approval bottleneck delayed schedules reaching employees via the mobile app. Devon's take: most HMAlpha properties have the same person making and would-be-approving the schedule, so a formal approval layer may not be needed (Grand Hyatt possibly the exception given its complexity). HMAlpha's stated management-culture position: deliberately "Goldilocks" between centralized and decentralized — not fully settled either way yet.

---

## DAY 2 COMPLETE — Wednesday, 7/15/26

## DAY 2 SESSION NOTES (Session 1, live from transcript — 7/15)

**Property used for hands-on walkthrough:** JW Marriott Houston (Rooms division) — chosen live/unrehearsed by Pete as a "standard" mid-complexity property.

### Labor Standards — Foundational Concepts
- **Settings cascade down the hierarchy:** division settings copy to every department under it; department settings copy to every job under it. Set the boilerplate once at the top (division) — minimum 4-hour / maximum 8-hour shift, KBI-related flag — and only exceptions need managing from there down.
- **Every labor standard must be KBI-related** — it needs a volume driver, even if the range is just "1 to infinity." Set this once at the division level so it doesn't have to be re-set at every department/job.
- **Salary labor standards exist but are deliberately not used** by Pete/HMAlpha — the alternative model is just "multiples of 40" (or whatever the property's FTE is), with no true actual-hours tracking behind it. Raised and set aside; not in use here.
- **Shift length is the real bucket size**, independent of what "maximum shift" is set to elsewhere — build a 10-hour shift but cap the job's max at 8, and the system forces it down to 8, producing confusing conflicts. Always watch how a shift actually behaves after creating it; don't assume the min/max settings alone control it.

### Shift Naming Convention (reinforced)
- Format: **[Shift Name] [Start]-[End, 4-digit military time] (worked hours in parentheses)** — e.g., a shift running 5:30–12:00 gets a "(6.5)" suffix.
- Purpose: once you're down in the Labor Standards grid, the shift's actual start/end time is no longer visible — the parenthetical is the only way to know how many hours are being distributed into that bucket without flipping back and forth.
- **Follow this every time** — it prevents exactly the error found live in this session (JW Houston Club Lounge, below).

### Work Rules Must Be Understood Before Building Shifts
- Work Rules (specifically the scheduled-lunch rule) directly change the effective shift length — e.g., an 8-hour shift + a 30-minute unpaid lunch produces an 8.5-hour **schedule**, even though the labor **standard**/shift is still 8 hours. Get this backwards and shift-length math breaks.
- **Critical distinction: "at X hours" vs. "over X hours."** A property was found configured with a break trigger at exactly 5 hours instead of "over 5 hours" — meaning a 5-hour shift with *no* break required entering the minimum as 5.01 hours, not 5. Easy to get backwards, with real consequences for whether a shift includes a break.
- **State law is the floor, not the answer** — work rules vary by state (Nashville/Tennessee required real legal research with Taylor before Union Station's rules were finalized), and a property's own policy can be stricter than the state minimum. Confirm both before configuring; "no state requirement" doesn't mean "no rule needed" — HMAlpha as a company may still want a default break policy regardless of a given state's floor.
- **Name the work rule to describe what it does** (e.g., "30-minute unpaid break after 8 hours") in the rule's own title — the system doesn't surface this clearly elsewhere, and a vague label makes it very hard to audit later.
- Work rules can attach to either the **job** or the **person**; a "priority" setting resolves conflicts between the two, but this almost never matters on a cleanly configured property.

### Shift vs. Schedule vs. Standard — Core Vocabulary
- **Shift** = the defined worked-hours window (the bucket itself — start time, end time, fixed size).
- **Schedule** = a shift once a person is actually attached to it (this is what triggers work-rule application — e.g., the lunch rule only fires once a schedule exists).
- **Standard** = the KBI-driven (or fixed) formula that decides how many hours of a given shift type get created for a given day.

### The "Pitcher and Glasses" Model — How Standards Fill Shifts
- Think of total standard hours for a day as a **pitcher of water**, and each defined shift length as a **glass of fixed size**. The system fills one glass completely before starting the next — it does **not** spread hours evenly across all available shift slots.
- If the underlying shift buckets are inconsistent (e.g., mixing 6-hour and 6.5-hour definitions under one shift record), the pour lands in an unintended combination — see the JW Houston Club Lounge case below.
- **Rounding threshold:** defaults to 20% of the job's minimum shift length (typically 4 hours, so roughly 0.8 hours of "leftover" is needed) before the system creates one more shift rather than stopping. Configurable per job. Matters most for productivity/volume-driven standards, where hours accumulate in small increments (minutes per room, per cover, etc.) rather than big block numbers.

### Real Example — JW Houston Club Lounge Breakfast Attendant (found broken live)
- Original config: one shift record named for a 5:30–12:00 (6.5-hour) bucket, but with 12 hours entered as the weekday standard. Because the shift was defined as a single 6.5-hour bucket, the system poured 12 hours into it as **one 6.5-hour shift + one 5.5-hour shift** — not the two 6.5-hour shifts (13 hours) implied by the naming.
- **Root cause:** the original builder likely intended two different shift times (two people starting at 5:30, one at 6:00 — three ~6-hour shifts, 18–19.5 hours total) but built it as a single shift record with inconsistent underlying start times across days, which doesn't surface unless the shift is opened and checked.
- **Fix applied live:** split into two clean shift records — 5:30–12:00 (6.5 hrs, all days) and 6:00–12:00 (6 hrs, all days) — then set standard hours explicitly per shift: weekdays 13 hrs into the 5:30 shift (two 6.5s) + 6 hrs into the 6:00 shift; weekends 0 into the 5:30 shift + 18 hrs into the 6:00 shift (three 6-hr shifts).
- **Lesson for HMAlpha:** consultant style varies (Pete builds one flexible shift record and manages variation in the standards grid — faster; Steve builds a separate shift line per distinct bucket size — slower, easier to read at a glance). Both work, but **the underlying shift record must always match what its own name/parenthetical claims**, or this exact silent error creeps in. Expect both styles across the HMAlpha portfolio; that's inconsistency, not a bug.
- **Standard changes don't retroactively fix anything** — editing a labor standard does nothing to already-generated projected hours/schedules. The system regenerates standard hours automatically 4x/day (looking back ~3 weeks); a manual "Regenerate Projected Hours" can test changes immediately but risks clearing the existing schedule for that job, so use cautiously.

### Fixed vs. KBI-Driven Standards
- The Club Lounge Breakfast/Evening Attendant standards above are **fixed** (no KBI driver) — flat staffing regardless of business volume, because HMAlpha doesn't currently have a reliable KBI (e.g., club lounge covers/attendance) to drive them.
- **Opportunity flagged, not yet built:** if club lounge attendance/covers can be forecasted and actualized reliably over time, this standard could convert from fixed to KBI-driven.
- **Gap found, needs property follow-up:** the Club Lounge Evening Attendant standard only produces a shift Sunday–Thursday — nothing Friday/Saturday. Unclear whether intentional (e.g., a different job code covers weekends) or an oversight. **Action item: Nicole to screenshot and ask the property** whether this is deliberate — non-urgent.

### Demonstrated (Not Implemented) — Front Desk/Bellman Conditional "Mid" Shift
- Baseline: Front Desk/Bellman runs two fixed 8-hour shifts every day (AM/PM), no KBI driver — someone is scheduled regardless of volume.
- Pete built a **live, for-learning-purposes-only** third "mid" shift (10:00 AM–6:00 PM, 8-hour bucket) to demonstrate a KBI-driven standard layered on top of a fixed baseline:
  - **Non-flow beginning**, driven by Hotel Departures, threshold 200, value 4 hours — fills the *first* 4 hours of the bucket if departures exceed 200.
  - **Non-flow ending**, driven by Hotel Arrivals, threshold 200, value 4 hours — fills the *last* 4 hours of the bucket if arrivals exceed 200.
  - If **both** conditions hit, the two 4-hour fills combine into a single 8-hour shift (with a lunch break, since it crosses the 8-hour threshold). If only **one** hits, it's a 4-hour shift with no break. If neither hits, no shift is created.
- **Business case for building thresholds even above current volume:** there's no downside to configuring a standard at a threshold the property isn't hitting yet (Pete's example: setting it at 1,000 rooms for an 800-room hotel) — it costs nothing, and gives the GM a documented, defensible trigger ("if you cross this line, you get another person") instead of an ad hoc argument. Directly answers a recurring GM objection pattern ("I don't have another person to put on") — the point isn't to force staffing, it's to have the threshold ready.
- This was **not saved/implemented** — for-learning-purposes only, reverted after the walkthrough.

### Standards Work "Forwards and Backwards"
- **Forward:** the standard generates projected hours and shifts for planning purposes.
- **Backward:** after the fact, actual-vs-standard comparison is how you validate whether ad hoc manager decisions (e.g., adding an extra 4-hour shift during a surprise high-arrival day) should be formalized into the standard, rather than staying a one-off manual override. Pete's framing: if a manager keeps adding the same kind of exception, "that should be your plan" — build it into the standard.
- *(Transcript quality degrades in the closing minutes — this actual-vs-standard reconciliation thread was still in progress when the transcript cuts off. Revisit if a Session 2 recording/continuation becomes available.)*

**Transcription note:** This session's raw transcript was auto-generated and materially garbled, especially near the end (Front Desk/Bellman standard-reconciliation discussion). The summary above reflects Pete's best-confidence read of the technical content; treat anything not captured here as unconfirmed.

---

## DAY 2 SESSION NOTES (Session 2, live from transcript — 7/15)

**Property:** Continuing on JW Marriott Houston, moving faster and skipping around rather than walking every job line-by-line — explicitly framed by Pete as a pace Devon/Nicole should adopt themselves going forward rather than reviewing every job in depth.

**UI tip (new):** The small box above the "Audit" label toggles a zoomed/collapsed view that trims unnecessary screen real estate on the standards screen; the caret next to "Planner Settings and Shifts" collapses that section too — use both together to get more usable screen space when auditing a standard.

### Housekeeping — House Person, Supervisor/Inspector
- House Person: AM shift + a fixed 2:30 PM shift every day regardless of volume, plus a late/closer PM shift — all built as full 8-hour shifts with different start times by day of week (this is fine; a shift can vary its start time by day and still be a clean single shift record, unlike the JW Club Lounge problem from Session 1). Variable portion scales off **departures**: a floor of 2 people at low volume, +1 additional shift roughly every 70 departures.
- **Multiple equally valid ways to build the same math:** you can either (a) write incrementing capped lines (1–70 → 2, 71–140 → 3, etc., where each line individually shuts off once volume exceeds its own range), or (b) write a fixed floor line (1→infinity, 8 hrs) plus a separate "units per shift" line (1→infinity, 70 units/shift) that adds capacity continuously. Different math, same result — **each line on a standard is its own independent decision**, and (critically) **shifts don't know about each other** — the AM shift and the 2:30 shift have zero awareness of one another; they're fully independent buckets.
- Housekeeping Supervisor/Inspector: similar ratio logic to House Person (~1 per 70), reviewing/checking the people who clean rather than cleaning directly.

### Public Area Attendant — Fixed, With a Flagged Origin Story
- Currently a fully fixed standard (no KBI driver) — Pete's assessment: acceptable as-is for now, though there's a plausible future case for adding variability tied to total events (e.g., an AM/PM event-driven line, similar to how a big breakfast event could justify extra coverage) — not built, just a noted possibility.
- **Origin story surfaced live:** this particular configuration traces back to a rushed BLSPD (budget/standards alignment) call where a consultant added an extra shift mainly to consume budgeted hours that would otherwise go unused for the week — not derived from a clean volume driver. Pete's framing: this is a normal, acceptable outcome of fast initial configuration, not a defect — the more mature approach (once mature) is to convert that kind of "we just needed to use the hours" shift into something volume-based, triggered often enough (e.g., ~50% of the time) to defensibly justify the extra labor, using **percentile analysis of historical KBI data** ("statify their data" — e.g., "this covers threshold is hit 85% of the time") rather than guessing.
- **Bigger strategic point Pete made here:** with a 15-property portfolio, exhaustive per-property tuning at initial config isn't realistic — the more important deliverable is establishing **an ongoing rhythm for evaluating/refining standards throughout the year**, not achieving perfection at kickoff. Devon pushed back a bit on the pace/depth tradeoff (paying for consulting time but getting a fast pass); Pete's response: fast configuration gets people using the system sooner, and the standard "won't lead you way astray" even if imperfect — refinement is a deliberate later phase, not a missed step.

### Room Attendant — Departures/Stayovers, with a DND-Adjusted KBI
- Confirmed consistent setup pattern across properties: 8-hour shift bucket, varying start times by day, but always calculated as if cleaning all rooms within one shift (even if the property actually splits labor across two time blocks) — you back hours out and relocate them elsewhere rather than trying to model the split directly in this standard.
- **Room Attendants clean departures and stayovers — never all occupied rooms.** Cleaning time differs meaningfully by type (departure clean takes longer than a stayover touch-up).
- **D&D (Do Not Disturb) adjustment:** the KBI backs out roughly 15% of stayovers to account for rooms that go Do Not Disturb and don't get serviced — a property-trackable metric worth continuing to monitor (their actual D&D rate as a % of stayovers, not of total occupied rooms).
- Uses a **minutes-per-unit** (staff minutes) standard — e.g., 20 minutes per room — rather than a flat headcount-per-volume-range standard.

### ⚠️ Important Mechanic — How "Staff Minutes" / Minutes-Per-Unit Standards Actually Distribute Hours
This came up as a dedicated deep-dive because it explains behavior Nicole and Devon will see in real reports and could otherwise mistake for a bug:
- A minutes-per-unit standard calculates total minutes needed in **one pass** (e.g., 10 people's worth of departures/stayovers × 20 min = 200 minutes), then pours that total into shift-length "cups" (per the shift's min/max settings) **in a second, separate pass**.
- **It does NOT recombine a leftover partial shift back into the pool before continuing** — there's reportedly a long-standing, never-implemented product request for this behavior. Instead, the system counts how many "cups" (shifts) it created — including any partial/short one — and then, separately, adds a fixed number of minutes **per cup/person** for things like a pre-shift stand-up meeting (Pete's example: 20 minutes × however many people/shifts resulted from the first pass).
- **Practical consequence: expect at least one short shift out of the box on any minutes-per-unit standard**, and by default the system hands out short shifts *first* (they tend to sit at the top of the generated shift list, especially under the default top-to-bottom fill sort). This is expected behavior, not a misconfiguration — **the first troubleshooting step on any productivity-based standard is to look for the short shifts and evaluate whether to expand them**, not assume something's broken.
- **The shift length itself is part of the standard's math here** — change the shift's min/max hours and you change how many "cups" get created and therefore how the same total minutes get redistributed (Pete's example: an 8-hour cup made 10 shifts off 200 minutes/room; a hypothetical 6-hour cup would have made more, smaller shifts off the same total).
- The 20% rounding threshold (from Session 1) applies here too, and interacts with this same first-pass/second-pass mechanic.

### The Negative-Hours Trick
- You can enter a **negative number** directly into a standard line to net out labor that's already accounted for elsewhere — Pete's example: turndown attendants who spend part of their shift doing room-cleaning work already counted under the Room Attendant standard. Enter e.g. "-8" in the relevant standard line to prevent double-counting; this adjustment is not visibly expressed anywhere else in the system — it's a pure internal netting mechanism.
- **Alternative approach:** have the employee clock in under the correct secondary job code for that portion of work instead of adjusting the standard with negative hours. Both approaches are valid and used across HMAlpha's properties (roughly half do one, half the other, per Pete's experience) — **the important thing is picking one method per property and being consistent**, not mixing both for the same labor.

### Laundry Attendant
- Mostly fixed, driven off hotel rooms with a modest additional variable tier off departures. Not measuring actual laundry weight/pounds — Pete's assessment: acceptable at this level of precision; a pounds-based KBI would be a "nice to have," not a gap worth fixing now.

### Food & Beverage — Servers (Outlet, Non-Banquet)
- Simple breakpoint-style variability: AM shifts driven by AM total coverage (breakfast + lunch), PM shifts driven by dinner covers. Not a finely graduated curve — just a handful of volume breakpoints producing roughly 4–6 total shifts depending on the day.
- Culinary, by contrast, is largely **fixed** with only minor variability — driven more by kitchen physical layout/station design than by covers volume, even under a well-refined standard.

### Banquets — A Fundamentally Different, Guess-Based Category
Pete was explicit and repeated this framing multiple times: **banquet standards are inherently an estimate, not a precise calculation**, because the system isn't reading BEOs (Banquet Event Orders) — it only has broad daily totals (e.g., total dinner covers), not event-type detail (plated vs. buffet vs. reception vs. box dinner) or event count.

- **Banquet Bartender — a live-found likely misconfiguration (unconfirmed, session was cut short — see note below):** the standard appeared to trigger a minimum of ~10 hours of bartender labor (a short ~4-hour setup/bar-run shift plus a separate 6-hour shift, at a ratio of roughly 2 bartenders per 75 dinner covers) off **total dinners alone** — meaning a stand-alone reception (with a bar but no dinner) would get **zero** bartender coverage under this standard, while every dinner automatically gets a bartender whether or not that specific event actually has a bar. Pete's read: this looks like the KBI is mapped to Dinner when it should likely be mapped to (or also include) Reception — but this needs to be verified against the property's actual banquet KBI/CI file setup before treating it as confirmed broken, not assumed from the standard screen alone. **Action item: Nicole to follow up either directly with the property, or with Elliott Welburn (the implementing consultant on this property, now a Unifocus Client Success Manager) to confirm whether receptions are mapped as their own KBI or folded into dinner.**
- **System outage interrupted verification:** shortly after finding this, both Pete and Nicole hit a platform error ("Watson" — internal nickname for a system component — appears to have broken; described as losing Labor Structure access, being logged out/reset) and had to stop mid-investigation. The Banquet Bartender finding above should be treated as a flagged lead, not a confirmed conclusion, until re-checked.
- **Banquet Captain — explicitly described by Pete as one of the hardest categories to standardize well:** driven simply by whether AM covers (breakfast+lunch) or PM covers (dinner) exist at all that day (a >0 threshold), not by number of banquets or banquet size, because the system has no reliable count of how many separate banquet events are happening. Consequence: a day with one small 10-cover breakfast and a day with a 1,000-cover plated dinner both trigger "a captain," even though real staffing need would differ hugely — and there will be days the standard clearly over- or under-shoots reality. Pete's guidance: **this is acceptable** — the goal isn't day-level precision, it's landing on budget over time and being able to **explain variance** at the weekly labor meeting using knowledge of how the standard was built, not achieving a perfect daily match.
- **Consulting-depth tangent (context, not a decision):** Pete contrasted this fast/guess-based approach with an earlier, much slower engagement (JW Marriott Indianapolis — a brand-new-to-Unifocus client, 3–4 consultants on-site for 5–6 weeks doing direct time-and-motion observation) to explain why HMAlpha's faster 15-property rollout necessarily trades some initial precision for speed to go-live. Pete's philosophy on where real productivity gains come from: **workflow/process observation matters far more than granular stopwatch math** — examples given: a stewarding "rack-scrape-stack" dish-flow discipline matters more than measuring exact dishwasher throughput, and a housekeeping engagement where the real time loss was staff making multiple trips per room (not carrying a full cleaning tote in at once) and not isolating stained linens before laundry, not raw cleaning speed itself.
- **Banquet Server:** shift length itself is the more useful lever to adjust here, since actual event call times vary by event type (Pete's example: a "call 2 hours before, 30 min cleanup after" event really wants a 3.5-hour shift, but the standard uses a generic AM/lunch/PM/break shift shape since exact BEO timing isn't known). Break coverage (AM break + PM break) is deliberately consolidated into one generic break shift/KBI rather than split into two, to keep the standard simple. *(Transcript cuts off here — the rest of the Banquet Server discussion was not captured.)*

**Transcription note:** This session's raw transcript was both auto-generated (garbled throughout, worse than Session 1) **and cut off mid-session** by the source recording/transcript length limit, ending abruptly during the Banquet Server discussion. Treat the Banquet Bartender finding above as an open lead requiring verification with the property or Elliott Welburn, not a confirmed issue, and expect there is unrecovered content after this point — ask if a continuation (Session 2 continued, or a Session 3) exists before assuming Day 2 training is fully documented.

---

## DAY 3 COMPLETE — Thursday, 7/16/26

**Session structure:** two sessions again — Session 1 (property-level reporting foundation) then a break, Session 2 (corporate Labor Dashboard, budgeting, automation, admin/naming/KBI mapping review). Nicole drove most of the hands-on navigation both sessions. Kyle Borowiec's corporate user account was created live partway through Session 2.

**Transcription note:** Both sessions are rough, informal, auto-generated transcripts of a live working meeting (heavy cross-talk, personal tangents edited out below except where they mark natural session breaks). Treat plainly-stated technical content as high-confidence; treat anything Pete phrased as "I think"/"I believe" as his own caveated uncertainty, not confirmed fact — flagged explicitly below where it matters (esp. the standard-dollar-rate question).

## DAY 3 SESSION 1 NOTES (live, from transcript — 7/16)

### Master Job / Master Labor Structure — Closing the Loop from Day 1
- At the property level, each job's **Master Job** field is where a property job connects to a corporate-predefined master job (e.g., Room Attendant, Front Desk Agent). The corporate side of that connection is pre-built centrally — property admins don't create it, they just select it.
- **Critical gap: the connection is not automatic.** A newly created job does *not* auto-connect to a master job — someone has to set it manually. A missed connection means that job's hours/productivity silently drop out of cross-property comparison reporting.
- **Deliberate non-use is fine; silent omission is not** — a property may legitimately not use a given master job (Pete's example: not every property needs "Corporate Concierge"), but that has to be a conscious choice, not an accident from a job that was created and never mapped.
- Corporate master jobs follow the same division/department/job framework as properties, distinguished mainly as **Hourly (H) vs. Salary (S)**; some roles have separate master entries specifically for **Contract labor** — group all local contract job codes for a role into that one master job so no hours "leak out" of the comparison (Pete's example: 10 different room-attendant codes across departments should all map to one master job).
- **Renaming vs. adding:** renaming an existing master job cascades to every property automatically. Adding a brand-new master job does **not** retroactively populate anywhere. Pete's strong recommendation: use what corporate has already built for now, don't split/rename casually — "the bigger you are, the further down the rabbit hole they went, and then they backed out and started over."
- Corporate master job/master KBI setup lives at **hamburger → Setup → Corporate** (bottom of the setup list), distinct from property-level Setup → Labor Structure. Only brand-wide users can see it; property admins can create local jobs/KBIs but have no visibility into the corporate rollup.

### Master KBI / Master Forecast Structure — Same Pattern, for Volumes
- Mirrors Master Job: **Setup → Corporate → Master KBI Code** holds a short, deliberately small list of corporate rollups (Hotel Rooms/Total Occupied Rooms, Total Covers overall, Total Covers by outlet, Spa Treatments, etc.) that every property's local KBIs should map into.
- **Same governance gap as jobs:** a property can create a new local KBI without linking it to a master code, and has no visibility into whether the corporate rollup is complete.
- **Real gap identified, unresolved:** neither Pete nor Devon/Nicole could find a **KBI configuration audit report** — something showing every local KBI at a property and what master code (if any) it maps to. Pete recalled something like this may have existed at the property level in the past but couldn't locate it live. **Action item: ask Ralph** whether this report exists; if not, flag as a real gap — urgent given the Indianapolis clone next week and the broader 15-property rollout. Devon does not want to wait for downstream symptoms to discover mapping gaps.
- **Scope guidance:** don't over-fragment master KBIs (e.g., splitting sports bar from casual dining) until your own chart of accounts forces the issue — these are broad, reusable buckets shared across many larger Unifocus clients and already fit most needs.

## DAY 3 SESSION 1 NOTES, CONTINUED — Property-Level Reports for the Weekly Labor Meeting

Framed explicitly by Pete as "arm them with tools to troubleshoot/pick apart the reports they run for the weekly labor meeting" before bubbling up to corporate reporting in Session 2.

### Weekly Labor Summary — Core Department-Level Meeting Report
- Always run backward to the **most recently completed full week**.
- **Read bottom-to-top** — volumes/KBIs at the bottom first, then work up; actual-vs-standard percentage is what matters, projected-vs-schedule is secondary/interesting only.
- Full detail (25 pages for a mid-size property) is right for a front office manager explaining their own department — **too dense for a DOF**.
- **Daily/Weekly toggle** turns the same report into an **8-week trend** (same 4 core numbers, rolled to weekly). Good for spotting whether a variance is a one-off or sustained — JW Marriott Houston housekeeping used live as an example of a standard being trusted/followed consistently (single-digit variance for 4 straight weeks).
- **Auto-scheduling caveat:** a new property with standards generating projected hours but no employee-maintenance restrictions yet will auto-schedule aggressively and look "fully scheduled" — normal during ramp-up, not a sign of anyone doing their job well or poorly. Actual-vs-standard remains the meaningful number.

### Op Codes — Cross-Department/Division Reporting Groups
- **Op codes exist only at the property level** — no corporate-level equivalent.
- Purpose: group jobs/departments for reporting when the natural division→department→job hierarchy can't be summed the way the business actually needs (e.g., an exec housekeeper who owns both Housekeeping and Laundry and wants them totaled together).
- **Weekly Labor Summary is the only report that can select multiple op codes and total them together** — other reports (e.g., Labor Effectiveness) run each op code separately, not combined.
- **Use cases discussed:** employees who split duties without reliably clocking out between them (laundry + public space); floating servers across outlets/banquets (an existing sample op code for this property groups all servers — individual lines can look wildly off while the combined total is on target). General rule: **if you're manually totaling several reports in Excel to answer a question, that's a sign you need an op code.**

### Labor Effectiveness Report — DOF/Director-Level View
- Any custom date range, one line per job for the whole property (4–5 pages vs. 25+ for Weekly Labor Summary).
- **Pete's real-world practice:** distributed property-wide for years with cost/dollar columns stripped out — hours only, not automated (a deliberate exception to "automate everything," see Session 2).
- **Flex-budget framing for P&L pairing:** revenue up X% doesn't imply labor should be up X% — culinary especially is inflexible, driven by station/menu complexity more than covers volume.

### Salary/Management — What Does and Doesn't Track
- Salaried staff don't clock in/out, so **no actual hours/costs come in** — but **labor standards still exist and are actively used** for salaried roles (Pete recommends continuing this).
- This property isolates salaried staff into a **Management division**, consistent with the Day 1 principle that Management gets its own division for visibility/security, not accounting.
- **Discussed, not resolved — "sharing" a salaried person's hours with an hourly job** (e.g., a Front Desk Manager personally covering 2 overnight shifts/week). Pete described a deprecated "share with" feature that tried to model this — cumbersome, rarely maintained correctly, hopes it's fully retired. **Recommended alternative: just cut those shifts from the schedule** rather than trying to visualize manager coverage in the system. If the manager is later unavailable and the hourly job runs over standard, that variance surfacing is the system working correctly, not a gap. Devon pushed back (wanted "share with"-style visibility for budget-season storytelling) but agreed the standard supports the annual/budget-level plan, not exact day-to-day shift defense.

### Labor Productivity Report — Productivity Goal Tracking
- **"Show Productivity Goal"** surfaces the job-level Productivity Goal field (from Labor Structure, Day 2) — the only report where it's actually visible/used. Set once as an annual target; don't fuss with monthly changes.
- **"Required" column — tell non-technical audiences to ignore it.** It's the raw work content of the standard before rounding/minimum-shift adjustments (same mechanic as Day 2's rounding discussion). Differs meaningfully mainly on highly productivity-driven, minutes-per-unit standards (housekeeping, effectively rounding twice).
- **Live idea, deliberately shelved:** Devon proposed an Actual/Standard/Budget productivity slide for the executive deck (rolled up by division, Required column hidden). Pete liked the direction but cautioned against over-reading short windows — a month or even a quarter being off doesn't invalidate an annual standard, since seasonal factors (length-of-stay swings, etc.) naturally swing productivity. **Decision: hold this back for now** rather than roll out before the underlying data is trusted.

### Employee Schedule Analysis — Drill-Down Troubleshooting Report
- **Weekly only**, filterable by job/department/**Schedule Group** (not Op Code — a different grouping specific to this report).
- **Deliberately excludes Work Records/contract-labor employees** — built to answer "how did this job end up with X actual hours vs. Y people scheduled?" for real payroll employees only.
- Person-by-person: scheduled vs. actual hours, break splits, bolded flags where actual exceeds scheduled.
- **Live use case:** explained an unexpectedly high actual-hours total for a job by finding an employee who worked it **without being scheduled for it** (floated over from another outlet). Because the report is job-filtered, only hours logged under that job show — the employee's "home" schedule elsewhere is invisible from this view.
- Secondary idea (self-approval-of-time-punch auditing) raised but set aside — properties aren't consistently doing daily approvals yet, so an audit workflow on top of an incomplete habit is premature sequencing.
- **Reinforced close of Session 1:** managers should bring Weekly Labor Summary + Weekly Projected Schedule to labor meetings; Labor Effectiveness Report is the DOF/director-level condensed substitute.

### Standing Reminder — Exported Reports Are All Text
- Every exported report (Excel/CSV) comes through with **every cell as text**, including numeric-looking ones — formulas silently fail unless wrapped in `VALUE()`. Pete flagged this as a chronic gotcha even for himself; treat it as a standing default before any downstream Excel work off an export.

---

## DAY 3 SESSION 2 NOTES (live, from transcript — 7/16)

**Focus:** corporate/above-property Labor Dashboard, budget data-set structure and the banquet-budgeting problem, report automation, user administration, job naming, and KBI mapping review.

### Labor Dashboard (Analytics menu) — The Corporate-Level Reporting Tool
- Under **Analytics**, not Reports/Reporter — a **separate body of data on a delayed/periodic refresh throughout the day**, not instantaneous like the report engine. "If you change something and it changes in the report but not the dashboard, it's not broken" — just not refreshed yet.
- **Functionally the same tool properties already use** — corporate users get one extra layer (portfolio → property → division/department/job) plus portfolio-wide views (Property Ranking) a single-property admin doesn't see.
- **Property Ranking:** select any subset/all properties, pick a corporate KBI/division/department, set a date range — ranks properties by actual-vs-standard variance. Devon confirmed this is close to what HMAlpha's CEO (Tim) already likes seeing — he's specifically drawn to ranking-style views.
- **⚠️ Unresolved, flagged urgent before showing costs to executives — where do "standard" dollar/cost figures actually come from, and is the rate blended or actual?** Pete's understanding (explicitly caveated, not confirmed): actual dollars come straight from the Paychex/T&A feed per shift; standard dollars use a **blended rate derived from whatever actuals are in view** for that date range, not individual employee rates. Devon pushed on this because the live example showed actual and standard rates diverging materially (union housekeeping: actual $21.55/hr vs. standard $20.86/hr) and neither Pete nor Devon could explain the gap with confidence.
  - **Devon's position, stated firmly:** unacceptable to show cost figures to HMAlpha's exec team without someone able to explain the methodology — "if we send a report and people ask what it means, we can't say 'figure it out.'" **Action item: raise on today's call**, get routed to whoever owns the interface/calculation logic (likely above Monali's level — she knows what comes in on the interface, not the report engine's internal math).
  - Pete's fallback in the meantime: keep dashboards focused on hours, not dollars — while acknowledging that once cost columns are visible, people look at them regardless of guidance.

### Vocabulary Reinforced (cross-referenced against Day 2)
Forecast = volumes only. Projected = hours, standard-driven. Schedule = what was actually built/published. Budget = a wholly separate, manually-loaded data set.

### Budget Data Sets — Confirmed Empty Across the Portfolio
- Setup path: **hamburger → Setup → Financial → Budget Data Sets.** A data set = volumes + the standard-generated hours run through those volumes, scoped to a **single calendar year** (can't span years).
- **Financial periods are configured through 2033** — that part's done.
- **System-defined data sets (Original, End of Year Forecast, Actuals) exist as named placeholders with no data anywhere checked.** One user-defined set ("Standards Test," created by Steve, one property, one year) had real data — everywhere else was empty.
- **This means "Actual vs. Budget" is currently non-functional across the portfolio** — no budget is loaded anywhere.
- **Data-sourcing gap, unresolved:** HMAlpha wants Unifocus to supply whatever budget data was originally collected during each property's implementation, rather than re-surveying properties. Pete could not locate what (if anything) was collected — implementation was largely decentralized directly between Unifocus consultants and hotels, before Devon/Nicole/Pete's current corporate engagement existed. **Action item: raise on today's call**, and separately build a standard "budget data request package" so the next property wave gets one clean, corporate-owned ask instead of ad hoc property-by-property requests.
- **What's actually needed to load a usable budget:** hours per job per month (straightforward) **and** volumes per day (the hard part) — a flat monthly number auto-spreads evenly, a poor fit for anything with real daily variability (housekeeping/occupancy being the clearest case).

### The Banquet Budgeting Problem — Core Mechanical Issue, Worked Through Live
- **The trap:** every banquet event-type standard (plated/buffet/continental breakfast, etc.) has its own minimum-shift/units-per-shift trigger. Importing one flat monthly banquet total and spreading it evenly would activate **every event type every single day** — massively over-staffing the model, since one cover in any event type is enough to trigger that type's minimum shift.
- **Walked through live on Banquet Total Breakfast → Banquet Total Breakfast Plated:** on *forecasting*, granular event-type totals are inputs and the parent rollup is calculated from them. On *budgeting*, you still can't just import one flat number — the labor standards attach to the granular KBIs, not the rollup.
- **Recommended fix — "make it spiky":** manufacture a realistic daily/event-type distribution *outside* Unifocus before importing (e.g., use last year's actual Delphi event-mix ratios to shape how this year's monthly total distributes across days and event types) — rather than a flat spread that produces a field of zeros with no realistic spikes. Same underlying principle as the simpler non-banquet F&B fix (apply the daily occupancy curve to a flat monthly covers budget); banquets just need a second axis (which event type, which day).
- **Sequencing note:** Pete deliberately hadn't raised this with Devon/Nicole before now — "I would not have this conversation until you can start looking across property stuff and really find the detail." Confirmed doable (other Pete clients have solved it this way) but explicitly **2027 budget-season prep work, not this trip.**

### F&B Day-by-Day Forecasting — Adjacent, Separate Gap
- HMAlpha runs a company-wide forecast roughly every two weeks with real daily granularity for covers/volumes — but it doesn't currently flow down to property F&B directors or get imported into Unifocus.
- **Open question, not decided:** whether/how to expose it — Pete's caution is to weigh better information against a possible perverse incentive (a property "gaming" its own forecast). Devon to think through rather than resolve in the moment.
- **By contrast, rooms revenue forecasting is already done correctly** — HMAlpha imports pickup/drop-off directly from its revenue management tool into ProfitSword, no manual re-entry. Pete explicitly endorsed this as the model to extend elsewhere when feasible.

### Corporate-Level Daily Reporting — Confirmed Gap
- Devon asked directly whether a corporate-level daily report exists (apparently floated to HMAlpha leadership as an expectation). **Pete confirmed: no corporate-level daily report exists** — only property-level daily reports (e.g., **Daily Operating Report**, Reports & Reporter → filter by tag "Labor Analysis," blending elements of Weekly Labor Summary and Labor Effectiveness, broken out by hour type including training/overtime/contract). Nothing rolls this up above the property.
- **Unresolved:** whether this was ever actually promised as a deliverable or was an assumption that outran what's built — flagged as a conversation for Tim/Mike (HMAlpha leadership) rather than something to fix today.

### Additional Labor Dashboard Views Toured
- **At a Glance / Issues & Opportunities:** portfolio version of the property dashboard — configurable variance threshold (5% default), sortable by cost impact or percentage, drills portfolio → property. **Data-quality bug confirmed:** Union Station was grouped under a different region than the rest of the portfolio; Pete offered to fix live but deferred to save session time — **flagged as a follow-up, not urgent.**
- **Metrics and Reports** (chart view) — same numbers as At a Glance, graph-first. No property-level productivity setting exists (productivity only configures at division/department/job level).
- **Trends** — day/week charting of actual/standard/schedule/projected, any drill-down level. **No cross-property comparison chart exists** — shows one property/node at a time. **This is the gap Devon flagged as most important:** HMAlpha's CEO is used to a single-glance, all-properties comparison; the closest existing tool (Property Ranking) is table/list-based, not a chart, and still siloed to one division/department/job selection rather than a true whole-property rollup.
- **Best Available Data** — blends actual → projected → standard (and forecast → actuals) so a week spanning past/future days shows the most complete number available per day rather than blanks.
- **Manager Portal** — confirmed **being deprecated**; not taught for that reason.
- **Attendance Dashboard** — not applicable; HMAlpha isn't using Unifocus for time & attendance.

### Raw Data Export / HMAlpha's Own Analytics Ambitions
- Every report exports to **PDF, Excel, or CSV**. PDF preserves layout (harder to parse programmatically, though "any AI can read a PDF now" per Pete). Excel/CSV strip formatting for cleaner tabular use; **CSV drops job-level detail** on at least the Weekly Labor Summary — Excel was the more complete export in the live test.
- **Report layout has been stable since at least 2009** (Pete's own tenure as a customer) — meaningful for building repeatable lookup-based external reporting (VLOOKUP/OFFSET) on exports, since columns aren't expected to shift.
- **No option to disable/lock PDF export** on scheduled reports — Devon raised this as a data-governance concern; told there's currently no such control.
- **No unique cross-property job-code key exists in the data — job *name* is the only join key today.** This is exactly why the naming-discipline emphasis across all three days matters beyond cosmetics: any external reporting HMAlpha builds depends on job names being unique and stable. Devon wants an actual **job code** (not just a name) as a proper primary key, especially for connecting to HMAlpha's other data sources.
- **HMAlpha's broader data strategy, surfaced live:** HMAlpha is in early stages of adopting **Microsoft Fabric** as a central data warehouse to pull together ProfitSword and other sources for custom BI/dashboarding, rather than depending on any single source system's native reporting. Devon's stated goal: single source of truth, ability to build custom reports without paying per-request, and less reliance on ProfitSword specifically for reporting (while acknowledging it'll still be needed for some core functions regardless).

### Report Automation (Task Scheduler)
- Any report can be scheduled two equivalent ways: (1) directly from the report's run screen, or (2) via **Setup → Administration → Task Scheduler Setup**, editing an existing task or creating a new one.
- **Recipients must be existing Unifocus system users** — no arbitrary external emails; delivery uses whatever email is on that user's profile. Notify on success, failure, or both.
- **Runs in the timezone of the property/session the task is scheduled under**, not a fixed corporate timezone — worth double-checking when scheduling from an unfamiliar property.
- **Live test:** scheduled the Labor Effectiveness Report for later the same afternoon (~1:06 PM) as a real-time proof — confirmed the mechanism works within a short window; delivered as PDF (only output format observed live; whether Excel/CSV can also be scheduled wasn't separately confirmed).
- **Task Scheduler Log** (below Task Scheduler Setup) shows execution history — useful to confirm a schedule is actually firing.

### User Administration — Live Account Creation (Kyle Borowiec)
- Fastest path to a new corporate user: **clone an existing similar user** (Devon's account was the template) rather than building from scratch.
- **Naming convention flag:** corporate users list alphabetically with no other default sort/filter — Devon should settle on a naming convention for the small corporate admin team before the list grows.
- **Client-level access = full portfolio scope** — checking this on a cloned user grants visibility across every property, a meaningful permission decision, not a default checkbox.
- New users must be **activated**, then **accept an email invite within 48 hours** — a hard window.
- **Deliberate scope call, not a gap:** deeper security/permissions training (now referred to as **User Administration**, not Security Primer) was consciously de-prioritized for this trip — it was already covered at the property level, and Devon's priority was above-property reporting instead. Pete offered to help further whenever it becomes the priority.

### Job Naming Convention — Reinforced with Concrete Examples
- Every job needs to be **uniquely named** so external lookups (VLOOKUP/OFFSET-style spreadsheets built off property exports) can reliably target a single, unambiguous cell — Pete's own anecdote: he built exactly this kind of external Excel tracker as a *customer*, well before working for Unifocus, which is why he's "more anal about job names than most people."
- **Pattern:** short outlet/department prefix + role (e.g., **BQT Server**, **BQT Bartender**, **BQT Captain**) rather than spelling out "Banquet" — keeps names compact for reports and especially the mobile app, where long names word-wrap and can push numbers off-screen.
- **Only add a disambiguating prefix where a real collision exists** — e.g., "Admin" might independently exist in Engineering, Security, and F&B (a real collision needing a prefix); a role genuinely unique property-wide (Room Attendant) doesn't need one. Pete's guidance: "you'll know it when you see it."

### KBI Mapping Walkthrough — Actual vs. Forecast, Reinforced
- **Actual KBI Mapping** (separate screen from Forecast KBI Mapping): pulldown-only, no free-text — options are populated directly from whatever the source system (Delphi/CI) actually sends, so **this mapping cannot be pre-filled or guessed without the source data already flowing in.** A given master KBI can only be used **once** per mapping, though one KBI can absorb multiple source event types.
- **Forecast KBI Mapping** allows typing and generally starts from the KBI; needs **one line per source-system event-type combination** (a KBI can span several mapping lines).
- **A concrete definitional decision has to be made per property:** what does "Lunch" mean if the source system doesn't distinguish "Lunch Plated" from generic "Lunch"? Whoever owns the mapping needs that conversation with the property directly, not an assumed default.
- **Confirmed live, useful reference:** the full canonical banquet event/space type list from this property's CI "Source" field includes Winter Reception, Tastings, Sword [ceremony], Speaker Ready Room, Setup/Rehearsal, Registration, and Pre/Post — confirming event types Nicole and Devon had previously added (Pre/Post) are already correctly reflected in the source system.
- **Live troubleshooting moment — confirms the "always verify, never trust" principle from Day 1:** Nicole discovered mid-session that one property's banquet Delphi/CI data hadn't actually been imported for KBI mapping despite appearing configured. She contacted Ali/Manali (Unifocus data team) live via chat, got confirmation the import ran, and verified the source field populated by session's end — real-time proof of exactly the risk Pete flags: **a mapping can look complete and still be silently missing data**, hence his insistence on a dummy/test file plus a checklist rather than trusting an import at face value.
- **Devon's two concrete follow-up action items, stated explicitly:**
  1. Complete the banquet event-type KBI mapping for JW Marriott Houston (and each property in turn) using the checklist method demonstrated — cross-reference against the full CI Source field list to make sure nothing is missed.
  2. Investigate whether CI has an equivalent to Delphi's rollup field (the field that collapses many granular market-segment types down to the three that matter for labor — Group / Local / In-House). **Unresolved** — Devon to check with CI-side contacts or a colleague (Julie) who may know; if CI has no such field, every granular segment type will need individual mapping to Group/Local/In-House rather than relying on a pre-built rollup the way Delphi provides.
- **Long-term warning, reiterated from Day 1's banquet philosophy discussion:** new event types get added by sales/catering in the source system **without notifying Unifocus or corporate admins** — properties only discover a mapping gap when a specific event produces zero generated labor, and will describe it as "we didn't get any labor" rather than naming the missing event type. Troubleshooting path: ask for the specific BEO/event number and trace it back through the mapping.

---

## PETE'S OVERALL TRAINING FRAMEWORK (noted 7/13, in progress)

This is Pete's own organizing structure for WFM admin training — distinct from the handbook's raw TOC order. **Not final** — Pete will add to it as he sees how all the training items fit, or if it needs more pieces.

1. Intro to WFM
2. Labor Structure
3. Employee Maintenance
4. Forecast Structure
5. Labor Standards
6. Reporting
7. WFM Culture
   - Weekly Labor Cycle / Sequence
   - Weekly Labor Meeting

**Key insight driving this:** The System Admin Handbook is written from a **software implementation perspective** — its TOC order (Market Groups → Revenue Centers → KBIs → Environments → Flow Patterns → Labor Structure → ...) is a build sequence for standing up a brand-new client from scratch. That's why the config-layer sections (Market Groups/Segments, Revenue Centers, Environments, Flow Patterns) felt front-loaded in the raw TOC distribution above — they're setup prerequisites, not an ongoing-admin training sequence. HMAlpha is already configured/implemented/launched, so this framework instead organizes around **how a working admin operates the system day-to-day**, ending in the human/process layer (WFM Culture, weekly labor cycle, weekly labor meeting) rather than starting there.

This framework is the eventual home for the raw TOC distribution below — once mature, each handbook section should sort into one of these 7 buckets rather than staying in handbook order. Revisit and re-map when Pete has had time to see how the pieces fit.

---

## MASTER CHECKLIST — knock off as we build the curriculum

### Emphasis areas (must land)
- [x] Above-Property Reporting — **done (Day 3, Session 2).** Module turned out to be the Labor Dashboard (Analytics menu), not "EXECUScope Tab." Substantially taught; one gap remains — no all-properties side-by-side comparison chart exists.
- [x] Master KBI and Jobs Mapping — **done, split across Day 1 and Day 3.** Day 1: fundamentals, job-level config, naming convention. Day 3 Session 1: the corporate Master Job/Master KBI connection mechanic property admins actually use day to day.
- [x] Interface Level Mapping — distinct from KBI/Jobs mapping; what Pete and Nicole worked on in NOLA. **Defined 7/13:** tracking each source-system feed into Unifocus (source, frequency, source quirks, UF mapping location) — see companion doc `interface-mapping-tracker.md`. **Done (Day 1)** — became the biggest unplanned focus of the trip's first day.
- [ ] Weekly Labor Meeting (train-the-trainer) — **correction (7/16): the material already exists**, not "build from scratch." Pete has a complete guide for running a weekly labor meeting, written for the people who actually run them, already distributed as an attachment to the original training invite. What's still open is walking Devon/Nicole through it live so they can coach properties on it — that session didn't happen this trip.

### Topics to place — must be on the agenda somewhere
*(Pete: "If these things are not included, we will have to find a place for them.")*
- [x] **Task Scheduler** (incl. Automatic Messaging) — placed Day 2, paired with Planning/Weekly Timeline. See FULL TOC DISTRIBUTION and DRAFT SESSION OUTLINE below.
- [x] **Weekly Timeline** — placed Day 2, paired with Planning. See FULL TOC DISTRIBUTION and DRAFT SESSION OUTLINE below.
- [x] **Property Level Reports** — placed Day 3, as a quick property-level refresher immediately before EXECUScope/Above-Property Reporting (sets up the property-vs-corporate contrast). See below.

---

### Decisions still needed
- [x] Confirm EXECUScope Tab = above-property reporting module (or find the right one) — **resolved (Day 3, Session 2):** "EXECUScope Tab" was the wrong name; the actual module is the **Labor Dashboard** under the **Analytics** menu. Substantially taught. See TOC distribution table row 16 for the one open gap (no all-properties comparison chart).
- [x] Identify which handbook section/module covers Interface Level Mapping — **resolved:** it's not a handbook section at all, it's source-system integration mapping (Paychex, etc.) — tracked in `interface-mapping-tracker.md`
- [x] Decide whether Labor Budgeting is in scope — **resolved (Day 3, Session 2):** conceptually in scope and partly taught (data-set structure, the banquet-budgeting problem), but hands-on budget building was explicitly deferred as 2027 budget-season prep, not this trip. Real blocker: sourcing each property's original implementation-time budget data — unresolved, raised on the 7/16 call.
- [x] Decide how deep to go on Security Primer (the curriculum section covering User Administration, née User Security) vs. property-level coverage — **resolved (Day 3): deliberately de-prioritized, not open.** Already covered at the property level; Devon's stated priority was above-property reporting, so Day 3's time went there instead. Only one live example touched it (cloning a user for Kyle Borowiec). **Note: the Security Primer curriculum itself is dated and probably doesn't reflect current screens/choices** — flagged by Pete as a future rebuild candidate, not urgent. Revisit depth only if/when it becomes a priority.
- [ ] **Nicole to follow up with JW Marriott Houston:** is the Club Lounge Evening Attendant standard intentionally absent Friday/Saturday, or is that a gap? (raised Day 2, Session 1)
- [ ] **Nicole to follow up with the property or Elliott Welburn (implementing consultant on this property, now Unifocus Client Success Manager):** is JW Marriott Houston's Banquet Bartender standard correctly mapped to Dinner only, or should Reception be its own driving KBI? Session 2 finding, unverified — investigation was cut short by a system outage before confirming against the property's actual banquet KBI/CI file. (raised Day 2, Session 2)
- [ ] **Ask Ralph:** does a KBI configuration audit report exist anywhere (property or corporate level) showing every local KBI and its master-code mapping? Neither Pete nor Devon/Nicole could find one live — flagged as urgent given the Indianapolis clone the following week. (raised Day 3, Session 1; **not yet raised with Ralph** — not covered on the 7/16 HMA weekly call, see `../2026-07-16_weekly-hma-call-notes.md`)
- [ ] **Where do "standard" dollar/cost figures on the Labor Dashboard actually come from (blended rate methodology)?** (raised Day 3, Session 2) — **raised with Ralph on the 7/16 HMA weekly call, still not actually resolved.** Ralph confirmed the standard rate is a blended amalgam across all employees in a job (not a single true rate) but gave a change-management answer rather than a technical one; Devon was explicit she still needs the real mechanism explained before she's comfortable showing cost data to HMAlpha's executive team. See `../2026-07-16_weekly-hma-call-notes.md`.
- [ ] **Does a corporate-level daily report exist, or was that ever actually promised to HMAlpha leadership?** Pete confirmed none currently exists. (raised Day 3, Session 2; **not raised on the 7/16 call** — still needs to go to Tim/Mike directly per Pete's original framing)
- [ ] **Get Unifocus to supply each property's original implementation-time budget submissions** rather than HMAlpha re-collecting from properties directly; build a standard budget data-request package for the next property wave. (raised Day 3, Session 2) — **budgeting broadly discussed on the 7/16 call** (Ralph's Standard Sets approach, Devon's this-year-vs-next-year strategic question), but this specific data-sourcing ask was not directly addressed — still open. See `../2026-07-16_weekly-hma-call-notes.md`.
- [x] **Devon to investigate: does CI have an equivalent to Delphi's Group/Local/In-House rollup field for banquet market segments?** (raised Day 3, Session 2) — **resolved on the 7/16 HMA weekly call.** Manali confirmed CI's "Group Type" field (Group/In House/Local Rooms Only/Tour Series Group, etc.) is the equivalent rollup, and CI's "Function Type" field maps to Delphi's event/booking type. Nicole building a dummy mapping file per property going forward. Full detail: `../2026-07-16_weekly-hma-call-notes.md`.
- [ ] **Fix (low urgency):** Union Station is grouped under the wrong region on the Labor Dashboard's At a Glance view — Pete offered to fix live but deferred to save session time. (raised Day 3, Session 2) — **independently reconfirmed and reported directly to Ralph on the 7/16 call**, but still not actually fixed as of that call. See `../2026-07-16_weekly-hma-call-notes.md`.
- [ ] **Confirm whether a Day 2 Session 3 / continuation transcript exists** — Session 2's transcript both degraded and cut off mid-discussion (Banquet Server topic unfinished); if there's more recording, it needs processing too.

### Logistics
- [x] Sessions: Tue 7/14, Wed 7/15, Thu 7/16 — planned as three 4-hour sessions, 9:00 AM–1:00 PM each day. **Actual:** all three days ran as two sessions with a break in between rather than one continuous 4-hour block — confirmed as the consistent pattern across Day 1, Day 2, and Day 3.
- [ ] Location: HMAlpha Corporate Offices, Nashville

---

## FULL TOC DISTRIBUTION — every handbook section mapped to a day

Every top-level section from the 172-page handbook, assigned to one of the three days. "Property coverage" = whether Devon/Nicole already saw this at Union Station/NOLA — where marked Covered or Partial, treat as a fast pass: ask if they have questions, then move on rather than re-teaching from zero.

**"Property Coverage"** = whether Devon/Nicole already saw this at Union Station/NOLA, assessed before the trip. **"Training Status (this trip)"** = what actually happened in the room this trip, updated as each day's transcript is processed — these are two different things and shouldn't be conflated.

| # | Handbook Section | Day | Property Coverage | Training Status (this trip) |
|---|---|---|---|---|
| 1 | Market Groups & Market Segments | Day 1 | ❌ Not covered — new foundational topic | ✅ **Covered** (correction, 7/14) — taught embedded in the Rooms KBI/forecasting discussion rather than as a standalone named topic: these are the **Rooms KBIs**, and function as the **independent variables** in the forecast model |
| 2 | Revenue Centers | Day 1 | ❌ Not covered — new foundational topic | ✅ **Covered** (correction, 7/14) — more property-level review than new-to-them content: these are the **dependent variables**, forecasted when the system "generates" revenue centers (derived from the independent Rooms KBIs), then editable by the forecasting manager |
| 3 | Environments & Global Environments | Day 1 | ❌ Not covered — new foundational topic | 🟡 **Partially done** — discussed conceptually (two purposes explained) and a decision was made not to use them yet; no hands-on configuration walkthrough happened |
| 4 | Flow Patterns & Flow Plans | Day 1 | ❌ Not covered — new foundational topic | 🟡 **Partially done** — same pattern as Environments: discussed and explicitly decided not to set up; no configuration walkthrough |
| 5 | KBIs (incl. KBI Mapping) | Day 1 | 🟡 Partial — property guide's "Forecast Structure" covered review/modify calculated KBIs only; KBI Mapping is discussed here, not under Labor Structure. Statistical, % of base, environmental, and KBI sets are new depth | 🟡 **Partially done** — forecasting method status (TASE vs. regression) covered in depth; Master KBI concept introduced but explicitly deferred ("we'll come back to this"); no hands-on KBI creation/mapping walkthrough yet |
| 6 | Labor Structure (incl. Jobs Mapping) | Day 1 | 🟡 Partial — property guide covered add/edit jobs, productivity, dashboard, sort order, min hours/days off; moving/copying/prioritizing jobs & assignments is new. Jobs Mapping lives here, separate from KBI Mapping above | ✅ **Substantially done** — fundamentals, job-level config fields (Code, Abbreviation, Job Category, Variance %, Master Job/Productivity/Dashboard, Schedule Order, Job Rank, Min Days Off, Publish/Approval), the job-naming convention decision + live action item, and the "jobs can't be deleted once used" warning all covered |
| — | *Interface Level Mapping* | Day 1 | ✅ Defined 7/13 — tracks each source-system feed into Unifocus (source, frequency, source quirks, UF mapping location). Not a handbook section; see companion doc `interface-mapping-tracker.md` | ✅ **Substantially done, exceeded plan** — full EMS-by-brand landscape, centralized reporting process, interface onboarding method, and TK/Reconcile code mechanics all covered in depth; became the biggest unplanned focus of Day 1 |
| 7 | Planning | Day 2 | 🟡 Partial — property guide's "Planning Menu" + "Weekly Timeline" covered rooms/banquet/rev center forecast, project hours, generate/manage/publish schedules | ⬜ Not yet started |
| — | *Weekly Timeline* | Day 2 | 🟡 Partial — property guide covered finalize timeline, task ownership, Labor/Scheduler screen; confirm Devon/Nicole have this down, or give it dedicated time here | ⬜ Not yet started |
| — | *Task Scheduler (incl. Automatic Messaging)* | Day 2 | 🟡 Partial — sub-topic of Weekly Timeline in property guide; confirm whether that treatment was sufficient or corporate needs deeper pass. Automatic Messaging (message triggered when an automated task runs) taught here, not as its own topic | ⬜ Not yet started |
| 8 | Revenue Center Forecasts | Day 2 | 🟡 Partial — rev center forecast generation covered under Planning Menu; this section's depth (legend, planning period/rev center selectors, editing forecasting) is new | ⬜ Not yet started |
| 9 | Work Rules | Day 2 | ❌ Not covered — no mention in property guide at all | ✅ **Substantially done** (Day 2, Session 1) — scheduled-lunch rule mechanics, "at X hours" vs. "over X hours" threshold trap, state-floor-vs-property-policy distinction, and naming convention for rule titles all covered live on JW Houston |
| — | *Labor Standards* | Day 2 | 🟡 Partial — property guide's "Labor Standards" listed only as "build + audit labor standards," no depth | ✅ **Substantially done, biggest focus of the session** (Day 2, Session 1) — KBI-driven requirement, shift/schedule/standard vocabulary, shift naming convention, the "pitcher and glasses" fill model, 20% rounding threshold, fixed vs. KBI-driven standards, and a live example of finding/fixing a broken standard on JW Houston Club Lounge. Not previously tracked as its own row in this table — added here since it turned out to be foundational, not a sub-topic of Work Rules or Labor Structure |
| 10 | Employee Maintenance | Day 2 | 🟡 Partial — property guide covered reconcile employee errors, add contract labor, bulk mobile invitations; full record creation across General/Status/Jobs/Scheduling/Schedule Groups/Assignments/Work Rules tabs is new | ⬜ Not yet started |
| 11 | Employee Requests | Day 2 | ✅ Covered — property guide's "Employee Request" (create/approve time off) matches directly; quick check only | 🟡 **Partially done** — open question raised on Day 1 (should some requests bypass Paychex?) but explicitly not resolved |
| 12 | Schedules | Day 2 | 🟡 Partial — schedule generation/management covered under Planning Menu/Weekly Timeline; detailed shift editing, copying, swapping, printing is new | 🟡 **Partially done** — the go-live/cutover decision and publish workflow were covered in depth on Day 1; hands-on shift editing/copying/swapping mechanics not yet done |
| 13 | Timeline Scheduling | Day 2 | ❌ Not covered — not named anywhere in property guide | ⬜ Not yet started |
| 14 | Labor Budgeting | Day 3 | ❌ Not covered — conditional: confirm in scope with Devon/Nicole before building | 🟡 **Partially done (7/16)** — no hands-on budget building happened (not this trip's scope), but the budget data-set structure was taught (financial periods → user-defined data sets, volumes + standard hours, one per year), and the portfolio's budget data sets were confirmed **empty everywhere**. The banquet-budgeting mechanical problem ("make it spiky") was worked through conceptually. Real blocker surfaced: HMAlpha needs Unifocus to supply what was originally collected at implementation rather than re-asking properties — unresolved, raised on 7/16 call |
| 15 | Security Primer | Day 3 | 🟡 Partial — property guide's "User Administration" covered security credentials, add/clone users, tabs overview; Actions tab breakdown (Global/System Setup, Reports, Labor Forecasting/Reports, Scheduler, Adhoc) is new depth | 🟡 **Deliberately de-prioritized (7/16), not a gap** — one live example (cloning Devon's user to create Kyle Borowiec's account) covered activation, the 48-hour invite window, and the client-level (full-portfolio) access checkbox, but the Actions-tab depth and broader multi-property permissions model were consciously left out. **Terminology correction (7/16): "User Administration"** is the property-level topic/screen (formerly called "User Security"); **"Security Primer" is the name of the handbook curriculum section that teaches it in depth** — they're not two competing names for the same thing. Pete's assessment: the Security Primer curriculum content itself is **dated and likely doesn't reference current screens/choices** — a future rebuild candidate, not urgent. De-prioritizing it this trip was a deliberate scope call (already covered at property level, Devon's priority was above-property reporting), not a missed topic |
| — | *Property Level Reports* | Day 3 | ✅ Covered — property guide's "Reports/Dashboard" (Labor Effectiveness, Weekly Labor Summary, file types, schedule reports, labor dashboard); quick refresher here, immediately before the corporate dashboard, to set up the property-vs-corporate contrast | ✅ **Done (Day 3, Session 1)** — full session on Weekly Labor Summary (incl. daily/weekly toggle), Op Codes, Labor Effectiveness Report, Labor Productivity Report, Employee Schedule Analysis, plus the Master Job/Master KBI corporate-connection concepts that set up the Session 2 jump to the Labor Dashboard |
| 16 | EXECUScope Tab | Day 3 | ❌ Not covered — emphasis area #1, no property-level equivalent; confirm this is actually the above-property reporting module first | ✅ **Resolved, but the name was wrong (Day 3, Session 2)** — "EXECUScope Tab" does not appear to be the actual module name; the above-property reporting tool actually used and taught was the **Labor Dashboard**, under the **Analytics** menu (Property Ranking, At a Glance/Issues & Opportunities, Metrics and Reports, Trends, Best Available Data). Substantially covered, with one real gap flagged: no chart exists that compares all properties side-by-side in one view — Property Ranking is the closest thing but is table-based and siloed to one division/department/job at a time, not a true all-properties comparison the way HMAlpha's CEO is used to seeing |
| — | *Weekly Labor Meeting (train-the-trainer)* | Day 3 | ❌ Not covered — custom topic, no handbook equivalent at all | ⬜ **Session not delivered, but the material already exists** — correction (7/16): Pete already has a **complete guide for conducting a weekly labor meeting**, written for the people who will actually run the meetings. It was distributed as an attachment to the original training invite, sent to everyone — so property managers already have it in hand, whether or not they've read it. What didn't happen this trip is the **corporate train-the-trainer walkthrough** — Devon/Nicole working through the guide live with Pete so they can coach/set expectations for properties running their own meetings. The gap is delivery/practice, not authored content. |

**Not placed on any day (property-guide-only topics with no distinct handbook TOC heading found):**
- Mobile Configuration, Employee User Maps, Actuals — these appeared in the property-level guide but don't map to a standalone section in the full handbook TOC. Likely already fully covered at property level; flag if Devon/Nicole raise questions, otherwise no dedicated time needed.

---

## DRAFT SESSION OUTLINE — three 4-hour days

**Day 1 — Tue 7/14: Configuration Foundations + Master KBI/Jobs Mapping + Interface Level Mapping**
- Foundational config layer (new): Market Groups & Market Segments, Revenue Centers, Environments & Global Environments, Flow Patterns & Flow Plans
- Deep dive (partial prior exposure — check questions, then go deeper): KBIs + Forecast Structure (this is where KBI Mapping lives), Labor Structure (this is where Jobs Mapping lives — separate discussion from KBI Mapping)
- Interface Level Mapping — tracks each source-system feed into Unifocus; build out `interface-mapping-tracker.md` live as examples come up (Employee Reconcile/Paychex, Actual Hours/Paychex T&A already captured)
- Goal: "teach her how to fish" — Nicole and Devon leave able to build/adjust KBIs, job mappings, and interface mappings themselves, not just watch

**Day 2 — Wed 7/15: Operational Planning, Scheduling & Employee Admin**
- Weekly Timeline + Task Scheduler (incl. Automatic Messaging) — confirm property-level treatment was sufficient before deciding how much time this needs
- Planning, Revenue Center Forecasts, Employee Maintenance, Schedules (all partial — check questions on the property-level basics, then cover the new depth)
- Employee Requests — fully covered at property level, quick check only
- Work Rules, Timeline Scheduling — entirely new, no property-level exposure

**Day 3 — Thu 7/16: Above-Property Reporting + Security + Budgeting + Train the Trainer**
- Property Level Reports — quick refresher (already covered at property level), sets up the contrast before going above-property
- EXECUScope / Above-Property Reporting — confirm module, then build session (no property equivalent)
- Security Primer — property guide covered the basics; go deeper on Actions tab breakdown for multi-property permissions
- Labor Budgeting — only if Devon/Nicole confirm it's in scope; otherwise use the time for open Q&A and review of Days 1–2
- Weekly Labor Meeting facilitation — built from scratch; practice/roleplay if time allows
- Wrap by early afternoon — 6:10 PM flight home

**Actual (Day 3, 7/16):** Session 1 delivered the Property Level Reports refresher as planned, plus closed the Master Job/Master KBI loop left over from Day 1 — went deeper into the property-level report set (Weekly Labor Summary, Op Codes, Labor Effectiveness, Labor Productivity, Employee Schedule Analysis) than the "quick refresher" framing suggested. Session 2 delivered Above-Property Reporting in full (the module turned out to be the **Labor Dashboard** under Analytics, not "EXECUScope") and went deep on Labor Budgeting's data-set structure and the banquet-budgeting mechanics — though hands-on budget building was explicitly deferred to 2027 prep, not built live. Report automation (Task Scheduler) and a live user-creation example (Kyle Borowiec) were added, unplanned. **Security Primer (the curriculum section covering User Administration, née User Security) was deliberately de-prioritized, not missed** — already covered at the property level, and Devon's stated priority was above-property reporting instead, so that's where Day 3's time went. Pete separately flagged the Security Primer curriculum content itself as dated and probably not reflecting current screens/choices — a future rebuild, not urgent. **Weekly Labor Meeting facilitation (train-the-trainer) was not reached** — but the underlying guide already exists and was distributed to everyone as an attachment to the original training invite, so the gap is a live walkthrough session with Devon/Nicole, not missing content.

*(Draft — adjust freely; this is a starting shape to react to, not a locked plan.)*

---

## Pete's Working Notes (captured in-flight, 7/16/2026)

### Framework
- Use Unifocus system admin guide TOC as the structural backbone

### Emphasis Areas

**1. Above-Property Reporting**
- Priority topic; Devon and Nicole need to understand portfolio-level visibility
- Distinct from property-level reporting — this is the HMAlpha corporate view

**2. Master KBI and Jobs Mapping**
- Core admin skill — ability to add/adjust KBIs and map job codes
- **KBI Mapping specifically is part of the KBIs + Forecast Structure discussion** (correction, 7/13) — not a standalone topic. Ties directly to the property guide's "Forecast Structure — Review KBIs, Modify Calculated KBIs" and the handbook's KBIs section. Jobs mapping is the separate half of this emphasis area (Labor Structure territory).
- "Teach her how to fish" — she's ready to learn configuration, not just consume it

**2b. Interface Level Mapping** *(distinct topic — added 7/13)*
- This is what Pete and Nicole actually worked on together during NOLA training (correction — not KBI/forecast mapping as originally noted above)
- Different from Master KBI and Jobs Mapping; should be its own explicit topic on the corporate agenda, not folded silently into #2
- ⚠️ Needs definition: exact handbook section/module still unconfirmed

**3. Train the Trainer — How to Conduct a Weekly Labor Meeting**
- ⚠️ Open question: Was this on the Nashville or NOLA property training agenda? (Pete believes it wasn't covered, or wasn't listed, or ran out of time)
- Either way: Devon and Nicole need to know how to SET EXPECTATIONS for a property labor meeting
- This is a gap — corporate admins can't support properties on something they haven't been trained on themselves
- Topic should be explicit on the corporate agenda regardless of prior property coverage
- **Correction (7/16, end of trip):** the *content* gap doesn't actually exist — Pete already has a complete guide for running a weekly labor meeting, written for whoever runs them, and it was distributed as an attachment to the original training invite (sent to every attendee, property-level included). The real remaining gap is a live train-the-trainer session where Devon/Nicole work through it with Pete so they're equipped to coach properties — that didn't happen this trip due to time.

### Other Thoughts (forthcoming)
- [ ] Add as recalled

---

## Property-Level Facilitator Guide — TOC (reference, "Unifocus - Admin Training Guide.pdf")

Used as the property-level baseline (Union Station / NOLA). Corporate agenda should build on this, not repeat it 1:1 — go deeper on admin-level configuration and add the above-property topics that don't exist here at all.

| Topic | Facilitator Key Points |
|---|---|
| Weekly Timeline | Finalize timeline, task ownership, Task Scheduler, Labor/Scheduler screen |
| Planning Menu | Rooms/Banquet forecast, Rev Center forecast, F&B/Rev Center forecast, project hours, generate/manage/publish schedules |
| Labor Structure | Add/edit jobs, productivity setup, labor dashboard visibility, sort order, min hours/days off |
| T&A | Mapping jobs, TK and reconcile codes |
| Mobile Configuration | Mobile app setup |
| Employee User Maps | Map mobile users to employees |
| User Administration | Security credentials, add/clone users, tabs (Groups-Actions-Data-Labor Structure) |
| Employee Maintenance | Reconcile employee errors, add contract labor, bulk mobile invitations |
| Employee Request | Time off requests, approvals |
| Forecast Structure | Review/modify KBIs (calculated) |
| Actuals | Enter actual KBIs, generate standard hours, actual hours (contract labor) |
| Labor Standards | Build + audit labor standards |
| Reports/Dashboard | Labor Effectiveness, Weekly Labor Summary, file types, schedule reports, labor dashboard |

## Open Questions
- ~~Was weekly labor meeting facilitation on the Union Station or NOLA training agenda?~~ **RESOLVED:** Confirmed absent from the property-level TOC above — it's not a duplicate topic, it's a real gap. Include it explicitly on the corporate agenda.
- What sections of the TOC are most relevant for corporate-level depth vs. a quick pass? (Master KBI/Jobs Mapping → Forecast Structure + Labor Structure rows above; Above-Property Reporting has no property-level equivalent at all, so it's corporate-only content.)

---

## Full System Admin Handbook — TOC (reference, 172 pages)

Broader than the property-level facilitator guide — includes configuration-layer sections (Market Groups/Segments, Revenue Centers, Environments, Flow Patterns) and corporate-adjacent sections (Labor Budgeting, Security Primer/EXECUScope) that the property guide doesn't touch at all.

| Section | Key Sub-Topics |
|---|---|
| Market Groups & Market Segments | Creating market groups & segments |
| Revenue Centers | Creating, configuring/editing |
| KBIs | Creating KBIs, calculated KBIs, statistical KBIs, % of base, environmental KBIs, KBI sets |
| Environments & Global Environments | Creating/editing environments and global environments |
| Flow Patterns & Flow Plans | Creating flow patterns, creating flow plans |
| Labor Structure | Divisions/departments/jobs/assignments — create, configure, move, copy, prioritize |
| Labor Standards | Creating standards (planner settings, shifts, staffing, task standard, spread tabs), standard sets, locking |
| Planning | Setting up planning menu, pre-work, forecast KBIs, rooms/rev center forecast, projected hours, schedules, exports |
| Revenue Center Forecasts | Editing, environments, planning period/rev center selectors, legend |
| Work Rules | Creating, applying at property level, applying to employee sets |
| Employee Maintenance | Creating records (General/Status/Jobs/Scheduling/Schedule Groups/Assignments/Work Rules tabs) |
| Employee Requests | Adding/editing time off, importing requests |
| Schedules | Generating, viewing, filtering, sorting, columns, copying, restoring, shifts (add/copy/cut/paste/delete/edit), open shifts, swaps, printing |
| Timeline Scheduling | Adding/editing/moving/deleting shifts, notes, work content/flow view, stats view, gear menu |
| **Labor Budgeting** | Financial periods, user-defined datasets, budget tree, hours/rate adjustments, budget utilities (copy/export/import/clear/rebuild), KBI re-projections, budgeting dashboard |
| **Security Primer** | User creation, Properties/Groups/Actions/Data/Labor Structure tabs — Actions tab breaks down into Global/System Setup (Primary + Secondary), Reports, Employee Maintenance, Labor Forecasting, Labor Reports, Scheduler, Adhoc Reports |
| **EXECUScope Tab** | *(listed with no sub-bullets in TOC — likely the above-property/executive reporting layer; worth confirming directly)* |
| Glossary | — |

### Connections to Emphasis Areas
- **Above-Property Reporting (#1):** No property-level equivalent anywhere in either TOC. ~~**EXECUScope Tab** is the strongest candidate~~ — **resolved 7/16: "EXECUScope Tab" was not the right name.** The actual above-property reporting module, taught in full on Day 3, is the **Labor Dashboard** under the **Analytics** menu (not a "tab" at all, and not named EXECUScope anywhere Pete or Devon/Nicole could find). Handbook TOC may simply be using outdated/internal terminology here — worth flagging back to Unifocus if it matters for future cohorts' prep materials.
- **Master KBI and Jobs Mapping (#2):** Full handbook's **KBIs** section (calculated/statistical/% of base/environmental/sets) and **Labor Structure** section (divisions/departments/jobs/assignments) are the deep-dive material — much richer than the property guide's single-line treatment.
- **Weekly Labor Meeting (#3):** Still absent from either handbook TOC — correct that it's not pulled from Unifocus reference material, but **Pete has his own complete guide for it already**, distributed as an attachment to the original training invite. Not something to build; something to walk Devon/Nicole through live.
- **New candidate topic:** Labor Budgeting is a full section with no property-level counterpart — **resolved 7/16, conditionally in scope:** data-set structure and the banquet-budgeting problem taught conceptually; hands-on budget building deferred to 2027 prep.
- **Security Primer** is a much deeper version of the property guide's "User Administration" — relevant if Devon/Nicole need to manage security/permissions across multiple properties, not just one. **Resolved 7/16: deliberately de-prioritized this trip**, not pursued further, since it was already covered at the property level and Devon prioritized above-property reporting instead. **Note: Security Primer is the curriculum section name that covers the User Administration topic (formerly called User Security) — not a separate/renamed thing.** Pete flagged the curriculum content itself as dated, likely not reflecting current screens/choices — a future rebuild candidate, someday not now.
