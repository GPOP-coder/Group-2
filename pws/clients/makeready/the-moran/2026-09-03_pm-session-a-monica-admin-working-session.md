<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran — Admin Working Session with Monica Brock: Task Scheduler Fix, Security/Mobile Setup, and UNIFOCUS-261575 Live Review

**Date:** September 3, 2026 (Thursday), 3:00 PM – 6:30 PM CT — ran well past its originally scheduled length; Monica had to leave to finish closing out August (month-end). Pete did not leave the training room the entire day except one unsuccessful attempt to get food at The Boardroom — first meal of the day was at 9:10 PM.
**Location:** The Moran, Houston — onsite; Pete's last working session before departing early Friday 9/4
**Source:** Plaud transcript
**Participants:**
- Pete Castellano (PWS, trainer)
- **Monica Brock** — Director of Finance, The Moran — diarized as **Speaker 2**
- **Christian Cardenas** — F&B/Beverage Director — **returned around 4:00 PM** (having already attended the AM group session) specifically to enter his Revenue Center Forecast live and get additional coaching on the mechanism, per Pete (9/3/26 evening). Diarized inconsistently across **Speaker 3** and **Speaker 4**, but resolved as Christian throughout — the later, more technically fluent material (ADP double-coding familiarity, Allegory beverage-revenue specifics, banquet bar-service standards) is explained by this second, more focused visit, not a distinct participant. Pete addresses "Christian" by name multiple times confirming his presence.

