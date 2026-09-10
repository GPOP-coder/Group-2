<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — Manager Training, Wednesday 9/9/26 (Sessions A+B, combined)

**Date:** September 9, 2026
**Session:** HMAlpha Unifocus Manager Training — first manager training day of the week (Wed AM), split into two recording files by a mid-morning break (~10:30–10:45)
**Attending:** Carlos Dela Cruz (Director of Rooms), Ramon Silva (Director of Housekeeping), Edson Lopez (Assistant Restaurant Manager), Juan Barrios (Chef de Cuisine), Mark Ziomek (GM — brief cameo), Valeria Ruvalcaba ("Val," HR — support/logistics contact throughout), Pete Castellano
**Source:** Plaud transcripts `09-09 A HMA Marriott DM_ Unifocus Manager Training-transcript.txt` and `09-09 B HMA Marriott DM_ Unifocus Manager Training-transcript.txt` — two files from one continuous session (break, not two separate meetings)
**Note on speaker attribution:** Auto-transcription labels most non-Pete speakers generically ("Speaker 2," "Speaker 3," etc.). Attribution below is inferred from the intro roll-call and each speaker's recurring subject matter (housekeeping questions tracking to Ramon, etc.) — treat as high-confidence but not certain; cross-check against `contacts.md` if precision matters later.

---

## 1. Session Framing

- First manager-level training session of the week (admin sessions ran Tue 9/8 — see `2026-09-08_admin-training-am.md` / `-pm.md`). Attendees went around the room with name, department, and prior WFM experience: Carlos Dela Cruz (Director of Rooms — housekeeping, front desk, security; previously used Hotel Effectiveness, never Unifocus); Ramon Silva (Director of Housekeeping — prior Unifocus/"JanaFocus" experience at a Loews property); Edson Lopez (Assistant Restaurant Manager — minimal system exposure, mostly clock-in/hours checking); Juan Barrios (Chef de Cuisine — no scheduling background, "not really familiar with this").
- Pete's standard framing repeated from the admin sessions: same core curriculum every property, tailored live to who's in the room; explicitly told the group he doesn't need the class himself (taught it monthly for 5 years) and is there to adapt it to them.
- **Live login issue:** Carlos's system invite link returned "invalid." Pete troubleshot live (checked for extra characters/spaces in the login ID, corrected it to match his email), issue persisted after the fix. Carlos independently opened a support ticket and CC'd Val — Pete used this as a live example of the correct escalation path (see §3).

## 2. Weekly Cycle — Manager-Level Walkthrough

Same one-page weekly cycle covered in the admin sessions, repeated here from the manager's operating perspective:

