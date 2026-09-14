<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Union Station Nashville Yards — F&B Labor Standards

**Property:** Union Station Nashville Yards (Autograph Collection, Marriott)
**Configurer:** Taylor Walton (Unifocus)
**Source sessions:** Onsite F&B Director meeting June 25, 2026; remote follow-up June 2026
**Status:** Full standards review completed 7/31/26 (remote call, Brad Stewart) — see open items below for what's left

**✅ RESOLVED 7/31/26** — Stationairy configuration (Busperson, Host/Hostess, Server, Supervisor, Bartender) fully reviewed and closed out on the 7/31/26 call below. Break-rule threshold confirmed and kept at 5.5 hrs (HR policy, more conservative than the 6-hr TN legal minimum).
- Brad Stewart (Director of Food and Beverage): Brad.Stewart@theunionstationnashvilleyards.com
- Trey Jensen (Assistant Director of Outlets): Trey.Jensen@theunionstationnashvilleyards.com

**🔴 Open items after the 7/31/26 call (see full call notes below for context):**
- **Lunch Buffet culinary mapping — high priority.** Currently generates zero culinary labor despite being one of the most common event types sold. Blocked on Nicole finishing KBI mapping + validating + importing historical data (in that order) before Pete can build the standard.
- **Lunch Buffet Server Standard — ownership assigned to Taylor Walton (Pete, 7/31/26).** Pete will talk to Taylor about configuring this — it's Taylor's fix to make, not Pete's or Nicole's. (Distinct from the culinary/kitchen gap above; the banquet-server ratios already documented in this file show 1-per-30 for lunch buffet, so confirm with Taylor what specifically still needs fixing before assuming it's unbuilt.)
- **Employee Maintenance freeze bug** — Trey hit a hard freeze scheduling outside set parameters; needs escalation to Kristi/system admin as a ticket, and Trey still needs to finish Employee Maintenance for the full roster once resolved.
- **"Sub Only" flags + availability tab** — Brad's open homework to finish across the full roster (stops erroneous banquet auto-scheduling).
- **House Person / "buyout" labor** — no KBI exists to represent buyout events at all; deliberately deferred until real banquet history accumulates. Two candidate approaches on file (productivity-ratio vs. judgment-based), not yet decided.
- **Wedding-reception BEO structure** — Union Station may book weddings as two separate BEO lines (dinner + cocktail reception), meaning the "Reception – Wedding" KBI may rarely populate; worth Nicole/Taylor revisiting.
- **Tennessee break-rule friction point will recur at Grand Hyatt** (same portfolio) — Nicole flagged to expect the same 6-hr-legal vs. 5.5-hr-HR-policy question there.
- **⚠️ Deeper break-logic concern raised by Pete (7/31/26), explicitly parked for later exploration, not resolved:** the 5.5-hr configured threshold produces a 6.0-hour *scheduled* shift with the 30-min break baked in (5.5 worked + 0.5 break = 6.0 elapsed) — but Pete flagged that **how the software actually decides to insert that break may not correctly distinguish two different real-world rules**: (1) "if you are on property for 6 hours total, you get a break" (a threshold you reach/meet) vs. (2) "the break only kicks in if you work OVER 6 hours" (an exceedance rule — exactly 6.0 hours would NOT require one). Pete's read: "something strikes me as odd... it matters." This is a genuine ambiguity in how Unifocus's break-deduction logic is modeled, not just a policy-number question — needs real exploration before trusting the software's automatic behavior at the boundary case. Do not resolve this quietly; revisit as its own topic.
  - **Supporting detail found in a second transcript source (Read.ai, first-hour capture, confirms the live .vtt with no conflicts):** Nicole read the actual system parameter language live on the call: *"The way that the parameter reads, it says employee must work 360 minutes, which is six hours, before a meal. So it's not very clear, but it sounds like it's six hours and then you get 30 minutes."* This is the root of the ambiguity in Pete's own words — the parameter's wording itself doesn't cleanly say "at" vs. "over" 6 hours, which is exactly the boundary-case question Pete flagged as needing real exploration.

**Call held 7/31/26, 3:00–5:16 PM CT (Brad Stewart + Pete; Nicole Mendez and Trey Jensen joined partway).** Full .vtt transcript obtained 7/31/26 (supersedes the earlier partial-copy/paste version of these notes). ~2h13m working session — a full line-by-line labor-standards review, not just a wrap-up call. Summary below, organized by topic.

### Scheduling & payroll pain points (opening discussion)
- **Job-coding confusion at the clock:** staff have a hard time clocking into the correct job code — the terminal only shows numeric codes, no job names, so staff (and payroll, when reconciling) rely on a cheat sheet. Property posted a cheat sheet at the clocks **the week of 7/27/26**, on their own initiative, before Pete suggested it.
- **Correction cadence:** miscoded punches get fixed before payroll closes (2-week cycle), but not daily — Brad's small team means the person who handles this isn't there every day. Pete's advice: fix same-day/next-day rather than let it ride to the end of the pay period, but acknowledged "easier said than done" for a small team.
- **Auto-scheduler underused for banquets specifically:** too many people can work banquets, and the scheduler can't tell who's actually assigned to a specific banquet vs. an outlet, so it over-populates banquet shifts and starves outlet shifts. Brad's current workaround: **manually clears the auto-scheduler output and rebuilds using his own budget-dollar spreadsheet** (mirrors what Unifocus does internally, but Brad built it independently before this engagement). Pete's fix going forward: mark banquet-eligible-but-not-primary staff as **"Sub Only"** on the Jobs tab so the auto-scheduler stops placing them in banquets by default, freeing up outlet coverage. Demonstrated live on two staff: Patty Adaviar (multi-job: server/bartender/food-runner/banquet — the "utility knife") and Jackson Bradshaw (bartender, confirmed correctly excluded from banquet auto-scheduling already).
- **Employee Maintenance status:** Trey attempted it for everyone early on but hit repeated technical freezing when scheduling someone outside their normal parameters (not a graceful warning-then-clear as designed — a hard freeze). **This is a real bug, not user error** — flagged to escalate to Kristi/property system admin as a ticket, and to check whether other properties are seeing the same freeze.
- **Principle reiterated for future Employee Maintenance work:** every employee should have *something* entered every day (even fully-open availability) so the auto-scheduler has something to reason about; anyone whose secondary job is banquets needs Sub Only marked on all non-primary jobs to stop erroneous banquet auto-scheduling.

### Stationairy — Supervisor
Confirmed correct, no changes: 10 shifts/week total (aggregate, not daily quota), morning coverage weighted to Fri/Sat/Sun, otherwise one supervisor per night.

### Stationairy — Server
Confirmed correct, no changes:
- **AM:** one server no matter what at 6:00 AM (opener). Using combined Stationairy AM covers (breakfast + lunch): 25 covers triggers a 2nd (6-hr) server, 50 triggers a 3rd — capped at 3, never more.
- **PM:** all servers start at 4:15 PM (no split shift), 6-hr shifts, one per 25 dinner covers, capped at 3.

### Stationairy — Host/Hostess
**Live change made:** PM standard changed from a 25-cover volume breakpoint to **1, no matter what** — Brad confirmed a host is always needed at dinner regardless of volume, and there's never a 2nd PM host (a slow night lets the manager cover, since answering in-room-dining calls is already the same person's job).
- **AM logic clarified (no change needed):** AM host is no-matter-what Fri/Sat/Sun because the downstairs bar is open those mornings and the host can't be in two places — weekdays, the downstairs bar is closed so no float coverage is needed, and a manager/supervisor can watch the host stand if truly slow. Weekday AM host only adds in if AM covers ≥ 20.

