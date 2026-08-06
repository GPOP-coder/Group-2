<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — F&B Labor Meeting, with Tom Smiley (CEO) Sitting In

**Date:** August 5, 2026
**Location:** Mohonk Mountain House — Office 16
**Context:** Part of Pete's onsite visit week. Same day as the [Rooms labor meeting](2026-08-05_labor-meeting-rooms-ceo-session.md) — Tom Smiley (CEO) sat in on this one too, staying through most of it before leaving quietly near the end. The extended one-on-one conversation that followed (Tom, then Lou) is filed separately: [2026-08-05_tom-lou-debrief.md](2026-08-05_tom-lou-debrief.md) — covers contract economics, a possible direct-client relationship, and real technical findings that belong with the business-context material, not the day-to-day F&B standards notes below.

## Participants
- **Pete Castellano** (PWS)
- **Lou Petruzzelli** (budget authority)
- **Patrice Huart** (Director of Food and Beverage)
- **Tom Smiley** (CEO) — sat in for most of the meeting, left quietly before it fully wrapped
- **Invited, not attending:** Bron Walis, Eric Gullickson

---

## 1. Labor Effectiveness Report — Backward-Looking, Department by Department
F&B overall ran **4% under standard** for the most recent complete week. Department-by-department (best practice: start at the bottom of the report, work up):
- **Weddings:** slightly over, less than a shift's worth of hours.
- **Room Service:** 3% over — small department, not material.
- **Kitchen Utility:** small department, nothing notable.
- **Main Kitchen:** running close to standard overall, but with real internal movement/variability between individual kitchens (people coded across multiple kitchens). **Recommendation: build an op code wrapping all kitchens together, including the dishwasher job** — same pattern already used elsewhere in this KB for isolating a cross-cutting group.
- **Granary:** 27% over, but small in absolute terms (112 hours) — standard likely not fully nailed down yet.
- **Kitchens generally run in overtime nearly every week** — confirmed as a recurring pattern, not a one-off.
- **Founders:** 7% under, but that required **23 hours of overtime to get there** — flagged as "more justifiable" overtime than the reverse direction (working hard to stay under, vs. overtime because of being over).
- **Bakery:** ~16% variance — may be short a baker; the department appears to compensate elsewhere.
- **Garden Cafe:** small numbers, but ran **~$2,200 under** in dollar terms — explicit caution that a dollar "savings" alone doesn't tell the whole story; needs the full picture, not just one number in isolation.
- **Dining Room:** showed the **most significant improvement** on this report — confirms the standard changes made earlier with James are now reflected in the numbers.
- **Conference Services:** under by ~10 hours — about a shift, not material.
- **Beverage:** 8% under. **Confirmed live by Patrice: she personally rebuilt Beverage as a consolidated department that same morning to match ADP's structure** ("I unscattered it this morning") — previously scattered across other departments. This is already reflected correctly in this report. **This directly completes the beverage-restructuring item already tracked in kb.md's Active Issues** (originally requested during the 8/3 Admin Training session) — now done, and done by Patrice herself, not Pete.
- **Banquets:** just under standard, but explicitly flagged as inherently unreliable to judge week-to-week: (a) all labor gets attributed to the day of the event even though prep spans multiple days/weeks; (b) banquet forecast numbers, while pulled in early for planning, are only reliably accurate for a couple of hours before something changes; (c) the system can't split one server between two venues a quarter-mile apart — the ratios it produces are "appropriate," but exactly who goes where is a management judgment call (reading the BEO), not something the system decides. **Recommendation: look at the 8-week summary for banquets** to judge consistency across a season rather than any single week. **Also reaffirmed: keeping banquets separate from Dining Room reporting is deliberate and correct** — blending them back in would make it impossible to tell what either group is actually doing.