**What actually happened:** This was scheduled as Monica's second required 3-hour Admin block but, as with the 8/31 session, ran heavily into live troubleshooting rather than planned curriculum. **The single most consequential thing that happened in this session: Pete discovered the property's Task Scheduler still had Generate Projected Hours and Generate Schedules set to their original Thursday 3:30 PM slot** — the revised Friday-noon cycle designed with Monica on 8/31 had been taught to every manager all week as the live plan, but **had never actually been re-pointed in the system itself**. Pete corrected this live, setting Generate Projected Hours to run Friday 9/4 at 11:45 AM and Generate Schedules shortly after, both as a system user, Clear Schedules unchecked, all divisions/branches selected (including salaried, though salary isn't scheduled). Also covered: a live review of the UNIFOCUS-261575 ticket thread (still unresolved, with a new, contested support response), security groups and user administration, mobile/employee-app setup, labor structure (TK codes, reconcile codes), and the two labor-meeting reports repeated for Monica's benefit. Admin curriculum items **not** reached in this session: Key Business Indicators as a formal standalone topic, Labor/Global Environments, and Work Rules — same three items flagged as outstanding after 8/31, still outstanding after this session.

---

## 1. Task Scheduler Timing Bug Found and Corrected — Friday's Automated Run Was Not Actually Set for Friday

- Early in the session, Pete opened Administration > Task Scheduler Setup to verify the day's automatic Generate Revenue Center Forecast had run on schedule (it had, though Pete also found the timing had drifted between noon and 4:00 PM across different checks and needed to be re-pinned to 4:00 PM going forward).
- While reviewing the same screen, Pete found that **Generate Projected Hours and Generate Schedules were still configured for Thursday at 3:30 PM** — the original 8/31 setup — even though the revised Thu/Fri cycle (designed with Monica on 8/31 and taught to every manager group since) calls for these to run Friday around noon. This had not been caught or corrected in any prior session.
- **Live fix made:** Generate Projected Hours set to run **Friday 9/4, 11:45 AM**, as a system user, all branches/divisions selected. Generate Schedules set to run a short time after (~noon), same settings, **Clear Schedules explicitly unchecked**. Pete deliberately built in the extra 15 minutes before "noon" as a communication buffer, since he had been telling every manager group "noon" all week.
- Pete also discovered during this same review that a support ticket he'd never seen before had a manager (apparently Danilo, present in the AM session) briefly gaining access to a Generate/Export function he should never have had — Pete flagged this as an automation-integrity risk and confirmed **no one but Monica should be able to run Export Schedules manually**, since it silently locks in a filtered scope (e.g., only the jobs that user has access to) for every future automated export. The **Export Schedules automation itself is separately broken** — not exporting on its own schedule as expected — a new item, not previously tracked, that Pete said needs its own ticket.

## 2. UNIFOCUS-261575 — Live Ticket Review, Support's Latest Response Disputed

- Monica directly asked whether Generate Schedules had worked during Monday's admin testing — Pete confirmed: *"And it's still broken. I've been jumping up and down about it. I'm worried about hitting tomorrow at noon."*
- Pete pulled up the ticket live to walk Monica through the latest support response before adding her to the ticket thread. Support's newest reply (as read live in this session) cited: **no projected hours for a date range around 8/30** (not the actual go-live target week of 9/6–9/12) and pointed again at **employee availability** as a possible cause. Pete's direct reaction: *"Baloney... they're looking at the wrong week."* This is the same category of pushback Pete gave support on 8/31 (rejecting the Clear Schedules theory) — support again appears to be diagnosing against the wrong data.
- Pete posted a new update to the ticket live, during the session, describing the Task Scheduler correction made in §1 above and the plan to watch Friday's run.
- **New related finding, surfaced by a participant reviewing the Weekly Labor Summary report during this session:** the Allegory bar's labor standard shows **beverage revenue present but zero standard hours generated** — Pete's read: *"There's something wrong with the standard, probably... it's pointing to the wrong KBI."* This is distinct from the already-tracked ProfitSword beverage-revenue-missing issue (see [2026-08-31_steve-fwd-beverage-revenue-allegory-profitsword.md](2026-08-31_steve-fwd-beverage-revenue-allegory-profitsword.md)) — that thread is about revenue not reaching ProfitSword at all; this is about revenue that *is* present not translating into standard hours. Not diagnosed further in this session; flagged as a new open item.
- **Pete's Friday availability clarified again, more specifically than in the morning session:** *"I'll be actually in Omaha by the time noon hits tomorrow... I'll be at home at my desk, waiting for this to happen, I hope. It depends on who picks me up from the airport."* Houston and Omaha are both Central time, and his return flight lands Omaha 10:25 AM — so "noon" Friday is realistically achievable as a remote-monitoring window, contingent on airport pickup timing.
- Christian entered his Revenue Center Forecast live during this session (after the 4:00 PM automatic Generate Revenue Center Forecast had already run) as a real-time test of the corrected cycle — no result confirmed within this transcript.

## 3. ADP Double-Coding Data — New Input from Corporate Payroll

- A participant (see Participants note above on the Speaker 4 ambiguity) reported that **Brandy Becker, a payroll specialist at MakeReady corporate**, had proactively sent a list of every employee who is double-coded in ADP and not populating correctly in Unifocus. This is a new, previously untracked data point: a corporate-level audit already exists and can likely be used to batch-correct several of the ADP data-quality issues found piecemeal throughout the week (Bell/Valet, Night Auditor, dual-outlet bartender, secondary banquet server), rather than the property discovering each one individually through live testing.
- No action taken on the list within this session; flagged as a resource for whoever picks up the ADP corrections after Pete departs.

## 4. Security Groups, User Administration, Data Permissions

- Walked User Administration in depth: never create a new user, always clone/copy an inactive one (preserves the ~100+ individual permission settings tied to group membership); deactivate (never delete) departing employees' user accounts.
- Enabled Monica's own User Administration access, which had been off; group membership vs. individual overrides explained (Christian's access, as an example, is built from the "Department Head Scheduler" and "Banquets and Outlet Forecaster" groups, additively).
- **Live security fix, made as a direct example:** removed **Export Schedules** access from the Department Head Scheduler group entirely (tying back to §1's concern about uncontrolled manual exports).
- Confirmed wage/cost visibility is controlled at the individual-user level under a Global permission, separate from group membership — demonstrated by toggling a named employee ("Fernando")'s cost visibility and explaining that Unifocus does not currently import salaried dollar figures at all.
- Data permissions (which market groups, revenue centers, KBIs, and schedule groups a user can see) reviewed; Pete tightened Christian's visible-jobs scope live as a usability improvement (removed Culinary, since Christian is F&B/Beverage, not Culinary) and recommended Monica do the same for other managers who complained they "can't select all."
- **Schedule groups explained as a manual, opt-in convenience feature, not a data structure** — Steve pre-built an (unused, ungranted) schedule group per job at setup; Pete recommended against adopting them broadly given the property's headcount, but flagged **op codes** (custom cross-job groupings, e.g., "all bartenders across all outlets combined") as a genuinely useful reporting tool worth building once the property is stable.

## 5. Mobile App Setup — Employee User Maps

- Walked the **Employee User Maps** screen (Setup > Employee) — the one-time step required to link a manager's "manager" login to their own "employee" record so mobile notifications, shift swaps, and approvals route correctly. Demonstrated live using Ryan as the example.
- Confirmed the mobile app is fully built and available for The Moran but **not yet activated for use** — a MakeReady corporate decision Pete deferred to Michelle Lewis, consistent with the existing "Unifocus Mobile App" status note in the working status report.
- Time-off requests are deliberately disabled in the mobile app for this property (pushed to ADP instead); shift-swap and give-away features are enabled but gated by manager approval.

## 6. Labor Structure — TK Codes, Reconcile Codes, Master Job Mapping

- Walked Setup > Labor Structure in detail: division/department/job hierarchy as "folders," the (non-functional) job-abbreviation column, master job mapping (rolls property-specific job variants up to a MakeReady-corporate total), and the plus-or-minus-5% default variance thresholds used by exception-based reports.
- Explained **TK codes** (hours-import mapping) and **reconcile codes** (employee-import mapping) as the two ADP interface mechanisms behind the week's recurring data-quality issues; walked through reading a "secondary job code must be valid" reconcile error and matching it to a missing job mapping in Unifocus.
- Confirmed the daily reconcile/hours-transfer notification emails still needed Monica added to their distribution — same open item carried from 8/31; Pete showed Monica exactly how to self-request this via a support ticket (subject line convention: property name + "Reconcile and hours transfer messages or alerts," CC Steve Carrell).
- Confirmed the **Labor Dashboard is not yet functional** for any job at The Moran — traced live to a required per-job "show on dashboard" setting Steve had not turned on, which Pete now attributes to the dashboard itself being actively rebuilt by Unifocus ("it's supposed to be kind of cool") rather than an oversight.

## 7. Labor-Meeting Reports — Repeated for Monica, With Live Numbers

- Re-ran the Weekly Labor Summary and Weekly Projected Schedule reports live with Monica, reinforcing "start at the bottom, work your way up" and "actual versus standard is all that matters." Pulled a live example showing Housekeeping tracking close to standard (~2% variance) across the last two available weeks — used as a real, encouraging data point that the Housekeeping standard, at least, appears to be performing well even this early.
- Walked the **Labor Effectiveness** and **Labor Productivity** reports as monthly-cadence budget sanity checks (same guidance given 8/31), noting salaried hours/dollars are confirmed **not** flowing into either report under the current ADP file setup.
- Monica raised a live staffing-capacity concern unrelated to Unifocus: the property has been without a dedicated Accounting Manager since a departure in late July, is relying on limited remote task-force support for select tasks, and is struggling to find qualified applicants — noted as context/color, not a PWS or Unifocus action item.

---

## Decisions / Changes Made Live

- **Corrected Task Scheduler timing:** Generate Projected Hours moved to Friday 9/4, 11:45 AM; Generate Schedules moved to shortly after (~noon), both as system user, Clear Schedules unchecked, all divisions/branches selected. This was the single most important live fix of the day — the automated Friday run had still been pointed at the old Thursday 3:30 PM slot from the original 8/31 setup.
- Removed Export Schedules permission from the Department Head Scheduler group (prevents any manager from accidentally locking in a filtered export scope).
- Enabled Monica's User Administration access.
- Tightened Christian's visible-jobs data permissions (removed Culinary access).
- Re-set Generate Revenue Center Forecast to a consistent 4:00 PM daily run.
- Posted a new update to UNIFOCUS-261575 documenting the Task Scheduler correction.

## Open / Unresolved

- **Blocking:** UNIFOCUS-261575 — root cause still unidentified as of end of day Thursday. Support's latest response (wrong date range, employee availability) was directly disputed by Pete. The Task Scheduler fix in §1 ensures the automated run will actually fire at the intended time with correct settings Friday — it does not fix the underlying zero-shift defect. See [2026-08-31_ticket-261575-schedules-not-generating.md](2026-08-31_ticket-261575-schedules-not-generating.md), updated same day with this session's findings.
- **New:** Allegory bartender labor standard showing zero generated hours despite present beverage revenue — a possible standard/KBI-mapping issue distinct from both 261575 and the already-tracked ProfitSword beverage-revenue gap.
- **New:** Export Schedules automation is not running on its own schedule as expected — needs its own ticket; not yet filed.
- Brandy Becker's (MakeReady corporate payroll) ADP double-coding list — received but not yet acted on; a potential batch-fix resource for the week's several individual ADP findings.
- Daily reconcile/hours-transfer email distribution still needs Monica added — ticket instructions given, not yet sent as of this session.
- ~~Speaker identity ambiguity (Christian vs. a possible second F&B-knowledgeable participant, both under Speaker 4)~~ — resolved 9/3/26: Christian returned ~4:00 PM for his Revenue Center Forecast entry and coaching.
- Admin curriculum still incomplete: Key Business Indicators (formal topic), Labor/Global Environments, and Work Rules were not reached in this session, same three items outstanding since 8/31 — no further scheduled time remains before Pete's Friday departure.
- Monica's staffing gap (no Accounting Manager since late July) — noted, not a PWS/Unifocus item.

## Next

- Pete departs Houston early Friday 9/4 (return flight HOU–OMA, departs 8:15 AM CT, arrives Omaha 10:25 AM CT) — before the corrected automated run fires at ~11:45 AM–noon CT the same day. He expects to be reachable remotely from Omaha, not onsite.
- UNIFOCUS-261575's outcome on Friday's run is the critical unresolved question for this engagement going into go-live.
- See [2026-09-02_status-report-draft.md](2026-09-02_status-report-draft.md) for the full engagement-level status update reflecting this day's findings.

---

*© Peter A. Castellano. All rights reserved.*
