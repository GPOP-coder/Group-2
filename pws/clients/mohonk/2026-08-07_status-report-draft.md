<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk Mountain House — Planning & Scheduling Status Report (Draft)

**Modeled on the standard Unifocus P&S Status Report format** (see `pws/clients/hmalpha/intercontinental-new-orleans/2026-07-09_status-report.md` for the reference template). Draft for Pete's review before distribution.

## Project Detail

| | |
|---|---|
| **Name of the hotel(s)** | Mohonk Mountain House |
| **Name of Unifocus consultant(s)** | Pete Castellano |
| **Visit Dates** | 08/02/26 – 08/07/26 |
| **Distribution List** | *TBD — suggest Ralph Varble, Susanna Briggs / Bron Walis, Lou Petruzzelli, Patrice Huart, Tom Smiley, Eric Gullickson* |

## Project Status

This was a highly productive onsite week. Beyond the standards and configuration work itself, **the most significant outcome was a visible jump in staff confidence and ownership of the system** — training sessions were well received, and feedback from attending staff was positive throughout the week. Several long-standing configuration issues that had been quietly costing departments real frustration — a banquet bartender standard that had never generated a single shift, duplicate shift generation in Beverage, misattributed hours in Rooms — were found and fixed live this week, several by staff themselves with light coaching rather than by Pete alone. The property is meaningfully closer to a single, trusted, native Unifocus workflow than it was a week ago.

---

## Interfaces
- **Spa KBI import** — fixed and independently validated. Treatment KBIs (day/transient, overnight, employee) now populate correctly; Total Treatments, a calculated KBI, resolves automatically as a result. Property staff (Spa Manager Joanna Taylor) confirmed the actual numbers looked correct for the week of 7/27–8/2, closing the loop end to end.
- **Founders Buffet Attendant/Supervisor ADP job codes** — confirmed active; added jobs to Unifocus. Resolves an earlier concern about missing ADP setup.
- **Banquet actuals overwritten after entry** — root cause identified; fix requested, awaiting updated Banquet file.
- **F&B covers-to-Datavision timing — fix implemented, validation pending.** Root cause confirmed: the accounting upload lands after the standard-hours generation window, causing a recurring Thursday–Sunday generation gap. Bron implemented a fix live this week: an additional interface transfer every Tuesday at 1:00 AM, giving Unifocus a 7-hour buffer to ingest weekend covers before the morning generation runs. First full validation cycle is next week.
- **This same generation-timing root cause was independently reconfirmed a third time this week**, this time in Beverage/Carriage Lounge forecasting — strong evidence it's one systemic timing issue affecting multiple departments, not several unrelated ones.
- **Front Desk** — one overnight employee's actual hours aren't flowing into Unifocus reporting despite clocking in correctly and being paid correctly in ADP. A specific new diagnostic lead (an ADP Pay Code discrepancy) was identified this week. Stacy Zappone (Front Office/Guest Services) is checking ADP directly and is expected to provide details of our findings to Casey.
- **Culinary Extern/Intern hours** are landing entirely under one primary "Culinary Intern" ADP title rather than the specific kitchen job actually worked. Two resolution paths identified: time-clock job selection, or enabling ADP's "punch to schedule" feature, which requires an automated daily Unifocus→ADP schedule export.
- **Reporting accuracy fix, Kitchen/Culinary:** a mis-scoped operating code was pulling Utility and Garden View Cafe staff into the kitchen's variance reporting. Corrected this week — the Labor Effectiveness Report for the most recent complete week improved from -12% to roughly -2% under standard purely from the reporting fix, no staffing change required.

## Implementation
- **Beverage fully restructured**: moved off a single legacy job code into separate, outlet-specific job codes under its own dedicated Beverage department — all historical actual/standard/schedule data preserved through the move. Cleared up duplicate/leftover shift generation as a direct result.
- **Weekly Labor Timeline rebuild started** — the only prior version was a flat image with no editable source; a new working document is in progress with Lou.
- Standards adjusted across Rooms, Housekeeping, F&B, Spa, Security, and Beverage based on live diagnostic findings throughout the week.

## Training
- **Admin Training** — delivered 08/03.
- **Basic Training** — delivered 08/04.
- **Basic Training** — delivered 08/06 (Housekeeping, Kitchen, Spa, and Front Desk-adjacent staff).
- **Advanced Class — F&B / Main Dining Room** — delivered 08/06.
- Multiple 1:1 working sessions: Beverage standards tuneup, Front Desk troubleshooting, Kitchen labor standards.
- **Staff response, worth highlighting:** a department head stopped back in specifically after Thursday's Basic Training to pass along positive feedback from his staff.

## Work Rules
- Reviewed Schedule Lunch Rule thresholds against several short-shift scenarios (Kids Buffet, dinner servers) — no issues found in the cases checked, but a broader property-wide review is recommended for a future visit.
- Open question flagged: whether a 5.5-hour shift should trigger the same automatic unpaid break a 6-hour shift does — needs confirmation.

