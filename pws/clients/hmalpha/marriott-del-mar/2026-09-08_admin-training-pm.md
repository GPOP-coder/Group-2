<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — System Admin Training, Session 2 (PM)

**Date:** September 8, 2026
**Session:** HMAlpha System Admin Training — second of two admin sessions this week, continuation of the AM session
**Attending:** Al Catino (Accounting/Payroll — primary attendee this session), Sandra Academia (DOF), Stephanie Simmons (Director of Sales — brief cameo mid-session), Pete Castellano
**Source:** Plaud transcript, `09-08 pm HMA Marriott DM_ Unifocus System Administrator Training-transcript.txt`

---

## 1. Scoping the Session to Payroll/Accounting's Actual Job

- Session opened with Pete explicitly scoping content to what's relevant for Al's payroll/accounting role, since much of the system (employee maintenance, scheduling, labor standards) isn't his responsibility day-to-day. Confirmed Al: won't run a labor meeting, doesn't need employee maintenance depth, cares mainly about **hours matching between Paychecks and Unifocus** and **payroll accuracy**.
- **Daily error emails (payroll-relevant):** two categories exist and Al should be added to the distribution if not already:
  1. **Employee transfer email** — fires when Unifocus doesn't recognize a job code on an employee transfer/hire; symptom is "why is this employee still showing in their old job" (the transfer silently fails to import) or a termination that can't process because the employee has activity (hours/shifts) after the termination effective date.
  2. **Hours email** — fires when Paychecks reports hours against a job code or employee Unifocus doesn't recognize; the employee simply won't import, and payroll won't match up to Unifocus reporting until it's fixed.
