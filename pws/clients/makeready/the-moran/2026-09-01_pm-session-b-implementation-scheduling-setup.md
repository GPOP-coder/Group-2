<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran — Standards, Employee Maintenance & Reporting Deep Dive (Manager Training, PM Session B)

**Date:** September 1, 2026 (Tuesday, day 2 of formal manager training)
**Location:** The Moran, Houston — onsite
**Source:** Plaud transcript
**Participants:** Pete Castellano (PWS, trainer). Four additional voices are diarized only as **Speaker 2, Speaker 3, Speaker 4, Speaker 5** — none are named in the transcript itself, so none are confirmed. The property's Manager Meeting Schedule lists four attendees for this Tuesday afternoon block: Denise Cesena (P&C, 2:00 PM), Celeste Tidwell (Sales, 3:00 PM), Abdellah Sedra (Culinary, 4:00 PM), Sonny Woodcock (F&B, 5:00 PM) — a clean count-match to the four unlabeled speakers, but the mapping below is inference from content, not confirmed identification:
- **Sonny Woodcock (F&B) — presence confirmed**, not by diarized dialogue but by Pete directly addressing "Sonny" by name at the session's close, asking if he's headed up to the kitchen for his shift.
- **Speaker 2** — most consistent with **Culinary** (Abdellah Sedra): drives the cook/kitchen-standard discussion, discusses carving-station and chef-attendant billing on banquet events, and raises an allergy-handling comment. Not confirmed by name.
- **Speaker 3** — most consistent with an **HR/ADP-adjacent role** (possibly Denise Cesena, P&C): discusses terminating employees in ADP, secondary job code requests through corporate, and onboarding a new engineer starting Thursday. Not confirmed by name.
- **Speaker 4** — raises banquet-actuals/BEO process concerns and asks about a bartender-specific report; consistent with either Sales/Catering (Celeste Tidwell) or F&B. Not confirmed by name.
- **Speaker 5** — brief interjections only (a conceptual question about whether the auto-scheduler "learns," a question about the mobile app); no reliable department signal.

**Confirmed format (Pete, 9/1/26):** this is **Part 2 of 2** of the single **2:00 PM, 3-hour group training block**, continuing directly from [2026-09-01_pm-session-a-labor-management-training.md](2026-09-01_pm-session-a-labor-management-training.md) after the recess. All four attendees — Denise Cesena (P&C), Celeste Tidwell (Sales), Abdellah Sedra (Culinary), Sonny Woodcock (F&B) — were together for the whole session, not four sequential 1-hour meetings; the "2:00/3:00/4:00/5:00 PM" times on the property's Manager Meeting Schedule are a rough topic-focus order within this one block, not separate meetings (see [contacts.md](contacts.md)) — which is why content threads from P&C/HR, Sales/Catering, and Culinary/F&B all surface across the same ~63-minute recording (00:00–01:03). No system configuration was changed live in this session — unlike the 8/31 session with Monica, this was pure training/Q&A covering Labor Standards mechanics, Employee Maintenance, Assignments, Availability, and the two core weekly reports, in preparation for managers building and defending their own schedules for the week ending 9/12.

---

## 1. Labor Standards Structure — Shifts vs. Shift-Related Standards

- Every labor standard has two parts: **the shift** (a named time block — start time, end time, and paid length, e.g., "4:30 shift to 12:30") and **the shift-related standard** (the KBI-driven rule that actually decides whether that shift gets made). Shift names are cosmetic labels only and "don't do anything" — the shift-related standard is what generates real shifts.
- Auto-scheduler rounding logic: it does **not** round at the half like most systems — it rounds at **0.2 (20% of the next shift)**. Small amounts of extra work get absorbed into existing shifts; once workload crosses the 20% threshold, it triggers a new shift. Every triggered shift is a **minimum of 4 hours**, and standards never generate a shift shorter than 4 or longer than 8 hours ("It's not gonna give you like little tiny pieces of a cook").
- Managers must know their labor standards **before** touching Employee Maintenance, because shifts only get filled by employees who are correctly set up to "catch" them (right job, right assignment, right availability).
- The auto-scheduler is described as "very persistent" — it will always try to fill every shift it generates, but it will not violate job eligibility, availability, or approved days off. Training built in additional constraints (Regular/Permanent, availability, Sub Only — see §6–7) specifically to keep it from "going haywire."

## 2. Culinary Labor Standards Deep Dive

