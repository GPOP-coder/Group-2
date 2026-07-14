<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# HMAlpha Corporate Admin Training — Agenda Notes
**Context:** System administration training for Devon Peters and Nicole Mendez
**Reference:** Unifocus system admin guide (TOC as framework)
**Trip:** Nashville, July 13–16, 2026
**Attendee materials:** Devon and Nicole already have the full 172-page System Admin Handbook PDF — no need to re-teach it page by page, reference sections by name and go deeper live.

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
- [x] Sessions: Tue 7/14, Wed 7/15, Thu 7/16 — three 4-hour sessions, 9:00 AM–1:00 PM each day
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
