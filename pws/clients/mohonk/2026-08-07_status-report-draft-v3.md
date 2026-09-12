<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk Mountain House — Planning & Scheduling Status Report (Draft 3)

**Modeled on the standard Unifocus P&S Status Report format** (see `pws/clients/hmalpha/intercontinental-new-orleans/2026-07-09_status-report.md` for the reference template). **This draft supersedes `2026-08-07_status-report-draft-v2.md`** — v2 was prepared 8/11/26 before the week's Plaud recordings had been fully transcribed and reviewed; this version incorporates everything found once the full 8/3–8/7 recording set was reviewed 8/16/26, including two entire sessions (08/06 Basic Training, 08/06 Kitchen Stewarding follow-up) whose content had not made it into any draft before now. Use this file as copy-ready source text for the approved Word template edit, not as a file to send as-is.

## Project Detail

| | |
|---|---|
| **Name of the hotel(s)** | Mohonk Mountain House |
| **Name of Unifocus consultant(s)** | Pete Castellano |
| **Visit Dates** | 08/02/26 – 08/07/26 |
| **Distribution List** | *TBD — under active review.* Word draft's list (Mohonk: Tom Smiley, Eric Gullickson, Lou Petruzzelli, Bron Walis, Casey Dow; Unifocus: Ralph Varble, Shilpa Bhando, Alain Derderian, Susanna Briggs) drops two department heads who were both active week-of participants: **Patrice Huart (Director of F&B)** and **Alex Sherwood (Director of Rooms)** — recommend adding both. **Casey Dow stays on the list** — system-admin, not policy, and Bron/Lou want his help with ongoing Unifocus administration and analysis work regardless of any one meeting's attendance. |

## Project Status

This was a highly productive onsite week, and a fuller review of the week's recordings surfaced real substance beyond what the earlier draft captured. Beyond the standards and configuration work itself, **the most significant outcome was a visible jump in staff confidence and ownership of the system** — training sessions were well received, and feedback from attending staff was positive throughout the week. Several long-standing configuration issues that had been quietly costing departments real frustration — a banquet bartender standard that had never generated a single shift, duplicate shift generation in Beverage, misattributed hours in Rooms, a stray labor standard incorrectly attached to the Culinary Intern job code — were found and fixed live this week, several by staff themselves with light coaching rather than by Pete alone. **A full-day Basic Training delivery for Housekeeping, Kitchen, and Recreation on 8/6, followed by a dedicated Kitchen/Stewarding working session the same afternoon, surfaced substantive real findings that belong in this report** — most notably, definitive confirmation that no banquet culinary labor standard exists, and a previously undocumented major overtime driver (recently-converted-to-hourly sous chefs). The property is meaningfully closer to a single, trusted, native Unifocus workflow than it was a week ago.

---