### Stationairy — Busser/Runner (coded as "Bus Person" — no dedicated runner code exists in payroll)
Uses "TTL Outlet AM Covers" (Stationairy + IRD breakfast/lunch + Bar Car, all outlets, whole day) as its driver, distinct from the Stationairy-only KBIs used elsewhere. Confirmed structure, no changes:
- One runner every day no matter what at 6:00 AM
- Noon: another runner no matter what (this one is coded "busser" specifically — same bus-person job code, but functionally a different role)
- 10:00 AM shift, Saturday/Sunday only, triggered only above ~150 combined AM covers ("a really busy morning") — a true busser (not runner) role
- 4:30 PM runner no matter what; runs longer on Fri/Sat (later close)
- **Net effect:** this pass simplified/reduced a few shifts slightly — described as a modest net reduction in hours, not a big swing.

### Stationairy — Bartender
This job took the longest because there's **no beverage-revenue KBI mapped for Stationairy** (other bars at the property have one; this one doesn't). Rather than build that mapping today (flagged as real but deferred work — "this would be some more work to do... probably not while we're talking"), Pete simplified the standard using logic Brad could defend without a revenue trigger:
- **Monday–Thursday AM:** no bartender at all — confirmed this basically never happens; if it ever did, it's a one-off explainable variance, not worth building a standard for.
- **Fixed a broken shift-length/break-rule interaction:** the Mon–Thu AM shift was configured 8:00–3:00 (a 7-hr clock shift landing right at the ambiguous break threshold). Corrected to **8:00 AM–2:30 PM** (6 hrs clock, 5.5 hrs worked after the break) — resolves the ambiguity cleanly.
- **⚠️ Tennessee break-rule finding, important and recurring:** by actual Tennessee law, the mandatory 30-min unpaid break triggers only if a shift exceeds 6 consecutive hours (i.e., "at 6," not "over 6"). **Union Station's own HR policy is more conservative — 5.5 hours** — intentionally set that way, per Brad, "to keep idiots like us from over-scheduling ourselves into trouble." **Decision: keep the existing 5.5-hr HR threshold as configured, do not loosen it to match the bare legal minimum.** Pete flagged this is the same friction point he and Taylor Walton went round and round on previously, and that it will come up again **when this same question hits the Grand Hyatt property** (same portfolio) — Nicole was told directly to expect it.
- **Friday/Saturday:** longer 7-hr shift (8:00 AM–3:30 PM with break baked in), one no matter what, plus a 2nd bartender if beverage volume crosses a **hypothetical $400 threshold** (no real KBI exists to test this against yet — noted as directional, not a real configured trigger).
- **Sunday:** shorter shift (9:00 AM–3:30 PM) since the bar can't serve alcohol before 10:00 AM Sunday — no busy-tier 2nd bartender scenario on Sunday; Brad confirmed that never happens.
- **PM (dinner):** bartender count is fixed at **one, never two**, regardless of volume — since there's no volume tier here either, **no beverage-revenue KBI is actually needed for Stationairy at all**. This closes out the earlier open question.
- **"Stationairy is done."** (Pete's words, closing this section — this fully resolves the prior "Stationairy configuration incomplete" open item at the top of this file.)

### Bar Car — Bartender & Bus Person
Reviewed quickly, both **already correct from a prior session, no changes needed** — matches the existing documented config below in this file (weekday 11 AM open, Fri/Sat noon open with $500 busy-tier add, Sunday's overlapping-shift busy logic). Bus/barback: one at 5 PM Sun–Thu if busy, same shift structure but runs later Fri/Sat. "Perfect," per Pete.

### Kitchen — Line Cook / Prep
- Property doesn't use the "Prep Cook" job code — everything runs under Line Cook.
- Job "assignments" (cafe, cold, egg, grill, etc.) are scheduling labels only — confirmed each carries **zero additional standalone labor** on its own; only the banquet assignment adds incremental labor (handled separately, see below).
- **AM:** one cook no matter what at 5:00 AM (opener), scaling up to as many as 5 additional cooks by ~6:00 AM based on roughly 1-per-20/25 covers — hard capped around 6 total cooks (physical kitchen space limit, "they'd be in the way").
- **Cafe (employee dining room):** one no matter what at 7:00 AM.
- **PM/dinner:** confirmed working as configured (a deliberately non-"clean" breakpoint sequence that functions correctly, left as-is rather than cosmetically simplified) — roughly one additional cook per 25 outlet covers.
- **Confirmed: none of the outlet-driven kitchen cook standards currently account for banquets at all** — that's entirely separate (below).

### Banquet Culinary Labor (drop-based, per-cover minutes — not shift-based)
Structurally different from outlet standards: adds a small amount of time (~1.2 minutes) per banquet cover, proportionally ("the more you do, the less it takes per cover" — deliberately imprecise/"squishy," expected to show real variance on big single events like a Saturday wedding).
- **Hot side — currently mapped:** Breakfast Buffet, Lunch Plated, all Dinners.
- **Hot side — NOT mapped, and why:**
  - *Breakfast Plated* — property has genuinely never sold one in Brad's ~1.5 years there. Non-issue, deliberately left out.
  - **🔴 Lunch Buffet — real, high-priority gap.** Brad: "I probably do more lunch buffets than anything else," yet it currently generates **zero culinary labor**. This is the item Brad flagged at the end of the call as important ("glad we found the lunch buffet — that one's going to be huge"). **Cannot be fixed today** — needs Nicole to finish KBI mapping + validate + import history first (see process note below), then Pete can build the actual standard against real volume.
- **Cold side — currently mapped:** Breakfast Continental, Box Lunches, proportional amount for all Dinners.
- **Cold side — NOT mapped:** hors d'oeuvres/cocktail-reception prep and coffee-break catering. Brad confirmed both genuinely happen (heavy receptions get real cooking — "Briggs" catering was the example), but per-event volume is small, and **breaks/receptions almost always piggyback on an already-covered meal period** (~98% of the time per Pete's estimate, Brad agreed) — judged low priority, not worth building now.
- **Process discipline flagged to Nicole (important, general principle):** always **map → validate → import history**, strictly in that order. Importing historical data before every mapping exists means missing categories "fall through the cracks" silently — nobody notices data is missing until weeks later when events keep happening with zero labor credit. Nicole had already submitted historical data for upload; reminded to finish mapping everything first before that import lands.
- **⚠️ Wedding-reception BEO structure — flagged as a real gap, not resolved today:** Union Station typically books a wedding reception as **two separate BEO lines** (a plated-dinner line + a separate cocktail-reception line), meaning the "Reception – Wedding" KBI category may rarely if ever actually get populated with real volume in CI. Worth Nicole/Taylor revisiting how CI books these before assuming the wedding-specific category is meaningful.
- **✅ Live fix applied — Reception culinary mapping bug:** the culinary "Reception" standard was pulling only from the narrow **"Reception – Wedding"** KBI, silently excluding Light and Heavy reception volume entirely. **Corrected live to pull from "Banquet Total Reception"** (which properly sums light + heavy + wedding) — so all reception types now generate stewarding/culinary labor, not just weddings.

### Stewarding
Confirmed correct, no changes: 7:30 AM start (8-hr shift), one no matter what, second added once total AM meal covers exceed 50 — this total includes banquet breakfast + banquet lunch + all outlet AM coverage (Pete's caution: banquet-breakfast cover counts can run artificially high on paper; worth being aware of, not necessarily a problem).

### Banquet Front-of-House — Captain
Two live fixes applied:
1. **AM driver changed** from "Banquet Total Breakfast" to **"Banquet Total AM Covers"** (breakfast + lunch combined) — old config gave zero credit for a standalone lunch group, and would have (in theory) double-counted a combined breakfast+lunch group as needing 2 captains. Now correctly triggers once per AM event regardless of whether it's breakfast, lunch, or both.
2. **New KBI built live for PM:** "**Banquet Total PM**" = Dinner + Reception (previously only dinner triggered a captain, so a stand-alone reception got nothing). Standard: 1 captain no matter what per dinner-or-reception event (not additive if both), +1 more if PM covers exceed 75.

### Banquet Servers
Ratios confirmed correct as configured (Brad caught and corrected Pete's initial number mix-up live):
- Breakfast: 1-per-25 plated, 1-per-35 buffet
- Lunch: 1-per-25 plated, 1-per-30 buffet
- Dinner: 1-per-20 plated, 1-per-25 buffet
- Reception: 1-per-50
- **Box lunches added into the lunch-server bucket** (not broken out separately, since it's the same staff) — built a supplementary shift keyed at roughly one-per-100/one-per-75 box-lunch volume.
- **Standalone break service deliberately NOT built as its own standard** — Brad confirmed ~90–99% of breaks always ride along with a meal period; true standalone-break days are rare enough to treat as explainable variance rather than build for. Revisit only if the property ever needs a formal separate break crew (not currently the case — no union).
- **General principle restated for banquets overall:** these standards are not meant to drive live shift generation (Unifocus never sees the actual BEO) — they exist purely for **after-the-fact, month-over-month labor-vs-actual comparison**, never a week-to-week check, since banquet prep/setup routinely spans into the following week and single-week variance is normal and expected.

### House Person — hardest job, deliberately left unresolved
Function: mostly furniture-flipping for weddings (clear space for ceremony → move to cocktail area → flip room for dinner) and ad-hoc "buyouts" (any space in the hotel can be sold and may need furniture cleared with little notice — e.g., a breakfast buffet requiring the restaurant furniture moved mid-morning while regular guests are still coming and going).
- **Core structural problem: there is no "buyout" KBI at all** — Unifocus has no concept that represents this, so buyout-driven furniture labor is currently invisible to the system no matter which approach is chosen.
- Currently, house-person labor is only tied to **Wedding Reception** specifically (not Light/Heavy reception) — reflects that weddings are the main real driver, but doesn't solve the deeper buyout-visibility gap.
- **Two possible approaches discussed, deliberately not decided today** (explicitly told Brad not to change anything yet — there isn't enough historical data to test against):
  1. **Pure productivity method:** total budgeted house-person hours ÷ total banquet covers (breakfast+lunch+dinner+reception) for the year → a rough per-cover minute target (~6 minutes / 0.1 hrs per unit floated as a typical ballpark). Strictly an after-the-fact reporting comparison, never used for scheduling.
  2. **Judgment/observation method:** one house person is always on property; extra coverage for big events comes from human judgment (e.g., pre-staging a room the weekend before), not a formula — how "very well-run, big background operations" typically handle it.
- **Explicitly deferred to a later date** once real banquet history exists to test against. Pete's closing framing: the goal isn't a perfect model today — it's that Brad's team understands *why* the standard reads the way it does, so any labor-meeting variance is explainable ("we didn't build for that scenario, that's why we're over") rather than hand-waved as "we were slammed."

### Wrap-up
- Nicole had to drop early — asked Pete to email her directly with any mapping questions/action items (banquet mapping, reception-definition follow-up) rather than waiting for notes.
- **Pete's final assessment:** property standards are in reasonable shape overall; existing (generic, unrealistic 40-hrs-flat) placeholder standards were specifically for **Management**, which the property has deliberately chosen not to build real standards for at all — confirmed intentional, not an oversight.
- **Confirmed action items:** Trey to complete Employee Maintenance (pending the freeze-bug fix/escalation); Brad to finish "Sub Only" flags plus the availability tab on the Scheduling tab for the full roster.
- Session ran ~2h13m remote; Pete estimated it would've taken "another two hours" to fully finish in person, but both had to go. Offered to come back onsite in Nashville ("any excuse to get back down to Broadway") if more hands-on help is needed.

**Scheduling (resolved):** Call successfully held Friday 7/31/26, 3:00 PM CT as proposed, same day as the BTTR archives dig at Papio-Missouri River NRD and the 9:00 AM Anne Foster/NPS call (see `BTTR/records-preservation-project.md`) — the day's back-to-back logistics worked out fine.

---

## Alligator Bar

### Hours of Operation

| Day | Open | Close |
|---|---|---|
| Monday | 4:00 PM | 9:00 PM |
| Tuesday | 4:00 PM | 9:00 PM |
| Wednesday | 4:00 PM | 9:00 PM |
| Thursday | 11:00 AM | 9:00 PM |
| Friday | 11:00 AM | 10:00 PM |
| Saturday | 11:00 AM | 10:00 PM |
| Sunday | 11:00 AM | 7:00 PM |

### Bartender Shift Schedule

| Day | Shift | Start | End | Hours |
|---|---|---|---|---|
| **Monday** | 1 | 2:30 PM | 10:00 PM | 7.5 |
| **Tuesday** | 1 | 2:30 PM | 10:00 PM | 7.5 |
| **Wednesday** | 1 | 2:30 PM | 10:00 PM | 7.5 |
| **Thursday** | 1 | 8:30 AM | 4:00 PM | 7.5 |
| | 2 | 3:00 PM | 10:00 PM | 7.0 |
| **Friday** | 1 | 8:30 AM | 4:00 PM | 7.5 |
| | 2 | 11:00 AM | 6:00 PM | 7.0 |
| | 3 | 4:00 PM | 11:00 PM | 7.0 |
| | 4 | 4:00 PM | 11:00 PM | 7.0 |
| **Saturday** | 1 | 8:30 AM | 4:00 PM | 7.5 |
| | 2 | 11:00 AM | 6:00 PM | 7.0 |
| | 3 | 1:00 PM | 7:00 PM | 6.0 |
| | 4 | 4:00 PM | 11:00 PM | 7.0 |
| | 5 | 4:00 PM | 11:00 PM | 7.0 |
| **Sunday** | 1 | 8:30 AM | 4:00 PM | 7.5 |
| | 2 | 11:00 AM | 7:00 PM | 8.0 |
| | 3 | 3:00 PM | 8:30 PM | 5.5 |

### Daily Summary

| Day | Bartenders on Floor | Total Hours |
|---|---|---|
| Monday | 1 | 7.5 |
| Tuesday | 1 | 7.5 |
| Wednesday | 1 | 7.5 |
| Thursday | 2 | 14.5 |
| Friday | 4 | 28.5 |
| Saturday | 5 | 34.5 |
| Sunday | 3 | 21.0 |
| **Weekly Total** | | **121.0** |

### Notes
- Shift end times run past close — standard for bar close/cleanup (e.g., Mon–Wed bar closes 9 PM, shift ends 10 PM)
- **8:30 AM shift is prep/setup and bar open** — not a bar-hours shift; second bartender starts at opening time (11 AM Fri/Sat/Sun, 11 AM Thu)
- Thursday ramp-up reflects extended hours (11 AM open vs. 4 PM on Mon–Wed)
- Friday/Saturday are high-volume; 4 and 5 bartenders respectively with overlapping mid-shifts

### Background & Authorization

**Why these standards are different from the rest of the hotel:**
The Alligator Bar's preliminary standards were built when the outlet first opened, when the property was uncertain about operations and how the market would respond. As a result, these standards were exploratory — not tied to budget the way virtually all other labor standards in the hotel are.

**Known risk:** Budget non-alignment. Almost every other outlet at Union Station Nashville has standards built to budget. The Alligator Bar does not. This is a documented, accepted deviation — not an oversight.

**Authorization:** The DOF, GM, Devon Peters (HM Alpha, Strategy & Analytics), and Nicole Mendez (HM Alpha) were all present and participated in the standards discussion during the onsite session (June 25, 2026). Their participation constitutes implicit sign-off at both the property and corporate HM Alpha level. If anyone questions this configuration, the answer is: all four were in the room.

**Implication for BLSBD:** If HM Alpha's budget process later assigns labor budget to the Alligator Bar, a reconciliation against these standards will be needed at that time. For now, the standards reflect operational reality as described by the F&B Director, with DOF/GM awareness.

---

### Operational Rules for This Outlet

These rules apply to all A.B. Bartender standards at the Alligator Bar:

1. **Opening requires 2 bartenders** — the first shift of the day is always staffed by 2
2. **Closing requires 2 bartenders** — the last shift of each day is always doubled
3. **Break rule:** Shifts over the property's configured break threshold include a 30-minute unpaid break. The labor standard reflects **hours worked**, not clock time. Example at Union Station: threshold is 5 hours — a shift of 0830–1630 (8.5 hrs clock) has break deducted → **8.0 hours worked**. **Note: The break threshold is a property-level setting in Unifocus. Each property may have a different break point — always confirm before building standards.**

---

### Unifocus Configuration — A.B. Bartender (as of 6/29/26 pre-edit baseline)

**Job path:** 2. Food & Beverage / Alligator Bar / A.B. Bartender
**Standard Set:** Master

**Planner Settings:**

| Setting | Value |
|---|---|
| Period Length | 15 Minutes |
| Standards | KBI Related |
| Min / Max Shift Lengths | min: 4 hrs; max: 9 hrs |
| Rounding Threshold Below One | 0 |
| Rounding Threshold Above One | 0.2 |
| Limit Shift To Max Shift For Non-Flowed Work | No |
| Simple Non-Flowed Distribution Method | Beginning |
| Generate Long Shifts | Yes |

**Available Shifts (all active 7 days unless noted):**

| Shift Name | Clock Start | Clock End | Paid Hrs | Note |
|---|---|---|---|---|
| 0900-1830 | 09:00 | 18:30 | 9.0 | |
| 1200-1900 | 12:00 | 19:00 | 6.5 | |
| 0900-1800 | 09:00 | 18:00 | 8.5 | |
| 1300-2100 | 13:00 | 21:00 | 7.5 | |
| 1500-2200 | 15:00 | 22:00 | 6.5 | |
| 1600-2300 | 16:00 | 23:00 | 6.5 | |
| 1600-0000 | 16:00 | 00:00 | 7.5 | |
| 1430-2200 | 14:30 | 22:00 | 7.0 | |
| 0830-1600 | 08:30 | 16:00 | 7.0 | |
| 1100-1800 | 11:00 | 18:00 | 6.5 | NOT POSSIBLE Mon–Wed |
| 1300-1900 | 13:00 | 19:00 | 5.5 | |

*Note: Shift paid hours = clock duration minus 30-min unpaid break. "NOT POSSIBLE" days are blocked by the bar's hours of operation.*

**Shift-Related Standards (pre-edit baseline — this report is only page 1 of 2):**

| Shift | KBI | Method | Volume Range | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|---|
| 0900-1830 (9) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 1–∞ | 0 | 9 | 9 | 9 | 9 | 9 | 0 |
| 1200-1900 (6.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 301–∞ | 6.5 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1200-1900 (6.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 1–∞ | 6.5 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0900-1800 (8.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 1–∞ | 8.5 | 0 | 0 | 0 | 0 | 0 | 8.5 |
| 1300-2100 (7.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 301–∞ | 0 | 0 | 0 | 0 | 0 | 7.5 | 7.5 |
| 1300-2100 (7.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 1–∞ | 0 | 0 | 0 | 0 | 0 | 0 | 7.5 |
| 1500-2200 (6.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 301–∞ | 0 | 6.5 | 6.5 | 6.5 | 6.5 | 0 | 0 |
| 1500-2200 (6.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 1–∞ | 0 | 6.5 | 6.5 | 6.5 | 6.5 | 0 | 0 |
| 1600-2300 (6.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 1–∞ | 6.5 | 0 | 0 | 0 | 0 | 6.5 | 0 |
| 1600-2300 (6.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 1–∞ | 0 | 0 | 0 | 0 | 0 | 6.5 | 0 |
| 1600-0000 (7.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 1–∞ | 0 | 0 | 0 | 0 | 0 | 0 | 7.5 |
| 1600-0000 (7.5) | $ Bar Revenue | Non-Flowed / Beginning / Daily (Hrs) | 1–∞ | 0 | 0 | 0 | 0 | 0 | 0 | 7.5 |

*Page 2 of the report (not yet captured) contains remaining standards. To be added when available.*

### Configuration Edits Made 6/29/26

| Shift | Change | Reason |
|---|---|---|
| Thursday closing shift | 1500–2200 (6.5 hrs) × 1 → **× 2 (13 hrs)** | 2 closers required; only 1 opener needed (same as Mon–Wed pattern) |
| Sunday closing shift | 1500–2030 (5.0 hrs worked) → **1430–2030 (5.5 hrs worked)** | 1500–2030 = 5.5 hrs clock, which triggers the 30-min unpaid break rule (applies to shifts over 5 hrs), leaving only 5.0 hrs worked — one hour short of what the closing standard requires. Moving start to 1430 makes clock time 6.0 hrs; after 30-min break = **5.5 hrs worked**. This resolves the conflict between the needed hours and the break rule. |

### Final Configuration — A.B. Bartender (post-edit, 6/29/26 4:27 AM)

**Report:** Page 1 of 1 (prior config was 2 pages — new config is significantly simplified)

**Key changes from baseline:**
- All tiered volume thresholds (301–∞ rows) eliminated — single 1–∞ row per shift
- Mon–Wed corrected from 0900-1830 (9 hrs) to 1430-2200 (14 hrs = 2 bartenders × 7 hrs)
- New shifts added: 1100-1900 (7.5 hrs, Sunday mid) and 1430-2030 (5.5 hrs, Sunday close)
- Standards rebuilt to reflect actual hours of operation and shift doubles

**Final Shift-Related Standards:**

| Shift | KBI | Method | Volume Range | Sun | Mon | Tue | Wed | Thu | Fri | Sat | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1430-2200 (7.0) | $ Bar Revenue | Non-Flowed / Beginning | 1–∞ | 0 | **14** | **14** | **14** | 0 | 0 | 0 | Only shift Mon–Wed; doubled (opens + closes) |
| 0830-1600 (7.0) | $ Bar Revenue | Non-Flowed / Beginning | 1–∞ | 7 | 0 | 0 | 0 | 7 | 7 | 7 | Prep/open shift Thu–Sun (1 bartender) |
| 1500-2200 (6.5) | $ Bar Revenue | Non-Flowed / Beginning | 1–∞ | 0 | 0 | 0 | 0 | **13** | 0 | 0 | Thu closing doubled (2 × 6.5) |
| 1100-1800 (6.5) | $ Bar Revenue | Non-Flowed / Beginning | 1–∞ | 0 | 0 | 0 | 0 | 0 | 6.5 | 6.5 | Fri/Sat opening bartender (11 AM) |
| 1300-1900 (5.5) | $ Bar Revenue | Non-Flowed / Beginning | 1–∞ | 0 | 0 | 0 | 0 | 0 | 0 | **5.5** | Sat mid-shift (1 PM) |
| 1600-2300 (6.5) | $ Bar Revenue | Non-Flowed / Beginning | 1–∞ | 0 | 0 | 0 | 0 | 0 | **13** | **13** | Fri/Sat last shift doubled (2 × 6.5) |
| 1100-1900 (7.5) | $ Bar Revenue | Non-Flowed / Beginning | 1–∞ | **7.5** | 0 | 0 | 0 | 0 | 0 | 0 | Sun mid-shift (11 AM–7 PM) |
| 1430-2030 (5.5) | $ Bar Revenue | Non-Flowed / Beginning | 1–∞ | **11** | 0 | 0 | 0 | 0 | 0 | 0 | Sun last shift doubled (2 × 5.5) |

**Daily staffing summary (post-edit):**

| Day | Shifts Active | Bartenders | Total Hrs Worked |
|---|---|---|---|
| Monday | 1430-2200 ×2 | 2 | 14.0 |
| Tuesday | 1430-2200 ×2 | 2 | 14.0 |
| Wednesday | 1430-2200 ×2 | 2 | 14.0 |
| Thursday | 0830-1600 ×1, 1500-2200 ×2 | 3 | 20.0 |
| Friday | 0830-1600, 1100-1800, 1600-2300 ×2 | 4 | 26.5 |
| Saturday | 0830-1600, 1100-1800, 1300-1900, 1600-2300 ×2 | 5 | 32.0 |
| Sunday | 0830-1600, 1100-1900, 1430-2030 ×2 | 4 | 25.5 |
| **Weekly Total** | | | **146.0** |

---

### Revenue Mapping — COMPLETE ✅
Bar uses **revenue as labor driver** (no cover counts for bar outlet). KBI `Alligator Bar 03. $ Bar Revenue` is mapped in Unifocus Actual KBI Mapping:

| Destination Cell | Source Report | Source Line | Source Cell | Type | % |
|---|---|---|---|---|---|
| Adjustment | PSKBI-245-A | Beer Sales | 240604121700 | P | 100% |
| Adjustment | PSKBI-245-A | Wine Sales | 240604122100 | P | 100% |
| Adjustment | PSKBI-245-A | Liquor Sales | 240604121900 | P | 100% |

- Source: ProfitSword (PSKBI-245-A) — revenue broken out by Beer, Wine, and Liquor
- All three map at 100% to the Adjustment destination cell; Operation = equals (direct)
- This was remapped during post-training remote configuration to properly include all three beverage categories
- Closes the open item from June 25, 2026 weekly call (Taylor Walton owner)

---

## Bar Car

### Hours of Operation

| Day | Open | Close |
|---|---|---|
| Monday | 1:00 PM | 11:00 PM |
| Tuesday | 1:00 PM | 11:00 PM |
| Wednesday | 1:00 PM | 11:00 PM |
| Thursday | 1:00 PM | 11:00 PM |
| Friday | 2:00 PM | Midnight |
| Saturday | 2:00 PM | Midnight |
| Sunday | 4:00 PM | 11:00 PM |

### Operational Rules

- Shift end times extend past close for cleanup
- Shifts over 5 hours include 30-min unpaid break (property setting — verify before cloning to other properties)
- Revenue is the labor driver (bar outlet — no cover counts)
- **Tiered staffing:** Base standard always active; additional shift triggered by revenue threshold

### Bartender Shift Schedule

**Monday–Thursday:**

| Tier | Shift | Start | End | Hours Worked | Revenue Trigger |
|---|---|---|---|---|---|
| Always | 11:00 AM – 6:00 PM | 11:00 | 18:00 | 6.5 | 1–∞ |
| Always | 5:00 PM – Midnight | 17:00 | 00:00 | 6.5 | 1–∞ (base closer) |
| Busy | 4:00 PM – Midnight | 16:00 | 00:00 | 7.5 | **> $3,000** (adds 2nd closer) |

*The 11 AM shift is prep/setup — bar opens at 1 PM; bartender arrives 2 hours early.*

**Friday–Saturday:**

| Tier | Shift | Start | End | Hours Worked | Revenue Trigger |
|---|---|---|---|---|---|
| Always | Noon – 6:00 PM | 12:00 | 18:00 | 5.5 | 1–∞ |
| Always | 5:00 PM – 1:00 AM | 17:00 | 01:00 | 7.5 | 1–∞ (closer) |
| Busy | 3:00 PM – 9:00 PM | 15:00 | 21:00 | 5.5 | **> $2,500** (mid shift) |

**Sunday:**

| Tier | Shift | Start | End | Hours Worked | Revenue Trigger |
|---|---|---|---|---|---|
| Slow | 3:00 PM – Midnight | 15:00 | 00:00 | **8.5** | 1–$3,500 |
| Busy | 3:00 PM – 10:00 PM | 15:00 | 22:00 | 6.5 | **> $3,500** |
| Busy | 5:00 PM – Midnight | 17:00 | 00:00 | 6.5 | **> $3,500** |

*Sunday busy: the single 8.5-hour shift is replaced entirely by two shorter shifts — it is not additive.*
*Sunday slow: 1 bartender covers the full open-to-close window alone.*

**Planner Settings change — Bar Car Bartender only:**
Max shift length increased from **8.0 → 8.5 hours** to allow the Sunday 3 PM–Midnight shift (8.5 hrs worked). This is a job-level setting, not a property-wide change.

### Unifocus Configuration — Intended Standards

**Mon–Thu (Unifocus shift-related standards):**

| Shift | KBI | Volume Range | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|
| 1100-1800 (6.5) | $ Bar Revenue | 1–∞ | 0 | 6.5 | 6.5 | 6.5 | 6.5 | 0 | 0 |
| 1700-0000 (6.5) | $ Bar Revenue | 1–∞ | 0 | 6.5 | 6.5 | 6.5 | 6.5 | 0 | 0 |
| 1600-0000 (7.5) | $ Bar Revenue | 3001–∞ | 0 | 7.5 | 7.5 | 7.5 | 7.5 | 0 | 0 |

**Fri–Sat (Unifocus shift-related standards):**

| Shift | KBI | Volume Range | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|
| 1200-1800 (5.5) | $ Bar Revenue | 1–∞ | 0 | 0 | 0 | 0 | 0 | 5.5 | 5.5 |
| 1700-0100 (7.5) | $ Bar Revenue | 1–∞ | 0 | 0 | 0 | 0 | 0 | 7.5 | 7.5 |
| 1500-2100 (5.5) | $ Bar Revenue | 2501–∞ | 0 | 0 | 0 | 0 | 0 | 5.5 | 5.5 |

**Sunday (Unifocus shift-related standards):**

| Shift | KBI | Volume Range | Sun | Mon | Tue | Wed | Thu | Fri | Sat | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1500-0000 (8.5) | $ Bar Revenue | 1–3500 | **8.5** | 0 | 0 | 0 | 0 | 0 | 0 | Slow day — single shift, full coverage |
| 1500-2200 (6.5) | $ Bar Revenue | 3501–∞ | **6.5** | 0 | 0 | 0 | 0 | 0 | 0 | Busy — replaces single shift |
| 1700-0000 (6.5) | $ Bar Revenue | 3501–∞ | **6.5** | 0 | 0 | 0 | 0 | 0 | 0 | Busy — replaces single shift |

*The 1500-0000 (8.5) shift required increasing the Bar Car Bartender max shift length to 8.5 in Planner Settings.*
*KBI name confirmed: **"The Bar Car 03. $ Bar Revenue"** — use this exact name for all Bar Car bartender and busperson standards.*

### B.C. Busperson

**Job path:** 2. Food & Beverage / The Bar Car / B.C. Busperson

**Planner Settings:**

| Setting | Value |
|---|---|
| Period Length | 15 Minutes |
| Standards | KBI Related |
| Min / Max Shift Lengths | min: 4; max: 8 |
| Simple Non-Flowed Distribution Method | Beginning |
| Rounding Threshold Above One | 0.2 |
| Generate Long Shifts | Yes |

**Shift:**

| Shift Name | Clock Times | Hours Worked | Days Active |
|---|---|---|---|
| 1600-2300 (6.5) | 16:00 – 22:30 | 6.5 | All 7 days |

**Standard:**

| Shift | KBI | Method | Volume Range | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|---|
| 1600-2300 (6.5) | The Bar Car 03. $ Bar Revenue | Non-Flowed / Beginning | 1–∞ | 6.5 | 6.5 | 6.5 | 6.5 | 6.5 | 6.5 | 6.5 |

**Updated standard (6/29/26 5:32 AM) — seasonality removed, standard rebuilt:**

The old 1600-2300 Seasonal shift is retained in the shift list but zeroed out across all days. It has been replaced by two new shifts that define the new base standard:

| Shift | Window | Worked Hrs | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|
| 1600-2300 (6.5) Seasonal | 16:00–22:30 | 6.5 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1700-2200 (5) | 17:00–22:00 | **5.0** | **5** | **5** | **5** | **5** | **5** | 0 | 0 |
| 1700-2300 (5.5) | 17:00–22:30 | **5.5** | 0 | 0 | 0 | 0 | 0 | **5.5** | **5.5** |

All standards at volume range 1–∞. KBI: The Bar Car 03. $ Bar Revenue. Method: Non-Flowed / Beginning / Daily (Hours).

**⚠️ Open item — Lunch break rule threshold:**
The Sun–Thu standard is configured at exactly **5.0 hours worked** (1500-2200). Pete configured it this way, implying the break rule triggers **ABOVE** 5 hours (>5, not ≥5) — so exactly 5 hours = no break required. However, this needs confirmation.

| Rule interpretation | Sun–Thu worked hours | Impact |
|---|---|---|
| Break at > 5 hours (Pete's assumption) | **5.0 hrs worked** ✓ configured as-is |
| Break at ≥ 5 hours | Would require revision to 4.5 hrs worked |

Fri–Sat (1700-2300, 6 hours clock) is unambiguous either way — break applies → **5.5 hrs worked** ✓

**→ Flagged for status letter to Taylor Walton:** Confirm Union Station's Schedule Lunch Break Rule — does the break trigger AT 5 hours (≥5) or ABOVE 5 hours (>5)?

**$4,000 busy-tier and start time correction — applied 6/29/26:**
- Sun–Thu shift corrected from 1500 → **1700** (5 PM start, not 3 PM)
- $4,000 breakpoint added — await updated PDF to document final volume range structure

---

## Stationairy

**Concept:** Elevated modern American dining — regionally inspired, seasonally crafted. Also the source kitchen for In-Room Dining.
**Location:** Within the hotel

### Hours of Operation

| Day | AM Open | AM Close | PM Open | PM Close |
|---|---|---|---|---|
| Monday | 7:00 AM | 1:00 PM | 5:00 PM | 10:00 PM |
| Tuesday | 7:00 AM | 1:00 PM | 5:00 PM | 10:00 PM |
| Wednesday | 7:00 AM | 1:00 PM | 5:00 PM | 10:00 PM |
| Thursday | 7:00 AM | 1:00 PM | 5:00 PM | 10:00 PM |
| Friday | 7:00 AM | 2:00 PM | 5:00 PM | 10:00 PM |
| Saturday | 7:00 AM | 2:00 PM | 5:00 PM | 10:00 PM |
| Sunday | 7:00 AM | 2:00 PM | 5:00 PM | 10:00 PM |

Outlet is **closed between AM close and 5:00 PM daily** — no split-shift service.

---

### ⚠️ Break Rule — Resolved by Bartender Post-Edit (6/29/26 6:04 AM)

The Sunday AM Bartender shift (0900-1500) confirmed the threshold:

| Shift | Clock Hrs | Break? | Hours Worked |
|---|---|---|---|
| 0830-1400 (5.5) pre-edit | 5.5 hrs | No | 5.5 |
| **0900-1500 (5.5) Sun bartender** | **6.0 hrs** | **Yes ✓** | **5.5** |
| 0830-1500 (6) Mon-Sat bartender | 6.5 hrs | Yes | 6.0 |
| 1545-2300 (6.75) PM bartender | 7.25 hrs | Yes | 6.75 |
| 1630-2230 (6) Host/Hostess pre-edit | 6.0 hrs | labeled (6) — likely **error** | needs correction |

**Confirmed break rule: ≥6 hours clock triggers the 30-minute unpaid break.**
- Exactly 6.0 hours clock → break → **5.5 hours worked**
- 5.5 hours clock → no break → **5.5 hours worked**

**Implication for Alligator Bar:** The Sunday closing shift correction used a >5-hour assumption. Under ≥6-hour threshold, 1500-2030 (5.5 hrs clock) should NOT have triggered a break. The AB correction moved the start to 1430 to get 6.0 clock hours, which under ≥6 DOES trigger a break → 5.5 worked. The end result (5.5 worked) is correct, but the reason for the original problem may not have been the break rule. **→ Flag for Taylor Walton to verify.**

**Implication for pre-edit Stationairy jobs:** Host/Hostess 1630-2230 (6) and any other shifts labeled with 6.0 hours worked at 6.0 clock hours should be corrected — break applies and worked hours = 5.5.

---

### KBIs Used in Stationairy

| KBI Name | Used By | Type |
|---|---|---|
| Stationairy 01. Breakfast | Server (AM early shift) | Breakfast covers |
| Stationairy TTL AM Covers | Bartender (AM), Host/Hostess (AM), Server (AM volume tiers), Busperson (partial), Supervisor (AM) | Total AM covers |
| Stationairy 03. Dinner | Bartender (PM), Host/Hostess (PM), Server (PM), Supervisor (PM) | Dinner covers |
| TTL Outlet 1. AM Covers | Busperson (AM shifts) | Outlet-aggregated AM volume |
| TTL Outlet 2. PM Covers | Busperson (PM shifts) | Outlet-aggregated PM volume |

*Note: Busperson uses "TTL Outlet" KBIs (not Stationairy-specific) for most shifts. This likely aggregates volume across multiple outlets — verify intent.*

---

### Pre-Edit Baseline — Sta. Bartender

**Job path:** 2. Food & Beverage / The Stationairy / Sta. Bartender
**Planner Settings:** Period 15 min | KBI Related | Non-Flowed / Beginning | min 4 / max 8 | Rounding Above 0.2 | Generate Long Shifts: Yes

**Shifts:**

| Shift Name | Clock-In | Paid End | Clock-Out | Worked Hrs | Days Available |
|---|---|---|---|---|---|
| 0830-1400 (5.5) | 08:30 | 14:00 | 14:00 | 5.5 | All 7 |
| 1545-2215 (6) | 15:45 | 21:45 | 22:15 | 6.0 | All 7 |

**Shift-Related Standards:**

| Shift | KBI | Volume | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|
| 0830-1400 (5.5) | Stationairy TTL AM Covers | 1–∞ | **5.5** | 0 | 0 | 0 | 0 | **5.5** | **5.5** |
| 1545-2215 (6) | Stationairy 03. Dinner | 1–∞ | 0 | **6** | **6** | **6** | **6** | **6** | 0 |

**Observations:**
- AM bartender: Sun/Fri/Sat only — no AM bar service Mon–Thu
- Dinner bartender: Mon–Fri only — no PM bartender Sat or Sun (may need review)
- 0830-1400: 5.5 hrs clock shows no break per label — consistent with >6 hr threshold finding above

### Final Configuration — Sta. Bartender (post-edit, 6/29/26 6:04 AM)

**Shifts added (old shifts retained in list but not assigned standards):**

| Shift Name | Clock-In | Paid End | Clock-Out | Worked Hrs | Days Available |
|---|---|---|---|---|---|
| 0830-1500 (6) | 08:30 | 14:30 | 15:00 | 6.0 | All 7 |
| 0900-1500 (5.5) | 09:00 | 14:30 | 15:00 | **5.5** | All 7 |
| 1545-2300 (6.75) | 15:45 | 22:30 | 23:00 | 6.75 | All 7 |

*0900-1500 Sunday: 6.0 hrs clock → break (≥6 confirmed) → 5.5 hrs worked.*
*1545-2300: 7.25 hrs clock → break → 6.75 hrs worked.*

**Shift-Related Standards:**

| Shift | KBI | Volume | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|
| 0830-1500 (6) | Stationairy TTL AM Covers | 1–99 | 0 | **6** | **6** | **6** | **6** | **6** | **6** |
| 0830-1500 (6) | Stationairy TTL AM Covers | 100–∞ | 0 | **12** | **12** | **12** | **12** | **12** | **12** |
| 0900-1500 (5.5) | Stationairy TTL AM Covers | 1–99 | **5.5** | 0 | 0 | 0 | 0 | 0 | 0 |
| 0900-1500 (5.5) | Stationairy TTL AM Covers | 100–∞ | **11** | 0 | 0 | 0 | 0 | 0 | 0 |
| 1545-2300 (6.75) | Stationairy 03. Dinner | 1–99 | **6.75** | **6.75** | **6.75** | **6.75** | **6.75** | **6.75** | **6.75** |
| 1545-2300 (6.75) | Stationairy 03. Dinner | 100–∞ | **13.5** | **13.5** | **13.5** | **13.5** | **13.5** | **13.5** | **13.5** |

**Notes:**
- AM threshold: **≥100 covers** (range splits at 1-99 / 100-∞). Second bartender at 100, not 101.
- Sun AM: 5.5 worked (not 6.0) due to ≥6 break rule — 9 AM to 3 PM = 6.0 clock → break → 5.5 worked.
- PM also has a busy tier at ≥100 dinner covers (13.5 = 2 × 6.75) — a second PM bartender is added.
- KBI substitution: original trigger was >$500 bev revenue; that KBI is unavailable for Stationairy. Substitute: 100 AM/PM covers.
- Old shifts (0830-1400, 1545-2215) remain in shift list, no standards assigned.

---

### Pre-Edit Baseline — Sta. Busperson

**Job path:** 2. Food & Beverage / The Stationairy / Sta. Busperson
**Note: Shift names include "F&B Runner" — this job appears to function as both busperson and food runner.**
**Planner Settings:** Period 15 min | KBI Related | Non-Flowed / Beginning | min 4 / max 8 | Rounding Above 0.2 | Generate Long Shifts: Yes

**Shifts:**

| Shift Name | Clock-In | Paid End | Clock-Out | Worked Hrs | Days Available |
|---|---|---|---|---|---|
| 0600-1230 (6) F&B Runner | 06:00 | 12:00 | 12:30 | 6.0 | All 7 |
| 1200-1700 (5) F&B Runner | 12:00 | 17:00 | 17:00 | 5.0 | All 7 |
| 1000-1500 (5) | 10:00 | 15:00 | 15:00 | 5.0 | All 7 |
| 1630-2300 (6) Sun-Thurs F&B Runner | 16:30 | 22:30 | 23:00 | 6.0 | All 7 |
| 1630-0030 (7.5) Fri-Sat F&B Runner | 16:30 | 00:00 | 00:30 | 7.5 | All 7 |

**Shift-Related Standards:**

| Shift | KBI | Volume | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|
| 0600-1230 (6) F&B Runner | TTL Outlet 1. AM Covers | 1–∞ | **6** | **6** | **6** | **6** | **6** | **6** | **6** |
| 1200-1700 (5) F&B Runner | TTL Outlet 1. AM Covers | 1–∞ | **5** | **5** | **5** | **5** | **5** | **5** | **5** |
| 1000-1500 (5) | Stationairy TTL AM Covers | 1–∞ | **5** | 0 | 0 | 0 | 0 | 0 | **5** |
| 1630-2300 (6) Sun-Thurs F&B Runner | TTL Outlet 2. PM Covers | 1–∞ | **6** | **6** | **6** | **6** | **6** | 0 | 0 |
| 1630-0030 (7.5) Fri-Sat F&B Runner | TTL Outlet 2. PM Covers | 1–∞ | 0 | 0 | 0 | 0 | 0 | **7.5** | **7.5** |

**Observations:**
- AM busperson: 6 hrs (early, 0600-1230) + 5 hrs (mid, 1200-1700) every day = **11 hrs daily**
- Weekend extra AM: 1000-1500 adds 5 hrs on Sun and Sat only
- PM busperson: 6 hrs Sun–Thu / 7.5 hrs Fri–Sat (later close)
- "TTL Outlet" KBIs are different from "Stationairy" KBIs — may aggregate volume across multiple outlets

---

### Pre-Edit Baseline — Sta. Host/Hostess

**Job path:** 2. Food & Beverage / The Stationairy / Sta. Host/Hostess
**Planner Settings:** Period 15 min | KBI Related | Non-Flowed / Beginning | min 4 / max 8 | Rounding Above 0.2 | Generate Long Shifts: Yes

**Shifts:**

| Shift Name | Clock-In | Paid End | Clock-Out | Worked Hrs | Days Available |
|---|---|---|---|---|---|
| 0630-1400 (7) | 06:30 | 13:30 | 14:00 | 7.0 | All 7 |
| 1630-2230 (6) | 16:30 | 22:30 | 22:30 | 6.0 | All 7 |

**Shift-Related Standards:**

| Shift | KBI | Volume | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|
| 0630-1400 (7) | Stationairy TTL AM Covers | 1–19 | **7** | 0 | 0 | 0 | **7** | **7** | **7** |
| 0630-1400 (7) | Stationairy TTL AM Covers | 20–∞ | **7** | **7** | **7** | **7** | **7** | **7** | **7** |
| 1630-2230 (6) | Stationairy 03. Dinner | 25–∞ | **6** | **6** | **6** | **6** | **6** | **6** | **6** |

**Observations:**
- AM hostess: Sun/Thu/Fri/Sat always scheduled; Mon/Tue/Wed only when AM covers ≥ 20
- PM hostess: all days, only when dinner covers ≥ 25
- 1630-2230: 6 hours clock exactly — no break per label (consistent with >6 hr threshold)

---

### Pre-Edit Baseline — Sta. Server

**Job path:** 2. Food & Beverage / The Stationairy / Sta. Server
**Planner Settings:** Period 15 min | KBI Related | Non-Flowed / Beginning | min 4 / max 8 | Rounding Above 0.2 | Generate Long Shifts: Yes

**Shifts:**

| Shift Name | Clock-In | Paid End | Clock-Out | Worked Hrs | Days Available |
|---|---|---|---|---|---|
| 0600-1430 (8) | 06:00 | 14:00 | 14:30 | 8.0 | All 7 |
| 0800-1430 (6) | 08:00 | 14:00 | 14:30 | 6.0 | All 7 |
| 1100-1930 (8) | 11:00 | 19:00 | 19:30 | 8.0 | All 7 |
| 1615-2245 (6) | 16:15 | 22:15 | 22:45 | 6.0 | All 7 |

**Shift-Related Standards:**

| Shift | KBI | Volume | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|
| 0600-1430 (8) | Stationairy 01. Breakfast | 1–∞ | **8** | **8** | **8** | **8** | **8** | **8** | **8** |
| 0800-1430 (6) | Stationairy TTL AM Covers | 25–50 | **6** | **6** | **6** | **6** | **6** | **6** | **6** |
| 0800-1430 (6) | Stationairy TTL AM Covers | 51–∞ | **12** | **12** | **12** | **12** | **12** | **12** | **12** |
| 1100-1930 (8) | *(no standard assigned)* | — | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 1615-2245 (6) | Stationairy 03. Dinner | 1–25 | **6** | **6** | **6** | **6** | **6** | **6** | **6** |
| 1615-2245 (6) | Stationairy 03. Dinner | 26–50 | **12** | **12** | **12** | **12** | **12** | **12** | **12** |
| 1615-2245 (6) | Stationairy 03. Dinner | 51–∞ | **18** | **18** | **18** | **18** | **18** | **18** | **18** |

**Observations:**
- 0600-1430 (8): 1 breakfast server every day regardless of volume (early prep + covers)
- 0800-1430 (6): Volume-tiered — 1–24 covers = 0 additional; 25–50 = 1 server (6 hrs); 51+ = 2 servers (12 hrs)
- 1100-1930 (8): Shift exists in templates but has **no standard assigned** — unused; could support future lunch coverage
- 1615-2245 (6): Dinner tiered 1:6:12:18 — 1, 2, or 3 servers at 25-cover increments
- All server dinner shifts consistent with >6 hr break threshold (6.5 hrs clock → 6 hrs worked)

---

### Pre-Edit Baseline — Supervisor - The Stationairy

**Job path:** 2. Food & Beverage / The Stationairy / Supervisor - The Stationairy
**Planner Settings:** Period 15 min | KBI Related | Non-Flowed / Beginning | min 4 / max 8 | Rounding Above 0.2 | Generate Long Shifts: Yes

**Shifts:**

| Shift Name | Clock-In | Paid End | Clock-Out | Worked Hrs | Days Available |
|---|---|---|---|---|---|
| 1000-1830 (8) | 10:00 | 18:00 | 18:30 | 8.0 | All 7 |
| 1600-0030 (8) | 16:00 | 00:00 | 00:30 | 8.0 | All 7 |

**Shift-Related Standards:**

| Shift | KBI | Volume | Sun | Mon | Tue | Wed | Thu | Fri | Sat |
|---|---|---|---|---|---|---|---|---|---|
| 1000-1830 (8) | Stationairy TTL AM Covers | 1–∞ | **8** | 0 | 0 | 0 | 0 | **8** | **8** |
| 1600-0030 (8) | Stationairy 03. Dinner | 1–∞ | **8** | **8** | **8** | **8** | **8** | **8** | **8** |

**Observations:**
- AM supervisor: Sun/Fri/Sat only (same pattern as AM bartender — weekday AM may not need supervisor coverage)
- PM supervisor: every day regardless of volume
- Both shifts 8.5 hrs clock → break → 8 hrs worked ✓

---
