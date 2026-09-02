<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran — Manager Training, Day 2: Employee Maintenance, Auto-Scheduler Controls, and Weekly Reports (AM Session B)

**Date:** September 1, 2026
**Location:** The Moran, Houston — onsite, day 2 of Pete's formal manager training week (training week of Aug 31, 2026; config was Steve Carrell's)
**Source:** Plaud transcript
**Participants:** Pete Castellano (PWS); Valeria Martínez, Director of Housekeeping — identified with reasonable confidence from context (see below), diarized in the raw transcript as "Speaker 3"; one additional unresolved participant diarized as "Speaker 2" (see below); Pete's repeated "you guys"/plural addressing throughout implies more attendees were in the room than were individually diarized.

**Confirmed format (Pete, 9/1/26):** this is **Part 2 of 2** of the single **9:00 AM, 3-hour group training block**, continuing directly from [2026-09-01_am-session-a-weekly-timeline-scheduling-training.md](2026-09-01_am-session-a-weekly-timeline-scheduling-training.md). All four listed attendees — John Christian (Manager), Valeria Martínez (Dir. Housekeeping), Arturo Almaguer (Engineering), Jerry Ranney (Engineering) — were together in one room; the "9:00/10:00/11:00/12:00" times on the property's Manager Meeting Schedule are a rough topic-focus order within this single session, not separate meetings (see [contacts.md](contacts.md)). The transcript opens mid-lecture with no fresh introductions since it picks up right after Part 1's break. Its content (an extended, detailed walkthrough of the Room Attendant labor standard, a contract-housekeeper example, and a housekeeping productivity-target question) is Housekeeping-heavy, consistent with Valeria being the dominant voice, though the discussion ranges across F&B (bartender/cook examples) and Engineering (closing remarks on labor-meeting attendance) as well — consistent with the full group still being present.

**Speaker identification detail:**
- **"Speaker 3" → most likely Valeria Martínez, Director of Housekeeping.** Supporting evidence: she describes a specific contract housekeeper by situation ("She comes in at nine because she lives very far... she stays and cleans the last couple of dirty rooms"), answers Pete's housekeeping productivity-target question directly ("Before it was one four five" — i.e., 1.45), and references property history from "HEI time" (a prior management company) — all consistent with a tenured Housekeeping Director.
- **"Speaker 2" → not confidently resolved.** This voice ranges across a state-labor-law comment, identifying an employee by nickname ("Low"), knowledge of that same employee's cross-outlet bartending assignment (Boardroom/TBR and Allegory), a comment on ADP/PTO timing, and the closing exchange about who attends the weekly labor meeting ("probably you... probably not engineering... Christian will probably be the one"). This breadth of cross-departmental knowledge (HR/labor law, F&B outlet staffing, scheduling/PTO process) doesn't cleanly match a single-department manager profile. It could plausibly be John Christian (Manager, scheduled 9:00 AM the same day) staying on into this block, but nothing in the transcript states a name — kept as "Speaker 2," unresolved, per house convention.

---

## 1. Reading a Labor Standard — The "Coffee Cup" Framework

- Pete's core framing: managers can **see** every labor standard for their part of the property (Setup > Labor Standards) but cannot change them. "There's no man behind the curtain."
- A standard has two parts: (1) the **shift** being built (start/end time, resulting shift length, e.g., an 8:00–4:30 shift naming convention reflects a 6-hour worked shift plus an added half-hour unpaid lunch), and (2) **how many of that shift to build**, driven by KBI volume.
- Worked example — **Room Attendant**: different start times by day of week (10:00 AM Saturday/Sunday vs. 8:00 AM weekdays). Minutes-per-unit logic: **30 minutes per departure**, **18 minutes per stayover at 92%** of the stayover count (accounts for guests who decline housekeeping via "D&D" — Do Not Disturb — signage). The system fills a running total ("pitcher") in these minute increments until it hits a full shift ("cup"), then starts a new one — producing some partial/under-filled shifts at the tail end, which is expected and not an error.
- **Staff minutes**: a separate KBI unique to (as far as Pete has seen) Room Attendant — counts headcount at a stand-up meeting and adds 15 minutes per person to the pitcher (so 10 people = 150 minutes = a new cup), scaling the standup-meeting labor cost with actual attendance rather than a fixed number.
- **Open HR question, not answered in session:** if an employee is scheduled exactly 6 hours, does the system's auto-added half-hour unpaid lunch mean they're required to stay the full 6.5 hours, or can they leave at 6? Pete flagged this as a real policy question for HR/legal, not something Unifocus decides — noted it varies by state and by management-company policy, used Texas/Tennessee as contrasting examples of loose vs. absent state enforcement.