## Interfaces
- **Spa KBI import** — fixed and independently validated. Treatment KBIs (day/transient, overnight, employee) now populate correctly; Total Treatments, a calculated KBI, resolves automatically as a result. Property staff confirmed the actual numbers looked correct for the week of 7/27–8/2, closing the loop end to end.
- **Import Notification emails** — Casey submitted a support ticket to add Bron and himself to the Employee Reconcile and Hours Transfer notification emails. Discussed how to interpret the messages.
- **Founders Buffet Attendant/Supervisor ADP job codes** — confirmed active; added jobs to Unifocus. Resolves an earlier concern about missing ADP setup.
- **Banquet actuals overwritten after entry** — root cause identified; interface disabled until the new file is ready from DataVision (Mohonk's Event Management System migration). Interface will require the mapping to be restored and/or reconfigured once that file is available.
- **F&B covers-to-Datavision timing — fix implemented, validation pending.** Root cause confirmed: the accounting upload lands after the standard-hours generation window, causing a recurring Thursday–Sunday generation gap. Bron implemented a fix live this week: an additional interface transfer every Tuesday at 1:00 AM. **Update:** Unifocus support separately closed the related ticket, UNIFOCUS-252999, citing an internal import-timing adjustment by their integration team — a second, distinct change from Bron's. Neither fix is independently validated yet over a full live cycle.
- **This same generation-timing root cause was independently reconfirmed a third time this week**, in Beverage/Carriage Lounge forecasting — strong evidence it's one systemic timing issue affecting multiple departments, not several unrelated ones.
- **Front Desk** — one overnight employee's actual hours aren't flowing into Unifocus reporting despite clocking in correctly and being paid correctly in ADP. A specific new diagnostic lead (an ADP Pay Code discrepancy) was identified this week.
- **Culinary Extern/Intern hours** are landing entirely under one primary "Culinary Intern" ADP title rather than the specific kitchen job actually worked. **Root cause confirmed in more detail this week: the property-side job assignments in Unifocus are already correctly built (Jim), but ADP's own weekly download doesn't reflect that, and this never syncs back — an ADP-side, not Unifocus-side, limitation.** Two resolution paths debated further this week, with a real internal disagreement surfaced: (1) time-clock job selection by the employee, which the property's own payroll lead raised real audit-risk concerns about ("payroll nightmare"); or (2) ADP's "punch to schedule" feature, which reduces that risk but requires the daily Unifocus→ADP schedule export investment already flagged (~$4,000, not yet approved). **A separate, concrete config error was also found and should be corrected: the Culinary Extern/Intern job code itself currently carries an actual labor standard, when it should carry none** — it's meant to be a pure passthrough placeholder, with real labor captured on each person's actual secondary job assignments instead.
- **Reporting accuracy fix, Kitchen/Culinary:** a mis-scoped operating code was pulling Utility and Garden View Cafe staff into the kitchen's variance reporting. Corrected this week — the Labor Effectiveness Report for the most recent complete week improved from -12% to roughly -2% under standard purely from the reporting fix, no staffing change required.

## Implementation
- **Beverage fully restructured**: moved off a single legacy job code into separate, outlet-specific job codes under its own dedicated Beverage department — all historical actual/standard/schedule data preserved through the move. Cleared up duplicate/leftover shift generation as a direct result.
- **Weekly Labor Timeline rebuild started** — the only prior version was a flat image with no editable source; a new working document is in progress with Lou.
- Standards adjusted across Rooms, Housekeeping, F&B, Spa, Security, and Beverage based on live diagnostic findings throughout the week.
- **Spa: second-floor/Fitness Reception duplicate coverage found and removed live** — 5 redundant opener shifts (37.5 hrs/week) eliminated once the second floor's true function (a retail/access-control checkpoint, not a scheduling duplicate) was directly observed and confirmed.
- **New, real access-permission gaps found this week that block staff from self-serving basic Employee Maintenance tasks:** Josh (Kitchen) confirmed he lacks both the "sub only" toggle and the "display name" field (the one Employee Maintenance field that does not sync from ADP, needed for international staff whose legal name isn't what should appear on a schedule/nametag). Not resolved live; needs a direct permission-group review with Bron/Casey.

## Training
- **Admin Training** — delivered 08/03.
- **Basic Training** — delivered 08/04.
- **Basic Training — delivered 08/06, corrected department list: Housekeeping, Kitchen, and Recreation** (not Spa/Front Desk as an earlier draft stated). This was the largest, longest, most cross-departmental single delivery of the week (~3 hours), mixing staff with zero prior Unifocus exposure alongside staff already scheduling in Excel or other systems.
- **Recreation received its first-ever Unifocus orientation this week** — a genuinely significant finding: the department's labor standards already existed, built over roughly a two-year process, but had never been handed off to the current Senior Activities Manager (in the role since fall 2025), who started this training with zero visibility into any of it. This was a pure communication gap, not a configuration gap, and was substantially resolved live by walking her directly through the existing standards.
- **Kitchen/Stewarding 1:1 working session — delivered 08/06 PM**, a dedicated follow-up with the Kitchen Manager and the manager who schedules the cooks, immediately following the morning class. Surfaced the confirmed absence of a banquet culinary standard (see Labor Standards below) and a previously undocumented overtime driver.
- **Advanced Class — F&B / Main Dining Room** — delivered 08/06.
- Multiple 1:1 working sessions: Beverage standards tuneup, Front Desk troubleshooting.
- **Staff response, worth highlighting:** a department head stopped back in specifically after Thursday's Basic Training to pass along positive feedback from his staff.

## Work Rules
- Reviewed Schedule Lunch Rule thresholds against several short-shift scenarios (Kids Buffet, dinner servers) — no issues found in the cases checked, but a broader property-wide review is recommended for a future visit.
- Open question flagged: whether a 5.5-hour shift should trigger the same automatic unpaid break a 6-hour shift does — needs confirmation.

## Labor Standards
- A significant number of labor standards were reviewed and revised across multiple departments this week, as part of the broader effort to keep standards aligned with current operations.
- **Beverage — Banquet Bartender KBI mapping** — fixed live. The standard had never generated a shift since original setup because it was driven by group-booked banquet business only; now captures local/day banquet business as well, correcting a real historical under-crediting of bartender hours.
- **🔴 Banquet culinary labor standard confirmed definitively not to exist.** Searched thoroughly during the Kitchen/Stewarding session — banquet production is fully absorbed into the main kitchen with no dedicated standard, driving 450 overtime hours in one recent high-volume period alone (a 150-person wedding was plated by one cook, working alone, as a concrete example). **This is structurally harder to fix than a typical missing standard: cook staffing is station-based and can't flex down the way server headcount can**, so a mathematically "complete" banquet standard could call for more cooks than the kitchen has real capacity to add. A revised, more moderate approach is now under discussion — a modest reporting "kicker" applied to an existing job for attribution clarity, rather than a full new standard set by meal type/format.
- **🔴 A major, previously undocumented overtime driver identified: Mohonk's 6 sous chefs were recently converted from salaried to hourly and now consistently run 10–15 overtime hours/week each in peak season — together accounting for more than half of the kitchen's total overtime.** Directly connected to the banquet-standard gap above: these hourly sous chefs are functioning as the real buffer absorbing exactly the banquet-driven overload the missing standard should be surfacing.
- **Room Attendant standard likely doesn't account for Housekeeping's real, physically limited cleaning-access window.** A detailed, mathematically-worked challenge was raised live: on a heavy day, rooms genuinely can't be entered until check-out cleaning windows open, leaving roughly a 4-hour real working window, not the 8 hours the standard implicitly assumes when spreading minutes-per-unit labor across a full shift span. Worked live: 160 departures at 40 minutes each is ~107 hours of work, requiring ~23 Room Attendants to fit a 4-hour window — well beyond current staffing. Confirmed as a real gap, not fixed in this visit; supported by a longer institutional trend (checkout time has compressed from 2:00 PM to 12:00 PM over the property's history).
- **A related, second critique of the same standard's Staff Minutes allowance** (~40 min/person for non-cleaning time): the two built-in 15-minute breaks alone consume most of that allowance, with additional uncounted time queuing at the time clock — worth a combined revisit with the physical-access-window finding above.
- **Saucier/Associate standard likely calls for one more shift than needed** — live discrepancy found: the standard currently generates two shifts (5 AM and 7 AM), but the property's actual staffing guide calls for only one. Not corrected in this visit.
- **Dishwasher standard needs a rebuild** — currently keyed to broad Room Guests volume, with no accounting for banquet-dinner nights or breakfast/lunch service specifically, even though actual practice has already shifted (the lower dish room now runs 7 days/week, ramped on Founders-open nights). Founders now has its own dedicated covers KBI that didn't necessarily exist when this standard was first built, creating a real opportunity to rebuild on more specific drivers.
- **Kitchen Manager (Josh) independently signaled intent to revisit his own department's standards**, several of which were likely built roughly two years ago without solid real-world grounding.

## Labor Structure
- Beverage job codes fully separated by outlet and moved into their own Beverage department, with a clean data migration (see Implementation above).
- **ADP Labor Structure review** flagged with Lou for the next working session — compare Unifocus Labor Structure to ADP for better alignment with other finance systems.
- A minor job-code naming inconsistency (the Main Dining Room "Server" job lacks the outlet prefix other jobs carry) was identified for future cleanup.
- **A distribution-logic fix was configured live for Kitchen/Dishwashing**, whose default left-to-right shift-fill order was concentrating a genuine staffing shortfall entirely on weekends. Switched to "Balanced Schedules" to spread the shortfall evenly; agreed to monitor for two weeks before evaluating further. Confirmed Main Dining Room already runs a different distribution mode (Peak, busiest-day-first) as a real production precedent.

## Planning & Schedule Timeline
- **This week's most consequential finding:** the recurring gap between when covers/KBI data is entered and when standard-hours generation actually runs was independently confirmed in three separate departments this week (F&B covers, Beverage/Carriage Lounge, and the standing Thursday–Sunday gap) — strong evidence of one systemic timing issue rather than isolated department problems.
- Weekly Timeline was updated into an editable Excel document. The timeline was realigned to a new cadence which allows more time for schedule editing and completes the schedule a day earlier for employees.
- **New weekly cadence proposed:** Revenue Center forecasts generated by Monday 12:00 PM, edits complete by Tuesday noon, schedules built through Thursday noon, labor meeting moves from Wednesday to Thursday 2:00–3:00 PM, schedules posted Thursday evening — a full day earlier than today's practice. Compressing the timeline does leave less margin for error if data feeds run late; no specific mitigation locked in yet.
- Task Scheduler will be set to match the new timeline.
- **Scheduling ownership within Housekeeping needs clarifying — up to four staff currently touch the same schedule independently**, creating real coordination friction ("we don't need four of us messing with the same schedule"). Worth factoring the fact that one of the four is planning to retire in roughly 10 months into any ownership conversation, not treating it as a purely lateral fix.

## Database Status
- Stable. This week's configuration work was primarily cleanup and restructuring (Beverage) rather than new build.

## Unifocus Mobile App
- Adoption remains partial — concentrated in F&B.
- The employee-facing schedule-change notification feature is confirmed not working correctly; recommend resolving this before pushing broader adoption harder.
- **Confirmed this week: the system fully supports Recreation's genuinely fragmented shift pattern** (e.g., a morning activity block, a clock-out gap, then an evening block, potentially across different job roles in the same day) — removes a real adoption concern for a department just getting started.
- Stronger appetite at the ownership and department-head level for a dedicated future push toward full native-Unifocus/mobile adoption property-wide.

## Standards Test
- Not formally re-run against the 2026 budget this visit, but real forward movement: **a live Budgeter/staffing-guide walkthrough was done directly with Lou**, covering how daily volumes drive the tool and how output should be validated against operational reality (not trusted blindly) before relying on it. Recommended as a continued future-visit action to compare labor standards to the 2026 budget and prepare to use Labor Budgeter in the 2027 budget cycle as an extra set of eyes.

---

## Planning Going Forward

**Training**
- Combined schedule-printing training session for Call Center, Front Desk, and Housekeeping — these departments still maintain duplicate Excel/macro schedules alongside Unifocus.
- Continued advanced-topic follow-up with Kidane Mikael (Dining Room Manager) as he takes on more of the department's Unifocus administration.
- **A follow-up Recreation work session is still needed** to build out real Total-Treatments-style variability for the department, now that a baseline handoff has happened.
- **Schedule Export and Employee Maintenance classes are still needed specifically for Recreation, Housekeeping, Property, Front Office, and Spa** — flagged as a shared priority by both Pete and the property's own team.
- **A consolidated, department-by-department audit of who is actually inputting schedules into Unifocus vs. still relying on Excel/paper is worth producing as its own deliverable** — the property's own leadership has independently flagged this as a high priority.

**Configuration**
- Resolve the Granary/Founders rain-contingency covers-vs-labor coding mismatch.
- **Banquet culinary labor standard — confirmed missing, not just unclear.** Revised plan under discussion: a modest reporting adjustment on an existing job rather than a full new standard set, given the structural station-based staffing constraint described above.
- Resolve Culinary Extern/Intern ADP job-coding — decide between time-clock job selection (real payroll-audit risk flagged) and the ADP "punch to schedule" investment; also correct the specific config error of the standard wrongly attached to the Culinary Intern job code itself.
- **Revisit the Room Attendant standard's physical-access-window assumption** and the related Staff Minutes allowance — a real, mathematically-supported gap, not yet addressed.
- **Rebuild the Dishwasher standard** on more specific drivers (Founders covers, banquet covers) rather than broad Room Guests.
- Correct the Saucier/Associate two-shift-vs-one-needed discrepancy.
- Investigate partial-shift generation on run-rate-based standards, flagged by Main Dining Room department leadership. Showed manager this is working as designed.
- Additional BQT KBI mapping is required once the new DataVision BEO file is restored (see Banquet actuals item under Interfaces above).

**Interfaces**
- Confirm the Thursday–Sunday generation gap is actually closed over a full live cycle before trusting it fixed — two candidate fixes now in play, neither independently validated.
- Evaluate extending covers automation to the full week (not just Tuesday) to close the timing gap at its source.
- Resolve the Front Desk overnight-hours reporting gap once the ADP Pay Code discrepancy is confirmed.
- Continue monitoring the banquet-actuals-overwritten issue through to a completed fix.
- Monitor daily error emails for Employee Reconcile and Hours Transfer.
- Grant Josh (Kitchen) the specific Employee Maintenance permissions found missing this week (sub-only toggle, display-name field).

**Other**
- Complete the Weekly Labor Timeline rebuild following Friday's wrapup meeting.
- Scope a dedicated future visit focused on driving full adoption of Unifocus as the single source of schedule generation, editing and distribution.
- Bron to confirm whether the banquet automation interface is ready to support the new weekly cadence.
- A single-system mandate was proposed — all schedules generated and printed from Unifocus, retiring parallel Excel/paper processes property-wide — along with targeted 1–2 hour adoption training for the lowest-adoption departments (confirmed candidates: Recreation, Housekeeping, and per this week's findings, several others still on Excel).
- **Consider a combined Data Analyst/Labor Management role (potentially half-time) to own ongoing WFM operations, training, and analytics — now independently rated a high priority by the property's own leadership**, not just an idea Pete floated during the visit.
- Clarify Housekeeping scheduling ownership among the four staff currently touching the same schedule, accounting for an upcoming retirement.
- H-2B staffing for next year: property plans to request 10 positions (up from 9 requested/7 realized this year). **Construction impact timing sharpened this week — specifically the end of fiscal year 2027–28** — international staff term end-dates need to be checked against this window; a real reputational risk was flagged directly if visa staff are brought on and then sent home early due to construction disruption.

---

*Draft 3 prepared 08/16/26, incorporating full review of the week's Plaud recordings including two sessions (08/06 Basic Training, 08/06 Kitchen Stewarding) not reflected in Draft 2. © Peter A. Castellano. All rights reserved.*