- **Monday morning:** system advances to the new planning week; rooms + banquet forecasts import automatically (rooms from ProfitSword, banquets pulled once from CI — a deliberately imprecise, single early pull, not meant to be BEO-accurate).
- **Monday 1:00pm – Tuesday 11:30am:** revenue center forecast generated and editable (F&B-relevant).
- **Tuesday ~11:45am (called "noon" loosely):** `Generate Projected Hours` then `Generate Schedules` run back-to-back — **makes shifts, then fills them, as two separate steps.** Pete's core distinction, repeated for emphasis: the system doesn't schedule *people*, it fills *shifts*; hours never appear as raw hours the way some other systems (Hotel Effectiveness, HotSchedules) hand them out.
- **Tuesday noon – Wednesday 3:00pm:** manager editing window.
- **Wednesday afternoon:** labor meeting — two standing questions only: *How did we do last week (and what can we learn)?* and *Are we ready for next week?*
- **Publishing:** one person, property-wide, publishes once the schedule is final — separate button/step from editing, not yet activated as a workflow at this property (schedules aren't being marked complete/approved yet, just built and edited directly).
- **Paychex cutover timeline (repeated from admin session, now given to managers directly):** continue entering schedules into Paychex as normal through **9/18**. Unifocus schedules begin transmitting to Paychex **9/19** (going forward twice daily, midday and evening). Anything entered into Paychex after 9/19 will get overwritten. Managers should treat the current live week (ending 9/18) as a **practice week** — put real schedules into Unifocus now so there's something to work with, understanding it won't govern payroll yet.
- **Daily habits that don't change:** punches/time-and-attendance approvals in Paychex must happen daily (only *approved* time feeds Unifocus, once overnight); time-off requests still go through Paychex, approved requests import overnight and will be honored by the next schedule generation if approved by end of day Monday.

## 3. Navigation, Help Resources, and Support Escalation

- **Help menu ("Online Help")** — searchable documentation, described to the group as "the book."
- **Online training videos** — full-length how-to videos linked in each user's invite email, described as "the YouTube of Unifocus."
- **Quick reference videos** — short 3–4 minute topic videos under the Help menu, described as "the TikTok of Unifocus."
- **Escalation path, explicitly modeled live off Carlos's login issue:** take a screenshot of the error → email it, **CC Val first** (she may already know of a related issue affecting others, and has an HM Alpha escalation contact) → if it needs a formal ticket, use Help → Unifocus Support → Open a new ticket (email-based; acknowledge the bounce-back receipt and forward that acknowledgment to Val too). Ticket system automatically loops in Susanna Briggs, Steve Carrell, Taylor Walton, and likely Devon Peters/Nicole Mendez on anything tagged HM Alpha.
- Val (Valeria Ruvalcaba, HR) was positioned explicitly by Pete as the property's ongoing first-line support/triage contact after he leaves, and as the person managing his on-site schedule this week.

## 4. Planning Menu and Scheduling Screen — Manager View

- **Planning menu:** most of it is admin/forecast territory managers won't touch (rooms/banquet forecast import, revenue center forecast) — walked past quickly since covered in admin sessions. **Manage Schedules / Publish** concept previewed (mark complete → approve → publish) but confirmed **not active** at this property yet; publishing will happen from inside the schedule editor once turned on.
- **Scheduling screen fundamentals:**
  - **Filter** (division/department/job, or schedule groups — not yet in use here) determines what you see; filter and schedule-group filters are additive ("and," not "or") — a common early confusion point.
  - **The only number that matters is "the numbers at the bottom"** (projected/standard shifts vs. scheduled) — repeated many times as the core habit to build. Day-by-day views are explicitly **misleading for housekeeping and banquets** (both driven by day-of-event/day-of-checkout labor that can't and shouldn't be spread evenly) — look at the weekly total, not daily swings.
  - **Visual cues on shifts:** a coffee-cup icon = system-generated shift; a small person icon = a shift a manager hand-edited; a small clock icon = a Regular/Permanent override; warning marks appear when a manager overrides a built-in rule (e.g., a 6th consecutive day or a "clopening" — close-then-open shift) — the system will warn but still allow these; it will never *auto*-create them.
  - **Unfilled ("open") shifts** can be dragged onto eligible employees directly from the top of the screen; the system will not allow an invalid drop.
  - Live example on Room Attendant: system generated shifts, filled roughly 65 of 92 for the week — gap traced directly to blank Employee Maintenance (no availability configured yet) and a shortage of contract-labor placeholders, not a system fault.

## 5. Employee Maintenance — Full Manager Walkthrough

This was the session's central teaching block — explicitly framed as "you control how the schedule gets filled; the system controls nothing about your department once the schedule exists."

- **General tab:** only the **Display Name** is editable (defaults to last, first — useful for long names or employees who go by a nickname). Everything else on this tab (name, ID, hire date, seniority date) is fed from Paychex and will get overwritten if edited manually.
- **Status tab:** view-only for practical purposes — even Pete/managers changing status (e.g., marking someone terminated) will get overwritten by the nightly Paychex feed if Paychex still shows them active.
- **Jobs tab:** shows home job + any secondary jobs (fed from Paychex). The **only** editable field is **Sub Only** (yes/no) — "yes" means this is not the employee's primary job and the auto-scheduler should treat them as a substitute only, not offer them that job's shifts by default. New secondary jobs come in **not** marked sub-only by default and must be set manually — flagged as an ongoing manager responsibility as staff transfer or get hired.
- **Scheduling tab (availability) — the core "catcher's mitt" concept:**
  - Set **Available to Work** windows and **Required Off** days per employee, based on the actual shift times the labor standard generates (must know your standards first — see §6).
  - **Preferred Off does not work as expected** — Pete's explicit guidance: don't use it; stick to Available to Work / Required Off only, and handle true one-off exceptions by hand.
  - **Override hierarchy, in order: Permanent → Regular → Variable.** Permanent locks a person into a specific day/shift no matter what (still consumes one of the standard's shift slots — doesn't add headcount beyond what the standard calls for). Regular is a lighter version — picks a person to the front of the line for a given job/time without necessarily forcing the shift's exact time. Variable is the default fill method. Recommended use: mostly Regular, Permanent sparingly (fixed schedules like Engineering are a reasonable exception).
  - Getting this right up front reduces repetitive weekly manual edits — anything typed into Employee Maintenance only applies going forward, never retroactively to an already-generated schedule.
- **Schedule Groups:** confirmed **not in use** at this property yet — pure labeling/filtering convenience, no functional effect; flagged as a future setup item with Val.
- **Assignments tab:** sub-job tagging within a job — e.g., "cook" split into line cook vs. employee-cafeteria cook, each potentially carrying its own labor standard. Confirmed **minimal/no assignment use** at this property currently. Seasonal example discussed: room attendant shift start time shifting from 8:30 (summer) to 8:00 (rest of year) can either be manually toggled on the labor standard by Val each season, or built as two seasonal assignments with date ranges — more setup work up front, less recurring manual toggling. **Not decided; flagged for Val to choose.**

## 6. Secondary Job Coding — Data Quality Issues Found Live

- **Chelsea** (a housekeeping employee) surfaced as an example of incorrect/incomplete secondary-job coding — shows as plain "attendant" rather than her actual mix of duties. Root cause traced to **Paychex's UI**: adding a secondary pay code doesn't let the user select the actual position — it only offers a free-text description field, forcing a workaround through Time & Attendance to add the job code manually, which doesn't always fully populate.
- **Sandra** (DOF) reported hitting the identical Paychex limitation independently.
- Ramon (housekeeping) plans to sit down with **Jesse Knox** next week to audit all housekeeping double-coding.
- **This is a Paychex-side data/UI limitation, property/HMA-owned — not a Unifocus configuration issue or a Pete/PWS action item**, consistent with the same-category gap flagged in the 9/8 admin sessions (see `kb.md` Open Items).
- Pete's guidance on **pay rate** when adding a secondary job: **keep whatever rate the property has already been paying** that employee for that work — Unifocus showing up shouldn't itself change compensation, including tipped-vs-non-tipped rate differences across an employee's two jobs.

## 7. Labor Standards Mechanics — "Cups," "Pitchers," and Banquet Units

- **Simple ("no matter what") shifts** — e.g., Housekeeping Supervisor: fixed shift count/times regardless of volume (e.g., 3 supervisors every day including AM/PM/an extra Sunday shift), because the standard is based on "do we have at least one occupied room" rather than a scaling volume. Public Area Attendant is a similarly simple 1 AM + 1 PM, 7 days/week standard.
- **Variable, volume-driven shifts (Room Attendant example)** — the standard shifts start time by day of week (e.g., 30 minutes later on weekdays vs. weekends), makes decisions in 15-minute increments, and every shift has a min/max (commonly 4–8 hours). **Rounding rule: rounds at the .5 threshold but biased slightly toward rounding up** (rounds up at .2 rather than exactly .5, to avoid creating too many extra partial shifts) — i.e., it favors making one more shift over leaving a gap.
- **"Pitcher and dropper" model (Housekeeping room attendant/departures example)** — instead of whole hours going into a cup at once, minutes accumulate a little at a time (e.g., 35 minutes per departure via a "dropper," minus a 10% credit on stayovers) until enough is collected to pour a full 8-hour "cup" (shift); the last partial cup is intentionally left short — described as "two short shifts every day, by design," not a bug.
- **Banquet/F&B model — units per shift, not minutes per volume:** e.g., 1 shift per 25 covers, using shift-length "cups" that vary by meal period (4-hour cups for breakfast/lunch, 8-hour for dinner, an add-on 3-hour cup for receptions) — speaks the department's own planning language rather than converting to minutes.
- **Standing rule restated for managers directly:** know your standards first (what shifts will be made) before trying to diagnose "the system is broken" — almost every apparent bug traces back to an unbuilt standard or blank Employee Maintenance data, not a system fault.

## 8. Reports for the Labor Meeting

- **Weekly Labor Summary** (backward-looking; search "weekly," star it to pin to the top under Labor Analysis) — roll the date back to the most recently completed week. Read it top (volumes/KBIs) to bottom (Actual vs. Standard, the number that matters). **For housekeeping and banquets specifically, only look at the weekly total, never day-by-day** — both are driven by concentrated single-day work (checkout day, event day) that will always look lumpy daily. Target: **under 5% variance** is unremarkable; **over 10%** invites a "what happened" conversation. The goal is arriving with an **"explainable variance"** (e.g., "we ran 60 hours over because of two full-shift trainings") rather than a vague "we were busy/slow."
- **Weekly Projected Schedule report** (forward-looking; search "weekly projected schedule," star it) — shows Scheduled vs. Projected/Standard for the upcoming week, by job/day. Same "look at the bottom-line number" discipline applies. This is the report that answers "are we ready for next week."
- Both reports generate as PDF (recommended default — saved to disk, printable, reusable without re-running); Excel and CSV export options also available.

## 9. Live Discussion — Temps and Heavy Checkout-Day Coverage

- A manager (likely Mark or a housekeeping-adjacent attendee) raised a concrete scheduling concern: with roughly half the housekeeping team currently temp labor, the auto-scheduler front-loads regular staff Monday–Friday and leaves weekends (the heaviest checkout days) disproportionately filled by temps, since it schedules **by peak day first, one day at a time, without looking across days.**
- Pete's explanation: the scheduler's decision-making is **day-by-day, not week-aware** — it exhausts available labor for the day it's working on (peak days first, per this property's existing "peak" method set by Taylor) and simply leaves shifts open once it runs out of people; it will not proactively redistribute temps or regulars across the week.
- **Practical lever discussed:** limiting the number of temp placeholders (e.g., capping at 5–6/day) causes the scheduler to intentionally leave excess shifts open on heavy days rather than overfilling with temps — those open shifts then have to be manually resolved (move regular staff, add more temps, or accept the gap).
- **Structural lever discussed:** avoid giving regular staff weekend days off by default in Employee Maintenance, since that's what pushes the system toward using temps on the very days you'd rather have regulars.
- **"Balanced schedules" method** was raised by the manager as a possible fix (schedule regulars first across all days before filling with temps) — Pete's guidance: **don't switch to it yet**; it still can't solve a day that's genuinely short on total labor, and the property should run the current "peak" method for a few weeks first and see what it actually does before changing methods.
- Not resolved live — flagged as a wait-and-see item once more contract-labor placeholders and full Employee Maintenance availability are built out (see Open Items).

