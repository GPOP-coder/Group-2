<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# HMAlpha Corporate Admin Training — Agenda Notes
**Context:** System administration training for Devon Peters and Nicole Mendez
**Reference:** Unifocus system admin guide (TOC as framework)
**Trip:** Nashville, July 13–16, 2026
**Attendee materials:** Devon and Nicole already have the full 172-page System Admin Handbook PDF — no need to re-teach it page by page, reference sections by name and go deeper live.

---

## DAY 1 COMPLETE — Tuesday, 7/14/26

**Actual session structure:** two ~2-hour sessions (not one continuous 4-hour block as originally drafted).

**Actual vs. planned:** Day 1 was drafted as "Configuration Foundations + Master KBI/Jobs Mapping + Interface Level Mapping" (Market Groups, Revenue Centers, Environments, Flow Patterns, KBIs, Labor Structure). What actually happened: Environments and Flow Patterns were addressed but as quick **decisions not to use them yet**, not full configuration teaching. Market Groups and Revenue Centers were not covered in Session 1 or 2 — carry forward if still needed. Actual depth went instead into: forecasting method status, the EMS/interface landscape (a major, unplanned but valuable detour), and a full Labor Structure deep dive including the job-naming action item and TK/Reconcile code mechanics. Reassess whether Market Groups/Revenue Centers still need dedicated time on Day 2 or 3, or whether they're low-priority enough to skip given the time already spent.

## DAY 1 SESSION NOTES (live, from transcript — 7/14)

### Forecasting Method — Current State
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
- [ ] Above-Property Reporting — confirm EXECUScope Tab is the right module, then build the session
- [ ] Master KBI and Jobs Mapping — deep dive using KBIs section + Labor Structure section as backbone
- [ ] Interface Level Mapping — distinct from KBI/Jobs mapping; what Pete and Nicole worked on in NOLA. **Defined 7/13:** tracking each source-system feed into Unifocus (source, frequency, source quirks, UF mapping location) — see companion doc `interface-mapping-tracker.md`, being built live during training
- [ ] Weekly Labor Meeting (train-the-trainer) — build from scratch, no reference material to lean on

### Topics to place — must be on the agenda somewhere
*(Pete: "If these things are not included, we will have to find a place for them.")*
- [x] **Task Scheduler** (incl. Automatic Messaging) — placed Day 2, paired with Planning/Weekly Timeline. See FULL TOC DISTRIBUTION and DRAFT SESSION OUTLINE below.
- [x] **Weekly Timeline** — placed Day 2, paired with Planning. See FULL TOC DISTRIBUTION and DRAFT SESSION OUTLINE below.
- [x] **Property Level Reports** — placed Day 3, as a quick property-level refresher immediately before EXECUScope/Above-Property Reporting (sets up the property-vs-corporate contrast). See below.

---

### Decisions still needed
- [ ] Confirm EXECUScope Tab = above-property reporting module (or find the right one)
- [x] Identify which handbook section/module covers Interface Level Mapping — **resolved:** it's not a handbook section at all, it's source-system integration mapping (Paychex, etc.) — tracked in `interface-mapping-tracker.md`
- [ ] Decide whether Labor Budgeting is in scope — flag to Devon/Nicole, don't assume
- [ ] Decide how deep to go on Security Primer (multi-property permissions) vs. property-level User Administration

### Logistics
- [x] Sessions: Tue 7/14, Wed 7/15, Thu 7/16 — planned as three 4-hour sessions, 9:00 AM–1:00 PM each day. **Actual (Day 1, 7/14):** ran as two ~2-hour sessions rather than one continuous 4-hour block — confirm if Day 2/3 follow the same split-session pattern.
- [ ] Location: HMAlpha Corporate Offices, Nashville

---

## FULL TOC DISTRIBUTION — every handbook section mapped to a day

Every top-level section from the 172-page handbook, assigned to one of the three days. "Property coverage" = whether Devon/Nicole already saw this at Union Station/NOLA — where marked Covered or Partial, treat as a fast pass: ask if they have questions, then move on rather than re-teaching from zero.