## 2. Assignments — Label-Only vs. Labor-Standard-Driven, and Seasonality

- Two ways to use an "assignment" in Unifocus: (a) as a pure **label** (e.g., culinary stations — hot, flat-top, cold, desserts — same headcount regardless of station), or (b) as its **own labor standard** (different KBI-driven shift counts per assignment).
- Room Attendant specifically uses assignment-level standards for **seasonality** — e.g., a Daylight Saving Time vs. Standard Time split, each with its own start times and shift structure, because assignments can carry date ranges the way jobs alone cannot.
- Practical guidance: know whether your jobs use assignments by actually looking — it changes how you read the standard and how employees need to be set up to "catch" the right shifts.

## 3. Employee Maintenance — General/Status Tabs (Read-Only, ADP-Sourced)

- Path: from the Scheduler, hover an employee → **Edit Employee** (preferred over navigating Administration > Employee Maintenance directly, which requires a manual search).
- **General tab**: name, seniority, email, phone — all ADP-sourced and locked; even if a manager could edit it, ADP would overwrite it back. Only the **display name** is manager-editable.
- **Status tab**: also fully ADP-controlled (e.g., start date). Live example: an employee's Unifocus start date showed as the date MakeReady took over management, not her actual hire date — cosmetic only, not worth fixing unless HR wants to correct it in ADP; doesn't affect anything seniority-based since nothing in the system currently uses seniority.

## 4. Employee Maintenance — Jobs Tab and the "Sub Only" Flag

- Secondary jobs come across from ADP automatically; if a secondary job is removed in ADP, it disappears here too.
- **Live data issue surfaced #1 — bartender coded to a single job across two outlets.** An employee (nickname "Low," diarized as Speaker 2/Speaker 3 discussion) bartends in both the Boardroom (referred to as "TBR") and Allegory but is coded as a single generic "Bartender" job in ADP with no outlet distinction. Pete's read: this is likely an ADP coding gap worth fixing (each outlet's bartender should probably be its own job) but explicitly a **fix that has to happen in ADP**, not something to override in Unifocus. No fix was made live; flagged for follow-up.
- **Live data issue surfaced #2 — dual-job example ("Giubaldi").** A cook whose ADP record also carries a Steward job (unclear if still active) was used to demonstrate the **Sub Only** flag: double-click (or select + Edit) the secondary job → toggle **Sub Only = Yes**. This tells the auto-scheduler "do not auto-schedule this job for this person" — critical because by default, all secondary jobs import as Sub Only = No, meaning the auto-scheduler will happily fill a legitimate secondary-job shift for someone whose real intent was just to have that job on file as a backup skill. Pete: leaving this unset is one of the most common causes of the auto-scheduler appearing to "go haywire" after a new hire or a transfer — it isn't malfunctioning, it's doing exactly what it's told.
- Rates may or may not be visible depending on role (finance sees rates; this group did not) — Pete's caution: if rates are visible on your screen, don't leave the screen up in a shared space.

## 5. Employee Maintenance — Scheduling Tab (Auto-Scheduler Controls)

This tab controls the **auto-scheduler's** behavior toward a given employee — it does not directly control the manager's own edits.

