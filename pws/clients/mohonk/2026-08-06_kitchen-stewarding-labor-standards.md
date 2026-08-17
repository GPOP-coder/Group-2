<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# 08-06 Kitchen Stewarding Labor Standard Meeting: All-Inclusive Beverage Model, Labor Standards, Scheduling, and ADP Integration

**Date:** August 6, 2026, ~12:01–1:31 PM, 1h29m42s recording.
**Calendar title:** "Labor Standard Meeting – Kitchen," Thu 1:00–2:30 PM per `kb.md`'s existing calendar note — **Pete didn't personally record this one; it surfaced later in Bron's Plaud batch.**
**Participants (per `kb.md`'s existing calendar-context entry, cross-confirmed here):** Bron Walis, Patrice Huart, James Palmeri, Lou Petruzzelli, Pete Castellano, plus **Josh** and **Jim** (Kitchen) as the two managers the review centers on.
**Source:** Bron's Plaud AI meeting notes (complete, below) + verbatim transcript (**partial — through ~00:51:49 of 1h29m42s; remainder not yet received**). **Speaker attribution now resolved from context, superseding the "requested from Bron" flag in `kb.md`: Speaker 1 = Pete, Speaker 2 = Lou, Speaker 3 = Josh (confirmed directly — dishwashing/Garden View Cafe/overnight cleaners, matches Basic Training exactly), Speaker 4 = Jim (confirmed directly — schedules the cooks, matches Basic Training exactly), Speaker 5 = unclear, one brief line, possibly Bron.**

**This is a direct, same-day continuation of the 08-06 Basic Training session** (`2026-08-06_basic-training-housekeeping-kitchen-recreation.md`), not a fresh unrelated meeting — the content confirms it:
- **Josh's Employee Maintenance access gap, raised live in Basic Training (00:09:44) and again for "sub only" specifically (00:51:18), resurfaces here as an unresolved, still-open permission issue** — "a user from the stewarding department reported a lack of access to 'employee maintenance' features." Same person, same day, same unresolved gap.
- **Josh's exact department scope from Basic Training (dishwashers under Utility, Garden View Cafe attendants in a separate department) is described identically here.**
- **Jim's live challenge to Pete in Basic Training** ("there's no banquet department in the kitchen... I'll challenge you on that") **is confirmed correct in this session: "There are no banquet cook standards in the system."** Jim was right; the gap is real, not just a reporting/visibility issue.
- **The culinary-intern ADP job-coding problem Jim raised in detail in Basic Training** gets a much deeper, solutions-oriented treatment here (job-code-at-clock vs. ADP's "punch to schedule" feature), rather than being a new discovery.

---

## AI Meeting Notes (Plaud summary, in full)

### Informal Discussion on All-Inclusive Models
Opens with an informal tangent: a positive dining experience compared to a cruise (no per-meal billing anxiety) led to discussing whether rolling beverage costs into room rates could work at Mohonk. Noted: people drink less than they used to, so a standard-beverage inclusion is a relatively low-cost amenity; premium options could stay a la carte. Cited: Twin Farms (standard beverages included, premium extra), MSC Yacht Club, Carnival's drink packages. Framed as potentially shifting focus from consumption volume to guest experience.

### Reviewing System Standards and User Needs
Agreed to review system standards focused specifically on Josh's and Jim's departmental needs — goal: identify opportunities to build their knowledge and improve system usage/responses.

### System Access, Features, and Data Management
Josh (stewarding) reported no Employee Maintenance access, blocking even simple tasks like changing an employee's schedule display name. Pete suggested checking whether this can be enabled at the user-group level. Most employee fields (phone, email) are overwritten daily from ADP — display name is not, and it's preferable for HR to manage contact-info changes through ADP for consistency rather than editing directly in Unifocus. Josh is experimenting with schedule groups to separate AM/PM dishwashing teams, Garden View Cafe attendants, and overnight cleaners for cleaner printed schedules. **System still contains old terminated-employee profiles (Gloria Nesser, Paternilla) needing removal.** Confirmed Josh's staff crosses departments (dishwashers under Utility, Garden View Cafe attendants elsewhere) — discussed granting "Scheduler Supervisor" access or using op codes to manage this for reporting.

### Operating Codes (Op Codes) Setup and Reporting
Reviewed Setup → Labor → Operating Codes — a "Culinary All" op code already exists. Op codes enable custom job-package reporting but require granted permissions. **Decided: remove Utility and Garden View Cafe from "Culinary All"** to stop cross-departmental report contamination. Ran the Labor Effectiveness report for 7/27–8/2/26: **after the op-code scope fix, weekly variance improved from -12% to ~-2% under standard (~7 shifts for the week)** — purely from the reporting correction, not an actual staffing change. Labor Effectiveness supports multi-period analysis (week/month/quarter/year) in a condensed format but requires manual date entry; Weekly Labor Summary is easier week-to-week but less condensed.

### Scheduling Strategies and System Settings
**Confirmed the same default-distribution problem already found in Basic Training that morning (Josh's own question): left-to-right auto-fill order creates weekend shortages** — proposed testing "Balanced Schedules" to spread shifts more evenly; "Peak" scheduling (busiest days first) also noted as an option. **Sub Only** reconfirmed: prevents auto-assignment, manual scheduling still possible — recommended as the default for all secondary jobs, especially multi-role culinary staff. **Regular vs. Permanent** reconfirmed per the morning session (Regular pre-populates typical assignments and lets the auto-scheduler fill the rest; Permanent always places the employee even over the staffing count, use sparingly). **Thermometer, concrete new example: hour caps can be set per employee** (e.g., 32 hours for J-1 visa holders specifically) to guide the auto-scheduler and prevent over-scheduling. **New pattern for rotating staff groups arriving every 3 months: a "set it and forget it" strategy**, or alternatively mark them Required Off/Sub Only for every job and add shifts manually as needed.

### ADP Integration, Time Clock Management, and Labor Reporting
Reconfirms the culinary-intern ADP problem in full (interns register only under their primary "Culinary Intern" title, not their actual Unifocus-scheduled kitchen job, so all hours land on one line). **Two options discussed in more depth than the morning session:**
1. **Job selection at the time clock** — requires every possible job code to be available at the clock and staff trained to select correctly; risk explicitly named: a "payroll nightmare" auditing wrong selections.
2. **ADP's "punch to schedule" feature** — requires sending the Unifocus schedule to ADP daily, letting employees punch into their actually-scheduled job rather than their default one. **Reported as working effectively elsewhere.**
Labor reporting across separate departments is difficult with a single report — **Weekly Labor Summary is the only report that combines data across departments.** Interim fallback for interns: let all hours land under one "Culinary Intern" code and track against a single budget line rather than trying to split it.

### Overtime Drivers and Staffing Structure
Overtime primarily driven by **longer daily shifts, not extra days** — most employees already get two days off. **Sous chefs (now hourly) consistently run 10-15 OT hours/week in peak season.** Staff mix skews toward culinary externs over tenured cooks, making the kitchen inherently training-oriented — cutting staff early damages service setup due to real skill gaps. **Significant banquet culinary staffing gap confirmed**, absorbed into the main kitchen, driving overtime. Employee Schedule Analysis Report flagged as the right diagnostic tool (scheduled vs. actual punch times, shifts over 8 hours highlighted).

### Banquet Operations, Labor Standards, and Staffing
**Confirmed: banquet operation fully absorbed into main kitchen, causing significant, not-clearly-attributed overtime — 450 hours in one high-volume period.** **No banquet cook standards exist in the system at all.** Agreed plan: build detailed standards by meal type (plated vs. buffet), format, and volume breakpoints (minutes-per-unit), applied across culinary, stewarding, and service — matching the discipline already used for F&B service standards. **Cook staffing is rigid, based on fixed station counts that don't flex with cover volume** (unlike servers, which do flex) — flagged as a structural mismatch. **Dishwasher staffing currently keys off room guests broadly** — needs updating to more specific drivers like Founders covers and banquet covers specifically. **H-2B staffing:** requests must go in far in advance; ran short-handed this summer (received 8 of 9 requested H-2Bs, sent 1 home early), plan to request **10 H-2Bs next year**; international staff start/end dates need to align with business needs, with **winter 2028 construction impacts** specifically flagged as a planning constraint.

### Budgeting and Staffing Guide Creation
**The labor standard itself becomes the staffing guide once fed real daily volume data** — reinforces the property-wide direction already well-documented elsewhere in this KB. Volumes can be entered manually into Unifocus's Budgeter. **New technique for metrics without daily granular data (e.g., restaurant covers): apply room-occupancy's own daily percentage swings as a proxy shaping curve** to create realistic daily fluctuation rather than a flat monthly number — a concrete variant of the shaping technique already documented from the 8/3 PM session. Confirmed **Budgeter is used by roughly one-third of Unifocus's user base, with Hilton cited as a mature user.**

### Next Arrangements
- Remove Utility and Garden View Cafe from "Culinary All" op code; re-broadcast the change.
- Grant necessary op-code permissions to relevant users.
- Rerun Labor Effectiveness and Weekly Labor Summary for 7/27–8/2/26 after the op-code fix.
- Check whether user-group permissions can enable the "display name" field edit.
- Verify whether users can change "sub only" status themselves and report back.
- Build and document banquet labor standards by meal type, format, and breakpoints.
- Prepare and share standard-setup worksheets ahead of time (Pete).
- Configure banquet standards across cooks, stewarding, and service.
- Investigate/confirm where banquet culinary labor currently lands within main-kitchen job codes.
- Re-examine and adjust the dishwasher staffing model to account for all event types.
- Implement and monitor "Balanced Schedules," follow up in two weeks.
- Use Employee Schedule Analysis to pinpoint F&B overtime sources.
- Ensure all culinary interns' primary job is set Sub Only Yes, with all relevant secondary jobs assigned.
- Coordinate with HR to ensure all potential job codes are assigned to new culinary hires at onboarding.
- Confirm with HR that employees can actually see/select from all assigned job codes at the ADP time clock screen.
- Implement Regular schedules for all employees as a consistent starting point.
- Align international staffing timelines with winter 2028 construction impact.
- Submit HR request for 10 H-2B positions for next year (owner: Jim, per the AI notes' "Speaker 3" — cross-check once verbatim/attribution is confirmed).
- Review hours-transfer error reports; fix entries that didn't attach to a specific employee.

### AI-Flagged Open Items (not concluded in the meeting)
- No definitive strategy chosen between clock-selection, ADP "punch to schedule," or another approach for intern job-code transfers; "punch to schedule" availability itself unconfirmed.
- Core ADP-doesn't-reflect-actual-job problem remains unresolved pending the clock-selection verification/implementation.
- No clear ownership/timeline for building and configuring the new banquet cook standards.
- No defined method yet to attribute overtime specifically to banquet workload.
- No defined process for removing stagnant/terminated employee profiles.
- Josh's Employee Maintenance permission gap has no concrete resolution yet, just a "check if it can be enabled" next step.
- Op-codes-for-cross-department-reporting discussion inconclusive, needs follow-up.
- No contingency plan for H-2B shortfalls/volatile applicant flow.
- Station-based cook staffing rigidity at lower cover counts identified, not resolved.
- No policy/scheduling evaluation done yet on the sous-chef hourly-overtime pattern (10-15 hrs/week).

---

## Transcript (partial — through ~00:51:49 of 1h29m42s)

```
00:00:08 Pete: [Opening banter] References the Basic Training session that just wrapped — "good part of my morning was still Unifocus, but not here... I'm starting to get my arms around what's involved" (Lou). Pete: the morning was lightbulb-moment territory, especially Housekeeping, some of whom had never used the system at all — real misconceptions about what it does and doesn't do. "Sometimes the best thing to know is what it doesn't do."
00:02:44 Pete: [Extended personal tangent on a dining experience, cruise-style all-inclusive comparisons, Twin Farms, MSC Yacht Club, Carnival drink packages — matches the AI notes closely, condensed here.] Lou floats the idea of rolling beverage into room rates given declining consumption trends and Twin Farms' model.
00:05:48 Lou: Proposes starting with Josh's and Jim's specific standards issues today, one-on-one, since they're both in the room — a chance to add real knowledge where it helps them most directly.
00:06:24 Josh: **Confirms directly he has no Employee Maintenance access at all** — can't even change a display name (e.g., an international employee whose given name isn't what they want shown on the schedule). Uses Schedule Groups but not exclusively — separates AM/PM dishwashing, Garden View Cafe attendants, and overnight deep cleaners into four groups for print legibility, not yet fully committed to Unifocus as his sole scheduling source.
00:08:12 Josh: **Confirms the system still has stagnant, long-terminated employee profiles** (Gloria Nesser, Paternilla) that need removal.
00:08:24 Pete: Confirms Josh's dishwashers sit under Utility, Garden View Cafe attendants in a separate department — proposes either "Scheduler Supervisor" access or an opcode to let Josh manage/report on both together; notes this wasn't gotten to in the morning class.
00:09:15 Lou: Notes going through all proposed setups is one of his own follow-up tasks.
00:09:32 Josh: Currently just runs two separate reports (Garden View Cafe, then Utility) rather than combining — not a big deal for him personally, since Garden View Cafe's headcount is small and stable week to week, unlike dishwashers.
00:10:10 Pete: [Live in User Administration, checking Josh's display-name permission] **Can't immediately tell if display-name access can be toggled independently of full general-edit access** — flags it as a genuine follow-up item to check, not resolved live. Confirms: **everything else editable on that screen gets overwritten daily from ADP except display name**, which does not sync from ADP at all.
00:12:47 Josh: **States a clear preference: he'd rather HR own contact-info changes through ADP for consistency** — but display name specifically (which doesn't come from ADP) is the one field he actually needs control over, especially for international staff whose legal name isn't what goes on a nametag or schedule.
00:13:20 Josh: **Also confirms no permission to set "sub only" himself** — same gap already flagged in Basic Training that morning, still unresolved. Pete double-clicks to demonstrate where it lives; Josh isn't sure if this was ever available to him or just changed.
00:13:59 Pete: [Explains sub-only again, consistent with Basic Training] **Recommended default: mark every secondary job sub-only "yes" except the true home job** — broaden deliberately from there only as needed.
00:14:53 Pete: **Reinforces that adding/removing an employee's job codes should be centralized (System Administrator/HR level), not opened up broadly** — "not because you can't [do it right], but there are implications farther down the road."
00:15:12 Pete: **Directly names a real, specific configuration error: the Culinary Intern/Extern job code currently carries an actual labor standard, and it shouldn't** — interns should have zero standard on their primary/generic job, with all their real secondary jobs marked sub-only so they can be scheduled into what they're actually doing.
00:16:05 Jim: **Confirms he's already built out the real job assignments for his cooks in Employee Maintenance (with Casey's help)** — but ADP's weekly download still only attributes roughly half his staff's hours to "Culinary Intern," meaning outlet-level reports (e.g., Founders) look understaffed even when correctly scheduled in Unifocus.
00:17:17 Pete: **Confirms employees genuinely can select their specific job at the ADP time clock already — it's not a technical limitation, just requires (a) the right job codes actually being assigned to that employee in the first place, and (b) training staff to do it.** Recommends having the employee self-select, with the manager auditing/approving afterward.
00:18:01 Josh: **Clarifies a key distinction: the ADP-to-payroll reconciliation is already accurate today** — his team manually audits and corrects it every week during payroll processing. **The problem is specifically that Unifocus's own labor reports never see that corrected picture**, since the correction happens downstream in ADP/payroll, not in what feeds Unifocus.
00:18:43 Jim: **Proposes the real fix belongs at onboarding: HR should assign every relevant kitchen job code to a new culinary hire in Unifocus at hire time**, eliminating the need for Jim to keep requesting new job codes as interns rotate between stations under the J-1 program.
00:19:44 Pete: [Searching live] Confirms the "Culinary Extern" job code lives under Kitchen Main. **Restates: this job should carry no labor standard at all — it's a pure passthrough/primary-job placeholder, and the real work should always be captured on the actual secondary job the person is scheduled into.**
00:20:29 Jim: Confirms this is essentially what he's already doing manually in Unifocus, job by job, as needed — his real concern remains that **Unifocus-side setup being correct doesn't matter if ADP's own weekly download still won't reflect it.**
00:21:59 Pete: [Working through the mechanics] Confirms an employee has broad freedom to select essentially any job code at the ADP clock once it's assigned to them — flags a real, if minor, fraud-adjacent risk in the abstract (an employee self-selecting a higher-paying code) but explicitly downplays it as unlikely to matter at Mohonk's scale/culture specifically.
00:23:24 Josh: **Clarifies the actual current blocker precisely: a culinary intern's ADP time-clock screen only shows whatever job HR entered for them there — generically "Culinary Intern/Extern" — regardless of what's correctly configured in Unifocus.** The fix has to happen on the ADP/HR side (assigning real options at the clock), not just in Unifocus.
00:24:22 Jim: Confirms he believes he's already handling this reasonably well from the Unifocus side for scheduling purposes specifically.
00:24:32 Pete: [Live demo, building a Regular schedule for one of Jim's cooks] Walks through setting a recurring Regular schedule (a specific shift, specific job/assignment, specific days) for a real employee (unnamed, works Carriage Lounge and Granary) — **reinforces "put something on every employee for every day," even a wide-open placeholder window, as a visible signal that Employee Maintenance is actually done for that person, one less thing to troubleshoot.**
00:26:16 Pete: **New mechanical nuance, not previously documented: Regular schedules are filled first, but if the standard calls for fewer shifts than there are Regular-scheduled people for that job, Regular will "run out of gas" — it won't force extra shifts into existence, it'll just select from among the Regular people up to however many the standard actually calls for.** Permanent, by contrast, **will** force every marked person onto the schedule regardless of what the standard says — the bottom-line target number still won't match, but everyone gets placed anyway.
00:27:44 Jim: Asks directly what Permanent buys him over Regular.
00:27:50 Pete: **Clarified recommendation: use one strategy consistently (all-Regular, all-Permanent, or sparing use of each) and let the auto-scheduler do the rest — if you find yourself hand-editing the same shift every week, that's the signal to promote it to Regular; if Regular still isn't sufficient, escalate to Permanent.** Regular should be sufficient for the large majority of cases.
00:29:21 Lou: Asks what percentage of Jim's staff are interns.
00:29:24 Jim: **"About 55%"** — confirmed a real, substantial majority, not a minor edge case. Lou confirms this shows up as a large "Culinary Extern" actuals number against a zero standard on the reports, requiring manual drill-down to the real positions involved to make sense of.
00:30:10 Jim: **Confirms the real operational constraint: interns rotate between stations "as much as I can without compromising service," requiring recurring manual Employee Maintenance upkeep every ~3 months when a new J-1 cohort arrives** — not a one-time setup.
00:30:45 Pete: Offers an alternative pattern: mark interns Required-Off/Sub-Only on everything by default, then manually add each week's real shifts as Regular — functionally similar effort, framed as "set it and forget it" either way.
00:31:20 Jim: **Explains precisely why he currently relies on copying schedules week to week: parts of the kitchen are genuinely fixed** (e.g., Founders is open Mon/Wed/Fri/Sun with the same six-person crew) — copying is a legitimate, deliberate choice for that stable portion, not just a habit to break.
00:31:57 Josh: **Raises a substantive, reasoned objection to the "let employees self-select at the clock" fix: from a payroll perspective, it risks becoming "a nightmare" — auditing hundreds of transfers weekly, with real observed error already (staff hitting the wrong job code even for occasional cross-department shifts). Explicitly questions whether pushing this responsibility onto ADP-side clock selection is worth it versus keeping job assignment entirely Unifocus-side.** This is a real, live disagreement with Jim's preferred approach — not resolved in this portion of the transcript.
00:33:11 Pete: **Introduces ADP's "punch to schedule" feature in more mechanical detail: requires sending the Unifocus schedule to ADP at least once daily** (cites a reference client running this at 5,500 employees, updated multiple times a day) — employees punch directly into their scheduled job rather than choosing manually, meaningfully reducing the self-selection risk Josh just raised, at the cost of needing the schedule to flow to ADP regularly. **Only governs today-forward — any correction to a day already past still happens manually in ADP.**
00:35:03 Pete: **Names the interim/fallback option explicitly: build labor standards so all intern hours deliberately land on "Culinary Extern," then evaluate only the combined total, ignoring the specific-job breakdown entirely.**
00:35:15 Jim: Confirms this is essentially already the current practice — manually totaling Garden View Cafe + Main Kitchen + Founders actuals and checking they reconcile to the whole, rather than trusting any single job-level number.
00:35:38 Lou: Asks whether interns are the primary source of the multi-job-code complexity generally.
00:35:44 Jim: Confirms yes — domestic hires get one real job code and get formally transferred when their role changes; **interns arrive fixed under one generic code and may work multiple different actual jobs within a single day.**
00:36:56 Pete: [Transition to reports] Pulls up the Labor Effectiveness Report — confirms no opcode has been built yet for this combined culinary view, despite Pete believing he'd made one previously while working with James.
00:38:06 Pete: [Live, Setup → Operating Codes] **Finds and reviews the existing "Culinary All" opcode** — includes Utility and Garden View Cafe, which Josh confirms he's still responsible for scheduling even though they're separate departments.
00:38:31 Jim: **Restates his banquet-culinary challenge from the morning Basic Training session directly again: "there's no banquet culinary [job/standard]."**
00:38:33 Pete: **This time responds more definitively: "we actually do have it... I don't know where. It's probably in Main Kitchen. It's not a separate job code, but we have a labor standard for it"** — defers fully resolving it until later in the same session ("we'll burn that bridge in a minute").
00:39:25 Pete: [Live, running Labor Effectiveness with the opcode as originally configured] **Reads the unadjusted number: culinary overall running 12% under standard — 558 hours under, $6,700 under** for the week.
00:40:36 Jim: **Pushes back immediately: "I agree that sounds good... but the reality is that something didn't get done."** A too-good aggregate number can hide a real problem just as easily as a too-bad one.
00:40:46 Lou: **Raises the real reason the opcode needs to stay department-scoped rather than fully blended: "Josh might be severely understaffed, but I might be considered overstaffed" if the two get combined** — a genuinely useful caution about opcode design generally, not just this instance.
00:41:24 Pete: Confirms the report does correctly include extern/intern actuals (they're paid, so ADP has the hours) — the issue is strictly about which *job line* those hours land on, not whether they're counted at all.
00:41:48 Pete: [Live fix] **Removes Utility and Garden View Cafe from the "Culinary All" opcode**, saves (no explicit save button — changes apply immediately), then re-runs the Labor Effectiveness Report.
00:45:05 Pete: **Reads the corrected number: only ~2% under standard for the week (~7 shifts)** — same underlying data, dramatically cleaner picture purely from removing the cross-contamination.
00:45:34 Jim: Confirms the department is running a genuinely large kitchen — many cooks, "if that's your plan, you're running it well." Notes it may still involve real overtime to hit that number.
00:45:47 Jim: **Explains the real overtime drivers in detail: not a headcount shortage in the traditional sense, but a structural one — the kitchen runs "very tightly staffed" with a workforce that's majority (55%) culinary externs, not seasoned/tenured cooks** (a point already surfaced by Unifocus's own reporting synopsis, which described the kitchen as fundamentally a training facility — consistent with the property's own marketing). **This drives real, specific overtime causes: undertrained staff need more front-end setup time and slower back-end breakdown, extending shifts past 8 hours** even without extra days worked.
00:47:23 Lou: Confirms the overtime pattern traces to shift *length*, not additional days.
00:47:44 Jim: **Vivid, concrete example: an 150-person wedding gets plated by Josh alone — no banquet cook role exists, banquet production is fully absorbed into the main kitchen with zero dedicated staffing**, directly reinforcing the still-unresolved banquet-culinary-standards gap.
00:48:18 Jim: **A second major overtime driver, previously undocumented in this KB: the property's 6 sous chefs were recently converted from salaried to hourly, and now consistently run 10-15 overtime hours/week each in peak season — accounting for more than half of the kitchen's total overtime.** Not framed as a complaint, just a real structural fact management should be aware of.
00:48:56 Pete: [Introduces the Employee Schedule Analysis Report as the right diagnostic tool for this] Runs it for Food & Beverage, unfiltered by opcode — shows scheduled vs. actual clock times side by side, bolding any shift exceeding 8 hours as the fast visual signal for where overtime is concentrated. **Distinguishes two distinct overtime patterns this report can reveal: people working too-long individual shifts vs. people working too many days** — Jim's kitchen shows the former, not the latter.
00:51:33 Pete: [Reading a specific flagged case live] Identifies an employee who worked an unscheduled day — likely a real-time swap ("can you take Wednesday off instead, I need you today") rather than an error.
```

**⚠️ Cut off here (~00:51:49 of 1h29m42s) — roughly 38 minutes of this recording remains uncaptured.**

---

*© Peter A. Castellano. All rights reserved.*