- Confirmed: **schedules have no bearing on payroll** at this property — Unifocus schedules don't gate or drive pay in any way, unlike some union/enforcement-heavy properties Pete has worked. Unifocus is secondary to Paychecks' time-and-attendance role; it only needs the two systems to "jive" for labor reporting to be trustworthy.
- Confirmed: **no salaried hours or dollars are being imported at all** right now (verified live later in §9's report review — salary department showed zero hours/dollars).

## 2. Labor Structure — The "Christmas Tree"

- **Menu path:** hamburger menu → Setup → Labor Structure (distinct from Labor **Standards** — a common admin mix-up Pete flagged explicitly, since Labor Structure's default view always opens to the Staffing tab, making it look empty until you switch to the shift-related standards tab, covered in §8).
- **Core framing:** Labor Structure is the foundation everything else depends on — divisions are folders, but **jobs are where the real work lives** (hours, employees, schedules all attach at the job level). Moving/deleting a job is disruptive — user permissions, KBI mappings, and historical data all follow the job, so restructuring should be deliberate, not casual.
- **Retiring a job — the "Do Not Use" pattern:** rather than delete a job outright, move it to a dedicated **"Do Not Use" division**, remove everyone's access to it, and confirm no code/employee/hours are still attached. Live example spotted: an orphaned job (appeared to be a leftover from a DoubleTree-adjacent setup) sitting in this bucket — flagged as evidence of an earlier uncertain build decision, not an active problem.
- **Job naming guidance:** job names should be self-explanatory on a printed schedule, separate from whatever paychecks calls it internally — e.g., don't just call it "Server" if there are multiple outlets; call it "Room Service Server."
- **Fields set at the job level** (walked through live using Night Desk Agent):
  - **Code** — cosmetic reminder only, no system function, tied to the master Alpha-wide labor structure that rolls all HMAlpha properties (regardless of brand/local naming) up to one corporate dashboard.
  - **Variance threshold** — defaults to ±5% on both schedule and actuals; drives the "give me only the ones that are out of whack" variance report.
  - **Productivity factor** (e.g., hours per occupied room, pounds per labor hour) — purely a comparison/reference number, shows on one report only (Labor Productivity Report, §10), no functional effect on scheduling. Pete's standing recommendation: **finance should populate every job/department/division line** with a real annual target — not urgent, but valuable once there's enough data to compare against.
  - **Show on Dashboard** checkbox — controls whether the job shows on the Labor Dashboard; not everything is auto-checked when a new job is created.
  - **Scheduling method** — controls fill order: left-to-right (day of week) by default, or "look at the peak" (busiest/hardest day scheduled first) — driven by property preference, set per job.
  - **Tiebreaker sequence** — full-time before part-time before contract labor (property should mark contract labor to fill last); no job rank in use here (non-union); falls back to job seniority date, then hire date.
  - **Minimum hours between shifts** — should be set on every job to prevent "clopening" (a close immediately followed by an open); the auto-scheduler will refuse to violate it (managers can still override manually with a warning).
- **TK codes and Reconcile codes — the actual paychecks-to-Unifocus mapping:**
  - **TK (timekeeping) codes** map a property code + 4-digit code + partial job description string from Paychecks — this mapping is **character-for-character sensitive** (dashes, periods, spacing). A cosmetic edit to a job description in Paychecks (even adding/removing a dash) can silently break the mapping and start generating "hours hating the job" errors.
  - **Work Records** uses a **separate code** for the same job (not the same as the TK code) — important because Work Records' interface historically required including the literal word "work records" or "contract" in some fields for technical reasons; Al flagged this as confusing/easy to misread, Pete confirmed it's a known quirk, not user error.
  - **Reconcile Employees** is a distinct nightly process from the hours import — importing an *employee* (new hire, transfer) needs its own correct code set, separate from importing their *hours*. A code mismatch on either side produces the two error-email types from §1.
  - **Explicit confirmation on scope:** Unifocus is "a slave to whatever's in Paychecks" — the property does not set up job structure independently; Unifocus adapts to match whatever Paychecks already defines.
- **Work Records hours import — confirmed deliberately limited scope:** Unifocus does **not** bring in employee names from Work Records, by design, even though some properties have tried — only bulk hours per job/day (e.g., 10 room attendants worked yesterday → 80 hours, not itemized per person). Overtime **is** captured in the bulk number and shows on specific reports (see §10), but the day-to-day labor reports mostly just care about total hours, not the OT/regular split.

## 3. Employee User Maps — Completed Live

- **Menu path:** Setup → Employee → Employee User Maps ("buried" under the hamburger/McMuffin menu — a set-it-and-forget-it screen).
- **Purpose:** links a **system user** (login/password identity, e.g., Al, Sandra) to their **employee record** (the paychecks-sourced identity) — separate from any manager-to-staff relationship. Pete flagged suspecting some support tickets trace back to this step being skipped, even for non-mobile properties, though he can't prove the mechanism.
- **Done live for at least Al** during the session (search by name, click to link — confirmed by a link icon appearing). Property should complete this for **every** user, not just admins, as new users are cloned going forward — it's not automatic and has no default.

## 4. Employee Maintenance — Full Walkthrough

Framed as "their world" — this is what managers actually use week to week, reachable via Admin → Employee Maintenance or directly from the Schedule Editor (hover an employee → Edit Employee).

- **General/Status/Jobs tabs are Paychecks-sourced and get overwritten nightly** — any manual edit here (except one field) reverts the next day. The one exception: **Display Name** — useful for employees who go by a nickname (e.g., "Bob" instead of a long legal first name) so schedules read naturally; this field persists.
- **Status tab (Leave of Absence / termination) is a visibility control, not a system-of-record:** editing status here doesn't stick — it's driven by Paychecks. Putting a **begin date** on an LOA removes the employee from the schedulable roster starting that date (mid-week even); an **end date** brings them back automatically, even for a partial week. If no end date is given, they simply won't reappear until Paychecks says they're back.
- **Jobs tab — secondary jobs and "Sub Only":**
  - New secondary jobs default to **Sub Only = Yes**, meaning the auto-scheduler will never proactively assign that job to that person — it's purely a manual/substitute option unless a manager explicitly changes it. Rationale: prevents chaos when someone has many secondary job codes that don't all need auto-scheduling.
  - **Live audit findings** (two real examples caught during the walkthrough, flagged for the property to clean up before go-live):
    1. An employee doing regular shifts in **laundry and room attendant** work was coded in Unifocus **only as public area attendant** — meaning any actual room-attendant/laundry hours she works are being coded and reported against the wrong job. Pete's guidance: if this is real and ongoing, add the secondary job codes in Paychecks so the hours land correctly (rate doesn't have to change), rather than leaving it uncorrected because "it hasn't caused a problem" for pay.
    2. A second employee (barista who's also covered "close") was coded only under a job that looked defunct/no-longer-used. Flagged as a "please audit this properly" item — a good property-side project before go-live, not something Pete can fully resolve remotely.
  - **Framing given to the property:** now that labor *reports* depend on accurate job coding (not just payroll accuracy), miscoded secondary work that never mattered for pay will start mattering for report accuracy — worth a deliberate audit pass.
- **Jobs tab — Export to Paychecks checkbox:** must stay **checked** for real employees; contract-labor/placeholder employees should have it **unchecked**.
- **Scheduling tab — Availability (the core auto-scheduler input):**
  - **Every hourly employee needs *something* entered for every day** — either explicitly off (Required Off, a hard block honored absolutely by the auto-scheduler) or an available-to-work window wide enough to contain the relevant labor standard's full shift (including the unpaid lunch break the system adds automatically). A window too narrow to fit the whole shift means the employee **won't catch any shift that day**, not a partial one.
  - **Availability windows should not be over-restricted either** — Pete's caution: setting exact narrow hours "to be safe" can backfire and leave nobody eligible to catch a shift; wide-open windows on days someone genuinely can work any shift are fine and often preferable.
  - **Three scheduling-priority levels**, from lowest to highest override strength:
    - **Variable** (default) — respects Availability and the normal tiebreaker sequence (§2); Pete's default recommendation for most staff.
    - **Regular** — locks a person to a specific shift/job on a specific day, but does **not** override the labor standard's headcount — if 10 people are marked Regular for a 2-person slot, only 2 still get it (normal tiebreak applies among them). Use sparingly, for real recurring problems only.
    - **Permanent** — overrides **both** the shift assignment and the headcount — marking 10 people Permanent for a 2-person slot schedules all 10 regardless of the standard. Appropriate for genuinely fixed schedules (e.g., engineering's two-per-shift AM/PM staff, sales admins Mon–Fri) — "stamped" every week rather than manually re-entered; the manager remains responsible for editing to match the real standard afterward.
  - Salaried/supervisor scheduling levels exist in the system but **are not in use** at this property (hourly-only focus this week).
- **Schedule Groups** — property currently has **zero** set up (confirmed same finding as the AM session's Data-tab review). Pete's guidance: useful for filtered printing/viewing by a manager-defined grouping, but a common source of confusion if built without real forethought — every new hire needs to be manually added to a group or they'll appear to be "missing" from any schedule-group-filtered view even though they exist and are otherwise schedulable. Worth a deliberate conversation before building any out, not before Pete leaves this week necessarily.
- **Job Assignments (sub-skill tagging within one job)** — mentioned as available (e.g., splitting "cook" into hot/cold/dessert station sub-assignments so labor standards and auto-scheduling can differentiate) but **not yet used** at this property; Pete hadn't reviewed whether Taylor built any assignments during config, flagged to check later.

## 5. Live System Check — Auto-Scheduler in Action

- Confirmed with the group (same finding as the AM session) that **Employee Maintenance is not filled out for most staff yet** — the visible symptom in the Schedule Editor is missing "dots and dashes" (availability markers) next to employee names; managers should treat any blank rows as a red flag that Employee Maintenance still needs to be done for that person before trusting the auto-schedule.
- Reinforced the core teaching line from the AM session for this audience too: the system **fills shifts, it doesn't build a schedule "for" anyone** — Employee Maintenance quality directly determines how much manual editing a manager will have to do every week.

## 6. Mobile — Reconfirmed Not in Use

- Same finding as AM: mobile app is **off** for this property; not covered in depth. Employee User Maps (§3) still matters even without mobile, per Pete's standing recommendation across properties.

## 7. Payroll-Specific Q&A — Employee Requests & Actuals

- **Time-off requests:** approved requests flow from Paychecks to Unifocus once nightly (no immediate sync) — if a schedule already exists for that day when the approval lands, the manager (not the system) has to reconcile it manually; the system does not auto-erase the shift.
- **Work Records — Al's current role:** he prints and reviews punches for managers to correct, doesn't personally edit them — confirmed this workflow doesn't change with Unifocus; Unifocus is a second, independent set of eyes on the same underlying data, not a replacement process.
- **Labor Standards, from a payroll lens:** briefly acknowledged as not Al's primary concern ("how many hours should we be scheduling" vs. his focus, "did we pay them correctly for hours worked") — full standards walkthrough covered afterward for Sandra's benefit (see §8).

## 8. Labor Standards — How They're Built and Read

- **Menu path:** Setup → Labor Standards (separate from Labor Structure, §2) — always opens to the **Staffing** tab by default, which looks empty for any shift-based job; **must switch to the "Shift Related" tab** to see the actual standard. Called out explicitly as a recurring point of confusion.
- **Two building blocks, explained via analogy:**
  - **Shifts** are pre-defined time blocks (named anything — Pete's example "Bob" or "Clover" as playful shift names, though this property mostly uses a 4-digit-dash-4-digit naming convention) representing an **8-hour "cup."**
  - **The standard** decides how many "cups" get made and how full they get, using either:
    - A flat volume threshold ("no matter what" shifts) — e.g., **Night Desk Agent**: 1–infinity occupied rooms always generates the same fixed shift pattern (9 single shifts across the week, double coverage Tue–Sat nights). This is the simplest standard type.
    - A **"pitcher and cups" per-unit model** — e.g., **Room Attendant**: minutes are "dropped" into a pitcher per unit of work (35 min/departure at Marriott Del Mar's build, 16 min/stayover counted at ~90% — the DND assumption), the pitcher's total minutes then pour into sequential 8-hour cups until minutes run out, with the **final cup deliberately short** (minimum 4 hours) rather than forcing a clean full shift. Pete's explicit guidance: this is **expected behavior, not a defect** — the two shortest shifts each day will tend to "bubble up" and be easy for managers to spot and fill/edit.
- **Standard-set structure:** only **one** standard set exists today (everyone has access); a future **budget standard set** is anticipated (e.g., for the 2027/2028 budget cycle) once the property is ready to separate "how we actually staff" from "what we budgeted."
- **Housekeeping's other jobs** (house person, public area, laundry) briefly previewed as more variable/judgment-driven builds than room attendant, tied to prior-day occupancy and departures rather than a single clean driver — not walked in full detail this session.
- **Explicit reminder:** finance should be closely involved in any future standard changes, since the long-term goal is for the labor standard and the budget to converge (see §10's productivity-vs-standard discussion).
- **Audit trail confirmed available** on standards (who changed what, when) — same audit pattern as forecast edits (§6 of the AM session).

## 9. Labor Structure Cleanup Note — One Live Correction

- While reviewing Night Desk Agent's standard, Pete found and removed a redundant "No Break" override that had been set to the same value as the default (a harmless but unnecessary manual override Taylor had left in config) — flagged good-naturedly as something to double check elsewhere, not a systemic problem.

## 10. Reports & the Weekly Labor Meeting Toolkit

Menu path: hamburger menu → Reports → Reporter (star a report to pin it). Two reports specifically prepped for managers (starred live): **Weekly Labor Summary** and **Weekly Projected Schedule**.

- **Weekly Labor Summary** (backward-looking, answers "how did we do last week"):
  - Defaults to the current (unfinished) planning week — **must be rolled back** to the most recently completed week for a real after-action read.
  - **Read bottom-up:** start at the department/division total, not job-by-job — live example (Housekeeping, most recent complete week) ran **6% over standard** (1,072.35 actual vs. 1,011.75 standard hours) — described as "not terrible," a reasonable opening number for a first labor meeting discussion.
  - **Day-by-day housekeeping numbers will look erratic and that's expected** — labor lands on the day of the checkout/departure event, not spread evenly, so a single heavy-checkout day will show a large variance that's actually normal, not a problem.
  - **Op codes** (not yet built at this property, distinct from schedule groups) let an admin bundle multiple departments/jobs into one reportable unit for labor-meeting purposes (e.g., front office + guest services + reservations as one "rooms" group) — useful once the property knows which staff will actually be in which labor-meeting room together. Flagged as a good task for later this week if there's time.
  - **Toggle: daily vs. weekly view** — the weekly view turns this into an 8-week trend report, useful for judging whether a given week's variance is a fluke or a pattern.
  - **Breakdown Hours option** shows the regular/contract/training split — live example confirmed **453 contract-labor hours** flowed in correctly from Work Records for the reviewed week, validating the interface is working (accuracy of the coding itself is a separate question, flagged for finance to spot-check).
- **Weekly Projected Schedule Report** (forward-looking, answers "are we ready for next week"):
  - Same bottom-up reading principle — the numbers at the bottom (projected vs. scheduled hours) are what matters; **once a manager starts manually editing shifts, the "open shifts" count at the top stops being a reliable completion indicator** (it only decrements when a system-generated open shift is filled, not when a manager types in a new one that happens to match).
  - Confirmed **live and dynamic while scheduling** — the bottom totals update in real time as a manager drags/edits shifts; this is **not** true of the actuals-based reports (those refresh once nightly, not live).
  - Can show payroll cost if desired (cost visibility caution applies here too, see below).
- **Labor Effectiveness Report** — condensed version of the Weekly Labor Summary aimed at whole-property/division rollups rather than one department at a time; usable over any date range (week/month/quarter), positioned as the tool for a monthly P&L-style review. **⚠️ Includes dollar figures** — Pete's explicit caution, reinforced when Sandra accidentally previewed it property-wide and saw salary-adjacent line items: **this report should not be freely distributed**; a past property incident was cited (a manager sent it property-wide including salary data, "all hell broke loose") — Pete's own past practice was to strip cost columns before wider distribution, keeping only OT hours/premium visible.
- **Labor Productivity Report** — similar layout, but swaps in the **productivity/budget target** (hours per occupied room, etc., from §2's Labor Structure field) instead of/alongside the labor standard, over a flexible date range (best used monthly+, not weekly).
  - **Core teaching point, worked through live with Sandra:** *hours per occupied room is a budget/finance yardstick, not an operational plan* — it can't "call the plays" the way minutes-per-checkout/minutes-per-stayover can. The **labor standard** is what operationally drives staffing; the **productivity number** is how finance judges the result against budget. When the two disagree over a sustained period (e.g., actual productivity running at .75 against a .65 budget target even while staff is only 6% over the labor *standard*), that's a signal the **standard itself may not represent budget reality** — a longer-run finance/ops conversation, not a labor-meeting-agenda item.
  - **Long-term goal stated directly:** once labor standard and budget converge (a year+ out), the labor standard itself could become the budgeting tool, flipping the usual budget-then-negotiate-labor relationship — described as creating a more constructive, story-driven conversation between finance and operations than a flat "hit .65, no excuses" mandate.
- **Labor Dashboard** (Analytics menu, not Reporter) — confirmed **working** for this property (was broken the last time Pete used it, at Westin La Paloma). Same last-week/next-week framing as the reports, but interactive: drill from property → division → department → job → individual employee (contract-labor employees don't show here, a real limitation for departments with heavy contract-labor mix). Some properties run their entire labor meeting off this dashboard instead of printed reports; Pete's personal preference remains printed reports with manual highlighting/notes for how he personally thinks through a meeting, but confirmed the dashboard works as a live cross-check.

## 11. Wrap-Up

- Confirmed with Al and Sandra that the day's content was covered fully, ahead of Pete's own estimate — attributed partly to a well-organized property and partly to session content being trimmed down from an old multi-day Dallas class into a single condensed day.
- Sandra's feedback: found the live hands-on walkthrough valuable, plans to keep the two starred reports (§10) as an ongoing reference and use the printed labor-meeting cheat sheet material referenced earlier in the week.
- Pete's closing framing, given directly to the group: success looks like the *software* disappearing into the background and the weekly labor meeting becoming a **shared management language and practice**, not a technology exercise — reiterated this is a multi-week/multi-month maturation, not a one-week fix.
- Pete confirmed the standard post-implementation support model: **4 follow-up weeks with either Taylor Walton or John Grech**, tracked against a scorecard (forecast timing, generation timing, scheduling completion, etc.) — every property Pete has trained so far under this model has hit 100%.

---

## Open / Unresolved Items

- [ ] Confirm Al is added to the two payroll-relevant daily error-email distributions (employee transfer / hours mismatch) if not already receiving them
- [x] Two live-flagged secondary-job miscoding cases (public area attendant doing uncoded room attendant/laundry work; barista coded under a possibly-defunct job) — **not a Unifocus/Pete action item.** Root cause is Paychex-side job coding; ownership sits with the property and HMA (Paychex is their system of record, Unifocus only reflects whatever it's fed). Flagged to the property for their own cleanup, not tracked here as something Pete needs to resolve.
- [ ] Confirm whether Taylor built any Job Assignments (sub-skill tagging, e.g., cook stations) during original config — not yet reviewed
- [ ] Build out Schedule Groups and/or Op Codes if the property wants filtered labor-meeting reporting by sub-group — currently zero of either exist
- [x] Complete Employee Maintenance (availability, scheduling method) for all hourly staff — **manager responsibility, not an admin/Pete action item.** This is exactly what the next two mornings of manager training sessions (9/9, 9/10) are for; blank availability property-wide as of this session is the expected starting state, not a gap to close before then.
- [ ] Finance to populate Productivity targets across more Labor Structure lines (currently sparse) to make the Labor Productivity Report fully useful
- [ ] Longer-run: reconcile Housekeeping's productivity-vs-standard gap (.75 actual vs. .65 budget target while only 6% over the labor standard) — flagged as a finance/ops conversation for down the road, not this week
- [ ] Reinforce cost-report distribution caution (Labor Effectiveness Report) with the property before any wider internal distribution

---

## Related Files

- [Marriott Del Mar — Contacts](contacts.md)
- [Taylor Walton Prep Call, 9/2/26](2026-09-02_taylor-walton-prep-call.md)
- [Training Outline Email](2026-09-02_training-outline-email.md)
- [HM Alpha Client KB](../kb.md)
- [AM Session — System Admin Training](2026-09-08_admin-training-am.md)

---

*© Peter A. Castellano. All rights reserved.*