- **Weekly-hours "thermometer":** defaults to 40 (24 or 32 if flagged part-time); manager-editable per employee but should generally not exceed 40 without deliberate reason.
- **Day Off Plans / Patterns:** not in use at The Moran — skip these fields entirely.
- Minimum hours between shifts and minimum days off are **already configured at the job level** (prevents back-to-back close/open pairs, e.g., in F&B) — nothing for managers to touch there.
- **Employee Availability** is the key manager-owned setting: every employee should have *something* entered for every day, even if it's wide-open. Two components:
  - **Required-off days** (e.g., a standing Monday/Tuesday off): add via the plus sign, set midnight–midnight with "0" hours — this auto-flags as **Required Off**, blocks the auto-scheduler, and renders as dashes on the schedule.
  - **Working-day windows**: should be at least as wide as the standard's shift range for that job (e.g., Room Attendant needs an 8:00 AM–4:30 PM window to catch the full range of possible shift times) and must be explicitly marked **Available to Work** — this is not automatic, and Pete noted he still forgets this step himself.
- **Variable / Regular / Permanent** — the three modes governing how strongly an employee's name is pinned to a shift:
  - **Variable** (default): the auto-scheduler picks based on availability + standard fill logic.
  - **Regular**: this person gets picked **first** for a matching shift; can override the shift's *time* for that person (e.g., pin someone to always start at 10:00 AM) but does **not** override the standard's headcount numbers — if the standard only calls for 9 of 10 possible shifts that day, a Regular person can still be left out.
  - **Permanent**: overrides **both** the shift time and the headcount — the name appears on the schedule "no matter what," even beyond what the standard says is needed. Manager remains responsible for the total headcount/hours coming out right regardless.
  - Pete's specific guidance: **Supervisor and Salary settings are not used at all** at this property. For most jobs, start with Variable, escalate to Regular only if needed, and reserve Permanent mainly for **Engineering**, where Pete recommends defaulting the whole department to Permanent so specific technicians' names are guaranteed on the schedule regardless of standard-driven headcount logic.
  - Demonstrated live (using a hypothetical example, "Stella Stewart," explicitly framed as a practice example rather than a real change): how to pin a person to a specific day/job/assignment combination under Regular.
- Once an employee's availability, sub-only flags, and mode are set, the schedule should show **solid dots and dashes** for that person — Pete's framing: this is a visible signal to any manager looking at the schedule that "employee maintenance has been done" for that individual, not just a cosmetic marker.

## 6. Contract / Temp Labor — Placeholder Employees