## 2. Payroll/Dollar Visibility — Patrice's Question, Answered
- Patrice asked directly: can she see **pay**, not just hours, on these reports? Currently she only sees hours.
- Pete's answer: yes, technically possible, but there's a **deliberate design reason managers don't see $ by default** — concern that dollar visibility shifts focus toward comparing pay rates rather than task-hours, muddying the exact comparison the labor meeting is built around. There's also a system-permissions question to work out mechanically (who should and shouldn't see payroll $). **Not resolved live** — flagged as something to figure out how to expose safely, not a flat "no."
- This directly extends the hours-vs-dollars philosophy already documented from the [Rooms/CEO session](2026-08-05_labor-meeting-rooms-ceo-session.md#1-dollars-vs-hours--core-framing-partial-recording-started-mid-explanation) — same principle, now tested against a real manager's specific request for more visibility.

## 3. Weekly Labor Summary — 8-Week Trend View (New Feature Shown)
- Demoed on Beverage specifically: 8-week trend showed **-8%, -9%, -7%** — consistently under standard, described as "consistent to a good practice." The Beverage standard already has some built-in variability (not fully flat).
- **New capability shown:** the Weekly Labor Summary report has a toggle to switch from a single aggregate "period" view to a **"weekly" slice view**, breaking an 8-week span into 8 individual weekly numbers instead of one blended total. More useful for spotting trend patterns than the Labor Effectiveness Report, which can be run over a long date range but only returns one summary number for the whole span.

## 4. Weekly Projected Schedule Report — Forward-Looking, F&B
- F&B overall running **5% under-scheduled** for the coming week (forward-looking).
- **Lake Lounge:** -7/+8, not material.
- **Kitchen: under-scheduled -18% and -21%, specifically Monday and Tuesday** — flagged for investigation: is there simply a cook shortage on those two days?
- Confirmed limitation: forecast/covers are **only pulled once**, not continuously refreshed — acknowledged and accepted as a known constraint for now, not something being actively re-engineered.
- **Main Dining Room: over-scheduled by 600 hours (19% over) on the forward-looking report.** This directly reflects **James's now-standard overscheduling practice** — Unifocus/Pete explicitly taught James to deliberately overschedule as a solution to his no-show/attrition problem, mechanically implemented via an "on-call" note in the schedule. **Confirmed acceptable specifically because James's department consistently hits its actual (backward-looking) standard** despite the forward-looking overschedule — overscheduling on the front end plus disciplined actual performance is being treated as a legitimate, intentional strategy, not a red flag, as long as the after-the-fact numbers stay in line.
- **Dining Room also flagged as "missing almost a whole person"** in the forward schedule — a real gap, not further diagnosed live.

## 5. Employee Schedule Analysis Report — Individual Drill-Down (F&B Example)
- Same report already demoed in the [Rooms/CEO session](2026-08-05_labor-meeting-rooms-ceo-session.md#3-employee-schedule-analysis-report--new-drill-down-tool-demoed), now shown for F&B: Dining Room Main → Server.
- **Named examples:** "AJ" and "Britney" both scheduled but didn't work — flagged as worth spot-checking directly, since there are known, non-attendance reasons this could read wrong: ADP has to be "talking to us properly" and follow a number of interaction rules for hours to attribute correctly to a specific individual on this particular report (common real causes: forgotten punches later corrected before payroll, shift swaps). **Hours can still hit the aggregate labor reports seen earlier in this meeting even when they don't attribute correctly here** — same underlying limitation already flagged in the Rooms/CEO session, now with concrete F&B examples.
- **Best practice reinforced:** do these corrections **daily**, for the prior day, rather than batching them up.
- **Confirmed: schedules are not yet pushed into ADP** — that's a stated future step ("we're gonna try to put the schedules into ADP, we're not there yet"), tied to eventually enabling schedule-enforced time clocks (employees can't punch in outside their scheduled window) — which itself depends on getting full property-wide native Unifocus adoption first.

## 6. Manager Attendance at Labor Meetings — F&B Version
- Same rotation approach already agreed with Alex/Rooms: bring different managers occasionally rather than every week. Patrice has ~5 direct reports.
- **New nuance from Lou:** the rotation shouldn't be a strict, rigid schedule — if Lou has a specific question about a particular manager's area, he should feel free to route that question through Patrice (or request that manager specifically) even if it's not technically "their turn."
- **Explicit constraint acknowledged:** the whole weekly cycle happens in a genuinely compressed window — the earliest anything meaningful can be reviewed is Tuesday, and banquet/group details keep changing all the way to Friday.

## 6a. Kitchen Leadership — Josh & Succession Context
- **Josh** (kitchen manager) is operationally strong per Patrice — capable with printing, posting, and payroll-adjacent administrative work for the kitchen — but the actual **Unifocus/system-administration side is a real gap for him.**
- **Kadani (Dining Room Manager)** is being trained on kitchen-side administrative responsibilities as part of a broader succession/cross-training effort, taking over pieces James has personally held onto tightly since taking over the role from Patrice — James reportedly spends **~2.5 days/week** on this personally, more than ideal for his level, hence the push to hand pieces off.
- Pete invested significant 1:1 time with Kadani already (~2 weeks, full days, went through an entire schedule twice) specifically to understand his working style before tailoring tools/training — described as "absolutely worth it."
- **Kadani's scheduling approach is unusual — explicitly validated, not corrected:** Pete has "never seen anyone schedule individual meal periods" the way Kadani does, but the team made the system work with his method rather than pushing him toward convention — "it's not my position to say no."
- **Next-day plan (referenced as "tomorrow" in this transcript):** Pete and Lou to sit down with James directly to understand what's actually blocking broader native Unifocus adoption among his team, since multiple people are effectively running informal parallel processes alongside the system — ties directly to Tom's later, more forceful "everyone on the system, no exceptions" push (see the [Tom/Lou debrief](2026-08-05_tom-lou-debrief.md)).

---

## 7. The Weekly Timeline Problem — F&B-Specific Detail (Extends the Rooms/CEO Finding)
**This is the same core problem already flagged in the [Rooms/CEO session](2026-08-05_labor-meeting-rooms-ceo-session.md#4-weekly-projected-schedule-report--the-timeline-compression-problem) — worked through here in much more granular, step-by-step detail with Patrice, plus a genuinely new banquet-specific carve-out.**

- **Current sequence (as-is):** system rolls forward overnight Sunday→Monday; Monday, Rooms + Banquet forecasts get entered; that generates a revenue-center forecast (via regression) that James edits, currently due **Tuesday 3:00 PM**; Generate Projected Hours doesn't currently run until overnight, landing sometime early Wednesday — leaving managers only until ~1–2 PM Wednesday to have a schedule ready before the Wednesday meeting. Pete's assessment, stated directly: **"unrealistic."**
- **Proposed compression (preferred fix):** push the whole sequence earlier within Monday itself — forecast entry in the morning, revenue-center forecast/James's edit by early afternoon, Generate Projected Hours by end of day Monday (or Tuesday noon at the latest) — freeing all of Tuesday and Wednesday morning for actual schedule-building.
- **Fallback discussed:** if that compression isn't practical, move the labor meeting from Wednesday to Thursday instead. Patrice leaned toward liking a clean **Thursday meeting → Friday publish** two-step cadence.
- **Patrice's real publishing rhythm, disclosed directly:** schedules currently finalize **mid-day Friday** for the following week. Reason: banquet/group details (weddings, groups) keep changing and getting finalized right up until Friday — sales reps are still talking to planners, getting last-minute reception/event details. Patrice explicitly rejected scheduling 2 weeks out as unrealistic for banquets specifically — the business genuinely isn't known that far ahead, and would require "a different culture about making changes."
- **Proposed resolution — carve out banquets as a deliberate, explicit exception:** let banquets/F&B continue publishing later, using rolling near-term visibility (Tuesday → sees Tue–Wed; Wednesday → sees Wed–Fri; Friday → sees Fri–next Tuesday), and lean on the mobile app's change-notification/messaging feature to handle last-minute changes for affected staff — **rather than holding up Housekeeping, Front Desk, and other departments' publish timing just because banquets might still need to adjust.** Patrice agreed this exception shouldn't hold up other departments.
- **Housekeeping has an analogous but differently-caused rhythm:** always adjusting because stayovers/departures genuinely aren't fully known until the day-of — same underlying principle applies: publish early, adjust at the edges, don't wait for a perfect, fully-locked schedule.
- **⚠️ Known gap flagged by Pete himself:** the mobile app's employee-facing change-notification feature — the exact mechanism that makes earlier publishing safe despite late banquet changes — **"isn't quite working right now."** Worth tracking as its own open item; the whole banquet-carve-out proposal depends on this actually functioning.
- **Historical context offered, not an action item:** Mohonk used to run without required advance deposits and would see up to ~100 no-shows on a holiday like Thanksgiving, which forced staff to develop their own informal call-in/on-call protocols long before Unifocus existed — contextualizing that some degree of last-minute schedule flexibility has always been a structural reality here, not something the system introduced.

## 8. Cross-Utilization & Property-Wide Publish Timing — New Strategic Point
- As cross-training/cross-utilization grows (employees splitting time across departments — e.g., Rooms and Recreation), **having different departments publish their portions of one employee's schedule at very different times becomes a real coordination problem** — an employee might see part of their schedule Monday and the rest later, while a coworker already has theirs complete.
- **The bigger and more cross-utilized a property gets, the stronger the case for a single, coordinated property-wide publish** (one person publishing everything at once) rather than each department manager publishing independently on their own rhythm. **Not yet Mohonk's practice** — some managers (James) already publish on a schedule that works well for them individually — but flagged as something to revisit as cross-training expands.

---

## Decisions / Changes Made Live
- Confirmed Beverage department restructuring complete (Patrice, same-day).

## Open / Unresolved
- **Payroll/$ visibility for managers** — Patrice's request, not resolved; needs a permissions/design answer.
- **Kitchen under-scheduling Mon/Tue (-18%/-21%)** — flagged for investigation, not diagnosed.
- **Dining Room "missing almost a whole person"** on the forward schedule — flagged, not diagnosed.
- **Weekly timeline compression** — same open item as the Rooms/CEO session, now with a specific proposed Monday-compressed sequence and a banquet-specific carve-out design; still not finalized.
- **Mobile app change-notification feature not working correctly** — a real, acknowledged gap that the banquet-carve-out proposal depends on.
- **Josh's (kitchen manager) system-administration gap** — to be probed directly with James the next day.
- **Property-wide coordinated publish timing** — flagged as a future consideration tied to growing cross-utilization, not yet acted on.

---

*© Peter A. Castellano. All rights reserved.*