| # | Handbook Section | Day | Property Coverage |
|---|---|---|---|
| 1 | Market Groups & Market Segments | Day 1 | ❌ Not covered — new foundational topic |
| 2 | Revenue Centers | Day 1 | ❌ Not covered — new foundational topic |
| 3 | Environments & Global Environments | Day 1 | ❌ Not covered — new foundational topic |
| 4 | Flow Patterns & Flow Plans | Day 1 | ❌ Not covered — new foundational topic |
| 5 | KBIs (incl. KBI Mapping) | Day 1 | 🟡 Partial — property guide's "Forecast Structure" covered review/modify calculated KBIs only; KBI Mapping is discussed here, not under Labor Structure. Statistical, % of base, environmental, and KBI sets are new depth |
| 6 | Labor Structure (incl. Jobs Mapping) | Day 1 | 🟡 Partial — property guide covered add/edit jobs, productivity, dashboard, sort order, min hours/days off; moving/copying/prioritizing jobs & assignments is new. Jobs Mapping lives here, separate from KBI Mapping above |
| — | *Interface Level Mapping* | Day 1 | ✅ Defined 7/13 — tracks each source-system feed into Unifocus (source, frequency, source quirks, UF mapping location). Not a handbook section; see companion doc `interface-mapping-tracker.md` |
| 7 | Planning | Day 2 | 🟡 Partial — property guide's "Planning Menu" + "Weekly Timeline" covered rooms/banquet/rev center forecast, project hours, generate/manage/publish schedules |
| — | *Weekly Timeline* | Day 2 | 🟡 Partial — property guide covered finalize timeline, task ownership, Labor/Scheduler screen; confirm Devon/Nicole have this down, or give it dedicated time here |
| — | *Task Scheduler (incl. Automatic Messaging)* | Day 2 | 🟡 Partial — sub-topic of Weekly Timeline in property guide; confirm whether that treatment was sufficient or corporate needs deeper pass. Automatic Messaging (message triggered when an automated task runs) taught here, not as its own topic |
| 8 | Revenue Center Forecasts | Day 2 | 🟡 Partial — rev center forecast generation covered under Planning Menu; this section's depth (legend, planning period/rev center selectors, editing forecasting) is new |
| 9 | Work Rules | Day 2 | ❌ Not covered — no mention in property guide at all |
| 10 | Employee Maintenance | Day 2 | 🟡 Partial — property guide covered reconcile employee errors, add contract labor, bulk mobile invitations; full record creation across General/Status/Jobs/Scheduling/Schedule Groups/Assignments/Work Rules tabs is new |
| 11 | Employee Requests | Day 2 | ✅ Covered — property guide's "Employee Request" (create/approve time off) matches directly; quick check only |
| 12 | Schedules | Day 2 | 🟡 Partial — schedule generation/management covered under Planning Menu/Weekly Timeline; detailed shift editing, copying, swapping, printing is new |
| 13 | Timeline Scheduling | Day 2 | ❌ Not covered — not named anywhere in property guide |
| 14 | Labor Budgeting | Day 3 | ❌ Not covered — conditional: confirm in scope with Devon/Nicole before building |
| 15 | Security Primer | Day 3 | 🟡 Partial — property guide's "User Administration" covered security credentials, add/clone users, tabs overview; Actions tab breakdown (Global/System Setup, Reports, Labor Forecasting/Reports, Scheduler, Adhoc) is new depth |
| — | *Property Level Reports* | Day 3 | ✅ Covered — property guide's "Reports/Dashboard" (Labor Effectiveness, Weekly Labor Summary, file types, schedule reports, labor dashboard); quick refresher here, immediately before EXECUScope, to set up the property-vs-corporate contrast |
| 16 | EXECUScope Tab | Day 3 | ❌ Not covered — emphasis area #1, no property-level equivalent; confirm this is actually the above-property reporting module first |
| — | *Weekly Labor Meeting (train-the-trainer)* | Day 3 | ❌ Not covered — custom topic, no handbook equivalent at all |

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
- **Above-Property Reporting (#1):** No property-level equivalent anywhere in either TOC. **EXECUScope Tab** is the strongest candidate for what this actually is in the system — name suggests executive/portfolio-level scope. Confirm this is the right module before building the session.
- **Master KBI and Jobs Mapping (#2):** Full handbook's **KBIs** section (calculated/statistical/% of base/environmental/sets) and **Labor Structure** section (divisions/departments/jobs/assignments) are the deep-dive material — much richer than the property guide's single-line treatment.
- **Weekly Labor Meeting (#3):** Still absent from this TOC too — confirms it's genuinely custom content Pete has to build, not something pulled from either reference document.
- **New candidate topic:** Labor Budgeting is a full section with no property-level counterpart — flag to Devon/Nicole as an option, don't assume it's in scope by default.
- **Security Primer** is a much deeper version of the property guide's "User Administration" — relevant if Devon/Nicole need to manage security/permissions across multiple properties, not just one.