- Contract labor (a significant share of this property's staffing) is not represented by real named employees. Plan discussed: build **10–15 Room Attendant placeholder employees**, likely named something like "Room Attendant 01" with a last name of "Temp" (or possibly "Work Records") — exact convention **not finalized** in this session.
- Framing: a placeholder isn't a scheduled person, it's effectively **an approved purchase order for labor** — a way to consume standard-driven hours without assigning them to a real individual.
- Real example raised: one contract housekeeper who comes in later (9:00 AM, due to a long commute) and specifically cleans the last remaining dirty rooms at the end of the day — Pete's response was to defer exact handling to a follow-up working session with Monica rather than solve it live.

## 7. Employee Requests / PTO — Unifocus vs. ADP

- PTO/vacation/leave-of-absence requests are handled in **ADP**, not entered directly by managers in Unifocus. Once approved in ADP, they flow into Unifocus with a **roughly one-day lag** ("it will come over... not going to come to us until the next day" — flagged as a real timing consideration for last-minute VTO/holiday requests).
- If a time-off request is approved **before the Thursday schedule draft**, the system will honor it and simply not generate a shift for that employee that day.
- If approved **after** the draft, the existing shift is **not** silently removed — it deliberately still shows, paired with the new PTO marker, as a visible signal to the manager that "this was a live shift, it contributed to the numbers, now go decide what to do with it."
- Managers can also manually add a **time-off request directly in Unifocus** for things that never touch ADP (Pete's example: a personal reminder like "don't schedule me mornings next Thursday, I have a dentist appointment" while still working a full 40 hours that week). This does **not** talk back to ADP, payroll, or accrual balances — it's a scheduling-only reminder. Employees using the mobile app can submit these themselves, with comments.
- General guidance: let ADP carry all real time-off types; use the manual Unifocus entry only for scheduling-only exceptions.

## 8. Actuals and Manually-Entered KBIs

- Actual KBI data auto-imports from **ProfitSword** and **Delphi** in the background; most managers never need to touch the Actuals screen.
- **Two KBIs require manual entry on both the forecast and actual side, specific to F&B: Action Stations and Bartenders.** Their labor standards only activate once a number is manually entered — if left blank, no labor is generated for them. Pete offered a dedicated follow-up session on this with whoever owns F&B revenue-center forecasting.
- Currently, **Monica is manually entering actual banquet numbers**; this is expected to be replaced once Delphi's daily-file automation is live (see 8/31 session notes on the Delphi/Celeste/PMSfiles pipeline).
- Standards driven by occupied rooms (and similar KBIs) will not generate a backward-looking shift/comparison unless the corresponding actuals exist for that period.

## 9. Generate Standard Hours (Automatic, 4x/Day)

- Runs automatically **four times a day** — recalculates "how many hours should you have run" based on actual volumes as they land (actual rooms, banquets, covers from ProfitSword/Delphi).
- Distinguished clearly from **Projected Hours** (the pre-shift, forecast-based number used to build the draft schedule) — both use the same underlying standard/plan, so a change in the resulting hours traces back to a change in volume, not a change in logic.
- Practical takeaway for managers: **you don't have to wait until the end of the week** to see how a given day performed — "by tomorrow, you should be able to see how you did today," sometimes with a one-day lag if accounting hasn't caught up on volumes.

## 10. Reports — "How Did We Do Last Week?" (Weekly Labor Summary)

- Path: **Reports > Reporter**, search "weekly," star **Weekly Labor Summary** for one-click future access.
- Backward-looking by default — always requires moving the date back to the most recently completed week.
- Filter by division/department/job, or view everything; can later be refined by custom operating codes (op codes) that group related jobs (e.g., Room Attendant + House Person together) — op codes are something Monica has to build.
- **Four core numbers per job**: Projected vs. Scheduled hours, and Actual vs. Standard hours. Projected/Standard are system-driven ("the robot controls projected"); Scheduled/Actual are manager-driven ("that's you managing to your plan"). The report is **live** — editing the schedule changes the Scheduled number immediately on rerun, but Projected does not change retroactively (the system doesn't re-project mid-week).
- **Core discipline: "start at the bottom, work your way up."** Live example run for Housekeeping: Room Attendant alone showed **15% over standard**, which sounds alarming in isolation — but the whole Housekeeping department netted out at only **2% over standard** once House Person and other jobs were included (Pete's read: labor "saved" on Room Attendant likely shows up as House Person spend when house staff help strip rooms — a normal cross-job pattern, not necessarily a problem). Housekeeping should not be scrutinized job-by-job without first checking the department total.
- **Day-by-day applicability differs by job type.** Housekeeping should generally **not** be judged day-by-day (departures/stayovers can roll to the next day if a property isn't fully sold out); F&B outlets (bars, restaurants) and Front Desk **should** be judged day-by-day, since that demand can't be deferred ("it's in your face right now").
- **Show Breakdown Hours** toggle: splits regular employee hours from contract hours — flagged as worth validating in the early weeks (Pete: "I know that I had five supervisors here from contract labor — where are they? That is a legit thing for you to look at right now").
- **Weekly Hours** toggle: trends the actual-vs-standard variance across prior weeks (demo showed a hypothetical +2%, +12%, +23% progression) — a good multi-week "gut check" for whether a standard is trending consistently, though not something to bring to the weekly labor meeting itself. Pete's framing: the first couple of weeks of a new standard "don't mean anything yet" since the system is still tinkering/settling.

## 11. Reports — "Are We Ready for Next Week?" (Weekly Projected Schedule Report)

- Path: **Reports > Reporter**, search "weekly projected schedule report," star it.
- Auto-opens to the currently active planning week (through 9/12).
- Shows **Scheduled vs. Projected** hours and variance, by department/job — the forward-looking counterpart to the Weekly Labor Summary's backward-looking numbers.
- **Requires placeholder/temp employees (§6) to be built and scheduled** for contract hours to show up correctly in this report — an open dependency.
- Manager guidance for the weekly labor meeting: run this report **and** bring your actual draft schedule (even if it's still only on paper on the wall right now) — the discussion is "are you ready for next week," using the same two comparisons ("projected vs. scheduled," "actual vs. standard") consistently across every department.

## 12. Reports — Labor Effectiveness and Labor Productivity (with a Live Standard-vs-Budget Discrepancy)

- **Labor Effectiveness Report**: a condensed, higher-level single-page version of the Weekly Labor Summary; works over **any date range** (not locked to a single week) — flagged as useful for P&L prep once a full month of data exists (Monica is working on backfilling August). Shows worked hours vs. standard, plus overtime hours and (if the user has dollar access) overtime cost.
- **Labor Productivity Report**: same per-job actual-vs-standard view, plus a volume-based productivity metric (e.g., hours per occupied room).
  - **Live example — Housekeeping productivity discrepancy surfaced.** The report showed a productivity read of **6.17**; when Pete asked what the target should be, Valeria (Speaker 3) answered **"1.45"** ("Before it was one four five") from a prior era. Pete worked the math live: at the standard currently loaded, the department would need roughly **1,215 occupied rooms for the week** to reach that historical target — prompting Pete to question whether the standard is actually calibrated to the right goal.
  - **"Show Productivity Goal" toggle**: adds a static, manager-entered goal column for comparison — currently loaded value is **0.88**, sourced from a **prior ownership/prior management company's budget** that Monica does not fully trust (consistent with her note in the 8/31 session that inherited budget numbers haven't been re-derived under current ownership). This creates a real open question: if 0.88 is too low relative to the property's actual goal (possibly closer to Valeria's recalled 1.45), then "15% over standard" on Room Attendant may not mean the department is actually overstaffed — the standard itself could be miscalibrated.
  - Pete asked whether Housekeeping had a productivity-based standard prior to MakeReady; Valeria didn't have a definitive answer but named **"Chris"** (not otherwise identified in the transcript) as someone from the **HEI-era management** who would know more.
  - Pete's overall guidance for both reports: useful monthly-cadence sanity checks, not weekly labor-meeting material — a single week of data is too noisy to act on.

## 13. Dashboard (Not Yet Configured)

- Path: **Analytics > Dashboard** — a graphical rollup of the same numbers found across the other reports (no new information, different presentation).
- Not yet set up for this property — Pete could not even select a property in the dashboard during the session. Noted only so managers know it exists for later.

## 14. Export Options

- **PDF**: Pete's preferred default — timestamped, includes page breaks/headers/footers, drops to the local downloads folder.
- **Excel**: same content, headers/footers retained, but continuous (no forced page breaks) — better for larger departments.
- **CSV**: raw numbers only, for further manipulation elsewhere. Pete's assessment: PDF or Excel should cover what most managers need; CSV utility, if any, likely falls to Monica.

## 15. Weekly Labor Meeting — Who Attends

- Brief closing exchange on meeting attendance: Pete indicated Engineering likely doesn't need to attend the weekly labor meeting regularly, that **John Christian** will "probably be the one" representing/attending (with the possibility of a stand-in/backup), and one attendee (Speaker 2) affirmed. Not conclusively resolved for every department in this session — see Open/Unresolved.

---

## Side Notes (context, not actionable)

- Session ran roughly 75 minutes and finished about **five minutes ahead of schedule** — Pete's own assessment: "we nailed it."
- Pete is repeating this same training content multiple times this week — again the afternoon of 9/1 and again on 9/2 — for different attendee groups, consistent with the property's rolling Manager Meeting Schedule format rather than one all-hands session.
- Pete is onsite through the end of Thursday (9/3) and offered informal availability at the property bar in the evenings (barring live music) for follow-up questions outside the formal sessions.
- Managers were asked to go put their current (wall/paper) schedules into Unifocus as practice ahead of the next round of meetings.

---

## Decisions / Changes Made Live

- No permanent Unifocus configuration changes were committed live in this session — it was primarily instructional/diagnostic, using real employee records as teaching examples.
- **Demonstrated (not saved as a confirmed real-employee change)**: toggling the **Sub Only** flag to "Yes" on a secondary job (Steward, on a cook named "Giubaldi") to prevent the auto-scheduler from filling that secondary job unintentionally.
- **Demonstrated (explicitly hypothetical example, "Stella Stewart")**: setting up a **Regular**-mode schedule pin for a specific person/job/day combination.
- **Agreed in concept, not yet built**: 10–15 Room Attendant contract/temp placeholder employees, exact naming convention still undecided.
- **Flagged for follow-up, not fixed live**: bartender "Low's" single generic "Bartender" job code spanning two distinct outlets (Boardroom/TBR and Allegory) — identified as likely needing a fix in ADP, not Unifocus.

## Open / Unresolved

- **Six-hour-shift unpaid-lunch policy question** — does an employee scheduled exactly 6 hours have to stay the added 30-minute unpaid lunch, or can they leave at 6? Raised as an HR/legal question by Pete; not answered in session.
- **ADP job-coding gap** — bartender "Low" coded as a single job across two outlets (Boardroom/TBR and Allegory); likely needs correction in ADP. No owner or timeline assigned.
- **Contract/temp placeholder-employee build** — naming convention undecided; ~10–15 Room Attendant placeholders still need to be created (owner: Monica, working with Pete while onsite).
- **Housekeeping productivity standard vs. budget goal discrepancy** — system's loaded "Show Productivity Goal" value (0.88, inherited from a prior management company/ownership) vs. Valeria's recollection of a materially higher historical target (1.45, from the "HEI" era). Pete flagged this as worth investigating once more data accumulates; suggested "Chris" (unidentified) as a possible source of institutional history. Not resolved live.
- **Weekly labor meeting attendance** — not fully clarified across all departments; John Christian expected to typically represent, Engineering's regular attendance uncertain, backup coverage discussed informally.
- **UNIFOCUS-261575 (zero-shift schedule generation, filed 8/31 evening) was not explicitly named or discussed in this transcript**, but the session's mechanics are consistent with it still being unresolved: Pete described the property as **"not scheduled in the system yet"** and had managers manually key their current paper/wall schedules into Unifocus **"as practice"** rather than review or edit a system-generated draft, despite spending the bulk of the session teaching exactly the auto-scheduler controls (Sub Only, Regular/Permanent/Variable, availability) that would matter once shifts actually generate. This should be cross-checked directly against the ticket's status — this session offers indirect, not confirmed, evidence either way.

---

## Next

- Pete repeats this same content for additional attendee groups the afternoon of 9/1 and again on 9/2.
- Full property training continues through Thursday 9/3, per the property's Manager Meeting Schedule (see [contacts.md](contacts.md)); a tropical storm forecast to hit Houston 9/2 was the stated reason Engineering wanted its session completed early in the week.
- Follow-up needed: dedicated F&B revenue-center forecasting session (Action Stations, Bartenders KBIs), placeholder-employee build with Monica, and resolution of the ADP bartender job-coding gap.

---

*© Peter A. Castellano. All rights reserved.*