## 10. Onboarding for Future Managers (Raised by Val)

- Val (HR) raised the practical question of how future new managers/backups (e.g., a backup for Carlos while he's away) get trained once Pete is gone — HM Alpha has how-to guides for other systems (Paychex, hiring) but none yet for Unifocus specifically.
- Pete's guidance: don't wait on corporate — assemble a simple onboarding email/packet linking the existing Online Training videos and Quick Reference videos (no need to reinvent them), and separately raise the gap with HM Alpha since Marriott Del Mar is very unlikely to be the first property to ask for a formal Unifocus onboarding piece.

## 11. Logistics

- Pete's on-site office hours: available this afternoon, tomorrow (Thu) afternoon, and Friday morning; flying out Friday ~4:00pm. Scheduling access to Pete's time runs through Val.
- Attendee mix for the rest of the week per the admin-session KB: Jesse and JD (John Davis) slotted for Thursday morning manager training.

---

## Open / Unresolved Items

- [ ] Carlos Dela Cruz's login — ticket opened live, unresolved as of end of session; confirm fix with Val/Unifocus support
- [ ] Decide seasonal room-attendant shift-time approach: manual toggle by Val each season vs. building two seasonal Assignments with date ranges
- [ ] Secondary job-code cleanup (Chelsea and others in housekeeping) — Ramon + Jesse Knox auditing next week. **Property/Paychex-owned data issue, not a Pete/PWS action item** — consistent with the same category of gap already flagged in `kb.md`
- [ ] Temp/checkout-day coverage tuning (temp cap, weekend-availability rules, possible future "balanced schedules" trial) — deliberately deferred until more Employee Maintenance/contract-labor data exists
- [ ] Build out remaining Employee Maintenance availability for all hourly staff (blank for most as of this session — expected starting state, manager's responsibility, not Pete's to complete beforehand)
- [ ] Val/HM Alpha to consider a written Unifocus onboarding packet for future new managers
- [x] Carried from 9/8 admin sessions, still unresolved as of this session — not newly discussed today: cashier vs. host job code cleanup; CI/banquet mapping accuracy (pending the 1:30pm 9/9/26 Stephanie Simmons session); arrivals/departures ProfitSword gap (property/HMA-owned)

---

## Related Files

- [Marriott Del Mar — Contacts](contacts.md)
- [System Admin Training — AM, 9/8/26](2026-09-08_admin-training-am.md)
- [System Admin Training — PM, 9/8/26](2026-09-08_admin-training-pm.md)
- [Taylor Walton Prep Call, 9/2/26](2026-09-02_taylor-walton-prep-call.md)
- [HM Alpha Client KB](../kb.md)

---

*© Peter A. Castellano. All rights reserved.*