**Outlet (a la carte) cook standard — driven by covers:**
- The KBI is **AM Outlet Covers** = combined breakfast + lunch covers from café, boardroom lunch, and in-room dining (breakfast and lunch). Deliberately named to match what it aggregates.
- One single outlet cover anywhere triggers a weekday **7.5-hour cook shift starting at 4:30 AM**; on weekends the same pattern starts at **5:30 AM** for a 6-hour shift.
- Volume breaks add additional shifts: at **40 covers** (a "busy morning" threshold Pete and the group defined together), a second shift starts at 2:00 PM; if the morning was busy, a third shift is triggered an hour later, at 3:00 PM (a two o'clock shift always fires regardless of volume; a related later trigger fires at 70 PM covers).
- **Flagged, not fixed live:** Pete believes one of the volume-break triggers may be mislabeled — reading "AM" where it should say "PM" covers. "I bet you this is probably supposed to be PM. Please make a note of that... I'm not going to change this without talking to Monica." Speaker 2 concurred it should read PM. Left as a to-do for Pete + Monica, not corrected in this session.

**Banquet cook/chef standard — minutes-per-unit model:**
- Fundamentally different mechanic than the outlet standard: instead of "one cover = one shift trigger," it accumulates **minutes per cover** until it fills a shift, starting from zero. No shift is generated below **60 combined breakfast/lunch banquet covers**; once 60 is reached, the system applies a per-cover minute rate (breakfast ≈ 1.5 min/cover, lunch ≈ 1.2 min/cover in the sample shown) and keeps filling shift-length "cups" (minimum 4 hours, up to 8 hours) as volume grows.
- The per-cover minute rate **decreases as volume increases** ("efficiency of scale" — it doesn't take double the time to cook double the food), and breakfast, lunch, dinner, breaks, and receptions each carry their own distinct per-cover rate.
- This standard is driven **entirely by Delphi banquet-cover data**, forward-looking (forecast) or backward-looking (closed BEOs/actuals) — nowhere else. If a banquet is worked but the BEO is never closed out or no actual is entered, the labor standard gives **zero credit for that labor**, and the manager has to explain the resulting overage at the labor meeting: *"If he did a lot of work, but no one closed out the BEO, or never put an actual in, for that BEO, he's going to get no labor credit for no labor, and he'll have to answer for it in a labor meeting."*
- **Speaker 4's proposed workaround** (not yet implemented, offered as a process idea): always enter a placeholder actual immediately equal to the guaranteed cover count (e.g., a 35-guest guarantee gets a 35 actual entered right away), then have the Banquets team edit that number up or down once the real final count is known — so the field is never left blank/zero even before someone finalizes it.
- Aside: if extra tables get added same-night and the guest is charged for it, that revenue flows through POS → ProfitSword, but Unifocus is **not** looking at ProfitSword for this — the additional covers still need to be reflected wherever Delphi/BEO actuals are captured for Unifocus to credit the extra labor.

## 3. Action Stations, Chef Attendant & Carving Stations — Manual Input KBIs

- Unifocus only reads two data points off a BEO automatically: **Event Type** and **Booking Type** (catering vs. banquets; breakfast/lunch/dinner/reception/breaks). It does **not** read free text — not the word "carving station," not "chef attendant," not dollar amounts on the bill.
- As a result, **chef attendants, carving/action stations, and extra bartender needs are all manually-entered input KBIs** — someone who is actually reading the BEO has to key in a number, on **both** the forecast screen and the actuals screen, or that portion of the labor standard simply never generates shifts.
- Billing detail discussed live: it doesn't matter whether the client is charged separately for a chef attendant fee or it's bundled into a package — the attendant count still has to be entered manually either way, because Unifocus reads neither the dollar figure nor the word "chef attendant."
- Owner of this manual entry is undetermined generically — "might be you, might be Monica, might be someone else" — but it has to be someone, consistently, every time, or that piece of the standard stays dark.
- **Explainable variance:** Pete introduced this concept directly in response to the group's concerns about edge cases (extra December carving stations, banquet security costs not clearly owned by any one department): the system will never capture every unique banquet request, and a resulting labor gap of a few hours is expected and explainable once you know the manual-KBI gap that caused it — *"If nobody puts anything in here, and you're off by seven hours, now you know why."*
- Speaker 2 raised a related real-world example: recurring difficulty accounting for labor tied to **allergy accommodations** on BEOs — same root cause (Unifocus doesn't read BEO free text), not resolved, just acknowledged as a known limitation.

## 4. Department Meeting Minimum Pay — Raised, Not Resolved

- Speaker 3 asked whether departmental meetings carry a contractual 2-hour minimum-pay rule, and whether/how that should be reflected in scheduling. Confirmed live: **yes, department meetings carry a 2-hour minimum**, per policy.
- Pete's response was conditional, not a live fix: *"We could make these two [hours]... This is really first regular, normal, everyday scheduling. It will let you override this manually."* No shift-length setting was actually changed in this session — flagged as a possible future standard adjustment, not executed.

## 5. Employee Maintenance — What's Editable vs. ADP-Sourced

- Reached via **Administration > Employee Maintenance**, or faster in practice: right-click any employee on the schedule and choose **Edit Employee**.
- Nearly everything on the Employee Maintenance screen is refreshed daily from **ADP** and will be overwritten by the next day's sync regardless of any manual change — **status** and **jobs** both fall in this bucket.
- The **only field that persists as a manual override** is the employee's **display name** — how their name appears on the printed/on-screen schedule (default is Last, First).
- **Only non-exempt employees are being scheduled in Unifocus right now** — confirmed live in response to Speaker 3's direct question ("Are we putting in managers?... Just non-exempt.").
- Hourly **pay rates are visible** to this group of managers ("You can see rates. Monica can see rates. I can see rates."); **salary rates and dollars never come across into Unifocus at all**, regardless of role or access level.
- ADP-to-Unifocus sync lag confirmed again live (consistent with the Bell/Valet department-code issue found 8/31): Speaker 3 terminated two employees in ADP the day prior and they had not yet dropped off Unifocus — "It might take a day or two. I saw one disappear this morning."

## 6. Secondary Jobs, "Sub Only," and the Secondary Job Code Process

- Some employees carry a **secondary job** in ADP (e.g., a cook who is also coded as a steward). By default this makes that employee eligible for auto-scheduling into either job.
- The **Sub Only** flag (double-click the job row in Employee Maintenance, check Sub Only) makes that specific job **invisible to the auto-scheduler** for that employee — used when a manager wants someone available as a manual substitute in a secondary role but never wants the system auto-assigning them into it.
- Unifocus pre-populated Sub Only for all existing secondary-job employees at go-live, but **going forward, setting Sub Only correctly for new cross-trained or transferred employees is the manager's responsibility** — "we've done it for you right out of the box, but... you need to be aware of this."
- **Adding or removing a secondary job code itself is not manager-editable in Unifocus** — it lives in ADP/corporate. Speaker 3 confirmed the property's process is to email corporate to request the change ("I have to email... Corporate keeps those").

## 7. Availability Setup — Required Off vs. Available to Work

- Every hourly employee needs **something entered for every day** — this is treated as non-negotiable groundwork before the auto-scheduler can be trusted.
- Two states: **Required Off** (default when a time block is added — blocks the auto-scheduler entirely, does not block managers from manually scheduling someone if truly needed) and **Available to Work** (must be explicitly toggled).
- Time entry is deliberately flexible — "4", "4a", "4p", "1600", or "16" are all accepted formats.
- Availability windows must cover the **entire shift length including any unpaid break padding** — e.g., an 8-hour paid shift that's actually an 8.5-hour block needs an availability window of at least 8.5 hours, or the employee will never catch it, even if they're otherwise eligible.
- Direct answer to Speaker 5's question about whether the system adapts over time: **no** — *"It's not going to learn anything at all. It's a set it and forget it kind of thing."* Static misconfiguration (too-tight availability, wrong employee catching a shift, no shift assigned at all) will recur indefinitely until a manager manually corrects the availability record.

## 8. Regular vs. Permanent Overrides

- Two escalating override tools inside an individual employee's availability/schedule settings, both applied at the manager's discretion:
  - **Regular** — puts that employee at the front of the line for a given shift, and can override the shift's stated time and the Sub Only flag, but **cannot exceed the labor standard's headcount**. If the standard calls for 5 cooks and 10 are marked Regular, only 5 get scheduled.
  - **Permanent** — overrides time, Sub Only, **and** the standard's headcount ceiling; schedules first, no matter what. Marking 10 cooks Permanent against a 5-person standard schedules all 10. Suggested legitimate use: contract-labor placeholders that always need to appear on the schedule regardless of standard math.
- Pete's guidance: use Regular sparingly and Permanent even more sparingly — "I prefer not to go too crazy with regular... [but] however you get the names on the schedule, whatever works for you," reiterating that the manager owns final responsibility for the bottom-line numbers regardless of which override tool gets used.

## 9. Schedule Groups vs. Assignments — Cosmetic Tool vs. Mandatory Setup

- **Schedule Groups** are purely organizational/cosmetic — they control how a schedule prints or groups on screen (e.g., grouping banquet captains together), and carry **no HR meaning and no scheduling-engine function**. New hires start with **no schedule group** by default and effectively "disappear" from any schedule-group-filtered view until a manager manually assigns one in Employee Maintenance — flagged directly against Speaker 3's incoming engineer starting Thursday ("They're not going to have these tabs... it's not an HR responsibility to do the scheduling tab, or the schedule groups, or the assignments" — that's on the department manager, specifically named as Jerry's task for the new engineer).
- **Assignments**, by contrast, are functionally mandatory wherever a job has sub-job-level standards (Cook's Outlets vs. Banquets assignment being the running example). An employee with zero assignments set will **never receive a shift from an assignment-driven standard**, no matter how correctly the standard itself is built: *"All of your shifts are being made at the assignment level, but nobody has the assignment. You have to do this. No one's going to do it for you."*
- Assignments also let a manager selectively exclude an otherwise-qualified employee from specific sub-roles (Pete's own example: cook who should never be assigned near the carving station) — a real, previously-discussed staffing decision, not hypothetical, per Speaker 2's carving-station portion-control anecdote in §3.

## 10. Reports — Weekly Labor Summary & Weekly Projected Schedule Report

- **Weekly Labor Summary** (search by name, or star it after finding it in the report table of contents) is **backwards-looking** — the system defaults to the current planning week, so the manager has to manually page back to see the completed week. Filterable by division/department/job, or by "op codes" (a not-yet-built Monica-managed grouping across multiple jobs, e.g., all bartenders across outlets).
- Read order is always **bottom-up, whole-department first** — day-by-day and job-by-job drill-down is explicitly discouraged for noisy departments like Housekeeping and Banquets/Culinary (server-level jobs being a partial exception). Only **Actual vs. Standard** ultimately matters for the labor-meeting story; Projected and Scheduled numbers become background color once actuals land.
- Worked example from Housekeeping in this session: department-wide variance was a healthy **+2%** despite noisy job-level swings underneath it — Room Attendant ran **15% over** standard for the week, Supervisor under standard, House Person over standard, Public Area Attendant only about half-filled. Pete's read: don't chase the job-level noise once the department total is in line — a common and often benign pattern is Room Attendant hours effectively "showing up" as House Person hours when house staff help strip rooms.
- **Weekly Projected Schedule Report** is the forward-looking counterpart — same tool, same bottom-up reading discipline, but comparing **Projected vs. Scheduled** (no actuals exist yet) for the week the manager is actively building, ahead of the labor meeting. Same tolerance philosophy applies: don't fixate on exact percentage matches to standard, chase Actual vs. Standard once the week closes.
- Both reports can be previewed, exported to PDF (Pete's own habit: preview first, then generate a timestamped PDF as a point-in-time record — "so if things change... you'll be able to pull this up and show it off"), exported to Excel (same pagination as PDF) or CSV (numbers only, no formatting).

## 11. Casino Labor Pattern Reference — Explainable Variance in Practice

- Pete drew on a casino-industry parallel to reinforce that raw schedule headcount isn't the target, standard-adherence is: **cocktail servers** historically need to be scheduled at roughly **150% of target headcount on weekends** to net 100% actual attendance, given high no-show/early-leave behavior once staff hit informal earnings goals for the night — "if you schedule them, they come" is not true for this role.
- Contrasted directly with **cage cashiers** balancing a multi-million-dollar drawer per shift: schedule exactly to the number needed, because they reliably show up and stay — "if you schedule them, they come. If you schedule them, they stay."
- Point of the comparison: a manager who consistently over- or under-schedules relative to raw headcount but still lands on standard at the department level shouldn't be second-guessed on the scheduling mechanics — "That's not an LLG story" (i.e., not a compliance/labor-law-guidelines issue) — the governing metric stays Actual vs. Standard.

## 12. Go-Live Messaging, Mobile App Status & Session Logistics

- **Go-live framing:** managers need to have their schedule entered this week for the **week ending 9/12**; Unifocus will auto-generate next week's schedule again on **Friday**. Pete's closing line: *"We're go time. We're now live. It's working."*
- **Mobile app:** exists in the app store but is **not yet activated** for The Moran. Rollout is a **MakeReady-level decision**, potentially property-by-property — Pete does not know which other MakeReady properties have it live, though he believes **The Joseph** is considering it. Pete's personal gating condition before recommending activation: every manager in the room needs to be comfortable manually building a schedule first — "We do not want to publish a schedule where you're still struggling. Good Lord, you will have chaos."
- **Reporting request, deferred:** Speaker 4 asked whether a report (existing or newly built) could isolate bartender coverage specifically, given they handle that check daily. Pete deferred this to a separate follow-up session rather than answering live.
- **Scheduling logistics for the rest of the week:** Wednesday is training all day; Thursday is office hours. Pete flagged that **Kimani (Kamani) Demens appears booked into both of Wednesday's two training slots**, and said he'd rather not run a session for a single attendee if that's the actual Wednesday turnout. Pete deferred further logistics entirely to Monica, noting she has the live scheduling link on her desk and effectively "owns" this week's session calendar. Speaker 4 separately asked to carve out dedicated time with Pete (and possibly Monica) specifically on forecasting and reporting, to be confident they're "doing everything" right.
- **Closing tone:** Pete characterized the current build as still evolving — "This is not a — this is wet cement at best. Nothing in here says it's finished" — and asked the room to test their standards over the coming weeks, watch what they actually produce, and bring questions back to him, Steve, or Unifocus support once he's no longer onsite.
- Session closed with Pete directly addressing **Sonny**, confirming he was headed up to work a shift in the kitchen that evening — the clearest name-to-presence confirmation in this transcript.

---

## Decisions / Changes Made Live

- **None** — unlike the 8/31 session with Monica, no Unifocus configuration was actually changed during this block; it was walkthrough/training and Q&A only.
- Confirmed (as existing policy, not a new decision): departmental meetings carry a 2-hour minimum-pay rule.
- Confirmed (as existing operational fact, not new): only non-exempt employees are currently being scheduled in Unifocus.

## Open / Unresolved

- **UNIFOCUS-261575 — resolved reading, cross-checked 9/1/26 evening:** the ticket was **not referenced by name or number** in this transcript, and Pete's closing statement — *"We're go time. We're now live. It's working."* — read in isolation could suggest the bug was fixed. **It was not.** This PM(b) session ran mid-afternoon; Pete's own internal escalation note and Nguon Zhong's independent bug replication (both logged on [2026-08-31_ticket-261575-schedules-not-generating.md](2026-08-31_ticket-261575-schedules-not-generating.md)) are timestamped that same evening and confirm the ticket was still unresolved and still disrupting training. So this line was generic go-live encouragement about the training rollout, not a statement that Generate Schedules had started working.
- Possible mislabeled volume-break trigger on the outlet cook standard (AM vs. PM covers, §2) — flagged by Pete and Speaker 2, not corrected; needs review with Monica.
- Department-meeting 2-hour minimum — confirmed as policy but not verified as actually configured as a shift-length rule in Unifocus; Pete's language ("we could make these two") was conditional.
- Bartender-specific coverage report — requested by Speaker 4, not built or identified in this session; deferred to a future follow-up.
- Mobile app activation — MakeReady corporate-level decision, no timeline; status at other MakeReady properties not confirmed by Pete beyond a guess about The Joseph's interest (note: per Pete's own prior corporate mapping, The Joseph Nashville is actually a Highgate property, not MakeReady — worth double-checking this reference).
- Wednesday training turnout — Kimani Demens shown booked into both Wednesday training slots simultaneously per Pete's live comment; a possible scheduling conflict distinct from contacts.md's separately-tracked Wed/Thu double-booking note. Not resolved in this session; flagged here for the parallel contacts-reconciliation process rather than edited directly.
- Speaker identification — Speaker 2, Speaker 3, and Speaker 4 could not be confidently resolved to names; only Sonny Woodcock's presence is confirmed (by direct address at session close, not by diarized dialogue). A garbled aside referencing "Christian" and a "test course" in Savannah (~01:02:12) could not be parsed into anything actionable.
- Secondary job code request process — confirmed to run through corporate/email per Speaker 3, but the exact recipient/turnaround wasn't captured.

---

*© Peter A. Castellano. All rights reserved.*