## Labor Standards
- A significant number of labor standards were reviewed and revised across multiple departments this week, as part of the broader effort to keep standards aligned with current operations.
- **Beverage — Banquet Bartender KBI mapping** — fixed live. The standard had never generated a shift since original setup because it was driven by group-booked banquet business only; now captures local/day banquet business as well, correcting a real historical under-crediting of bartender hours.

## Labor Structure
- Beverage job codes fully separated by outlet and moved into their own Beverage department, with a clean data migration (see Implementation above).
- **ADP Labor Structure review** flagged with Lou for the next working session.
- A minor job-code naming inconsistency (the Main Dining Room "Server" job lacks the outlet prefix other jobs carry) was identified for future cleanup.

## Planning & Schedule Timeline
- **This week's most consequential finding:** the recurring gap between when covers/KBI data is entered and when standard-hours generation actually runs was independently confirmed in three separate departments this week (F&B covers, Beverage/Carriage Lounge, and the standing Thursday–Sunday gap) — strong evidence of one systemic timing issue rather than isolated department problems.
- Weekly Timeline was updated into an editable Excel document. The timeline was realigned to a new cadence which allows more time for schedule editing and completes the schedule a day earlier for employees.
- **New weekly cadence proposed:** Revenue Center forecasts generated by Monday 12:00 PM, edits complete by Tuesday noon, schedules built through Thursday noon, labor meeting moves from Wednesday to Thursday 2:00–3:00 PM, schedules posted Thursday evening — a full day earlier than today's practice. Compressing the timeline does leave less margin for error if data feeds run late; no specific mitigation locked in yet.

## Database Status
- Stable. This week's configuration work was primarily cleanup and restructuring (Beverage) rather than new build.

## Unifocus Mobile App
- Adoption remains partial — concentrated in F&B.
- The employee-facing schedule-change notification feature is confirmed not working correctly; recommend resolving this before pushing broader adoption harder.
- Stronger appetite at the ownership and department-head level for a dedicated future push toward full native-Unifocus/mobile adoption property-wide.

## Standards Test
- Not formally re-run against the 2026 budget this visit. Discussed a method of comparing the budget to an eight-week Weekly Labor Summary or monthly Labor Effectiveness Report. Recommended as a future-visit action to compare labor standards to 2026 budget and prepare to use the standards in 2027 budget cycle as an extra set of eyes on the labor budget.

---

## Planning Going Forward

**Training**
- Combined schedule-printing training session for Call Center, Front Desk, and Housekeeping — these departments still maintain duplicate Excel/macro schedules alongside Unifocus.
- Continued advanced-topic follow-up with Kidane Mikael (Dining Room Manager) as he takes on more of the department's Unifocus administration.

**Configuration**
- Resolve the Granary/Founders rain-contingency covers-vs-labor coding mismatch.
- Build labor standards for banquet culinary workload — none currently exist today, and banquet production has been fully absorbed into the main kitchen with no clear attribution, contributing real unattributed overtime. Plan agreed: standards by meal type (plated vs. buffet), format, and volume breakpoints, applied across culinary, stewarding, and service.
- Resolve Culinary Extern/Intern ADP job-coding — decide between time-clock job selection and the ADP "punch to schedule" investment (see Interfaces above).
- Investigate partial-shift generation on run-rate-based standards, flagged by Main Dining Room department leadership. Showed manager this is working as designed.

**Interfaces**
- Confirm the Thursday–Sunday generation gap is actually closed over a full live cycle before trusting it fixed — two candidate fixes now in play: Bron's Tuesday 1:00 AM interface-transfer change (implemented 8/6/26) and a separate import-timing adjustment Unifocus's own integration team made when closing UNIFOCUS-252999 on 8/10/26. Neither is independently validated; ticket has a 72-hour reopen window expiring ~2:51 PM CDT 8/13/26.
- Evaluate extending covers automation to the full week (not just Tuesday) to close the timing gap at its source.
- Resolve the Front Desk overnight-hours reporting gap once the ADP Pay Code discrepancy is confirmed.
- Continue monitoring the banquet-actuals-overwritten issue through to a completed fix.

**Other**
- Complete the Weekly Labor Timeline rebuild following Friday's wrapup meeting.
- Scope a dedicated future visit focused on driving full adoption of Unifocus as the single source of schedule generation, editing and distribution.
- Bron to confirm by Monday, August 10 whether the banquet automation interface is ready to support the new weekly cadence.
- A single-system mandate was proposed — all schedules generated and printed from Unifocus, retiring parallel Excel/paper processes property-wide — along with targeted 1–2 hour adoption training for the lowest-adoption departments (Suspects: Recreation, Spa, Properties, Housekeeping).
- Consider a combined Data Analyst/Labor Management role (potentially half-time) to own ongoing WFM operations, training, and analytics.

---

*Draft prepared 08/07/26 from this week's onsite session notes. © Peter A. Castellano. All rights reserved.*
