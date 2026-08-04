<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk Basic Training — Security & Call Center (Manager Training), 8/4/26

**Date/Time:** Tuesday, August 4, 2026, 1:00–4:00 PM scheduled, Office 16. **Compressed to ~2 hours** — originally a 4-hour class already shrunk to 3, cut further to 2 because Ken Boyd (Chief of Security) and Molly Wyant (Asst. Chief of Security) had a hard stop for staff interviews at 3:00 PM. Ken and Molly left after the Security portion; David Farber (Call Center) continued 1:1 with Pete afterward.
**Source:** Raw transcript (not yet run through Plaud summary format like the 8/3 admin training file).
**Attendees:**
- **Pete Castellano** (instructor/consultant)
- **Ken Boyd** — Chief of Security (new contact)
- **Molly Wyant** — Assistant Chief of Security (last name now confirmed — was "Molly W., last name TBD" in kb.md)
- **David Farber** — Call Center Assistant Manager (new contact)
- **Mark** (not present) — Call Center Reservations Manager, referenced repeatedly as the person who owns the Unifocus-side setup/scheduling for the Call Center; David handles the Excel/distribution side. Last name TBD.

**Not part of the previously-planned Thu AM "Basic Training" group** (Housekeeping/Kitchen, ~7 people per Bron's 7/30 email) — this was a separate session covering Security and Call Center together, apparently scheduled independently. Molly had been tentatively expected in the Thu group; she attended here instead. Call Center (David/Mark) was not previously listed anywhere in the onsite schedule draft — new to the KB.

---

## Summary

Compressed basic-training session covering system navigation, the weekly scheduling rhythm (same forecast → generate projected hours → generate schedules → publish cycle taught in the 8/3 admin training), and a deep, hands-on Employee Maintenance walkthrough — the session's real center of gravity, done live against actual Security and Call Center staff records rather than generic examples.

**Both departments run fixed standards** — no volume-driven flex like F&B/Housekeeping. Pete explicitly confirmed this up front for both groups: "we're not gonna vary anything that you're not already varying... if it's all fixed, great." This matters because it means almost all of the value in this training is in tightening Employee Maintenance (who gets auto-scheduled, when) rather than forecasting.

**Recurring theme carried over from 8/3 admin training:** the system *makes shifts*, then *fills* them — it does not "schedule people." Molly had reportedly been blowing up and recreating her schedule from scratch most weeks; the Employee Maintenance work done live in this session (see below) is aimed directly at eliminating that habit by giving the auto-scheduler enough constraints to produce a usable draft on its own.

**One-week planning horizon reinforced:** Molly had at one point pre-built a full month of schedule in advance; Pete confirmed this fights the system by design — Unifocus deliberately regenerates one week at a time, even for fully fixed departments, and recommended not pre-loading beyond that regardless of how far out she wants visibility for her own planning.

---

## Live Diagnostic Findings

Real live troubleshooting/configuration done in-session — tracked per `feedback_track_rate_justification_evidence` memory.

**Cross-department secondary-job gap found (Security).** Filtering the Security schedule by job, Pete noticed a "Carol[l]" — a Properties-department employee who occasionally (roughly once every 2–3 months) covers Security shifts as relief — was **missing entirely** from the filtered list, even though she can do the job. Root cause: **ADP does not feed secondary job assignments to Unifocus.** Unlike primary jobs (which sync daily from ADP), a secondary job has to be added manually in Unifocus Employee Maintenance by an admin (Braun or Casey) before the system will recognize the employee as eligible for that department's shifts — and before someone can push her hours to Security's labor cost instead of leaving them to land on her home department (Properties). **Action item:** Braun or Casey to add Carol Carroll's secondary Security job code in Unifocus. General takeaway for Ken/Molly: any time someone from outside the department picks up a Security shift on a semi-regular basis, this same manual step is required — it won't happen on its own via the ADP feed.

**Employee Maintenance built live — Carol Carroll (Security, part-time, currently covering a 6-week medical leave for a full-time Security employee).** Normally works 2 days/week (Sun & Mon), afternoon/evening shift (~3–11 PM), but had been auto-scheduled like a full-time employee across most of the week because no availability constraints existed. Pete set:
- Required Off: Tue–Sat (her normal non-work days)
- Available to Work: Sun & Mon, 2:00 PM–midnight (wide window, deliberately wider than her actual 3–11 PM shift, to safely catch it without over-constraining)
- Walked Ken/Molly through the three employee-scheduling modes: **Variable** (default — auto-scheduler fills per priority order, respecting the availability set above), **Regular** (locks a specific employee into a specific job/time slot going forward — used sparingly, e.g. "I always want Carol to open Monday at 3"), **Permanent** (overrides the standard itself — will actively over-schedule if misused, since it forces the assignment regardless of headcount already met; explicitly warned not to use broadly).
- This becomes Carol's "set it and forget it" baseline — future weeks should need only exception-editing (call-outs, approved time off), not full manual rebuilds.

**Standards reviewed live — Gatehouse (Security).** Three jobs: Gatehouse Attendant, Overnight Gatehouse Attendant, Senior. Senior: 2 people, 10 shifts/week total (Mon 1, Tue–Fri 2 each alternating 7–3/8–4 start times, Sat 1, Sun 0). Gatehouse Attendant fills the gap on days with fewer/no Seniors, most heavily on Sunday (4 AM shifts + 1 PM shift, since no Senior covers that day). **Confirmed intentional: conference-services-requested extra security coverage (BEO-driven, billed back to the event) is deliberately NOT built into the standard baseline** — it should show up as scheduled hours over standard at the labor meeting (an "explainable variance"), not get baked into the fixed plan. Consistent with the general "explainable variance" framing taught 8/3.

**Reports run live — Weekly Labor Summary (backward-looking, "how did we do last week").**
- **Gatehouse department:** 296 hrs projected, 272 scheduled, 273 actual → **8% under standard.**
- **Security department (run separately):** 376 hrs projected, 318 scheduled, ~325 actual → **13% under standard**, attributed directly to the 6-week medical leave (Carol Carroll's coverage only partially closed the gap).
- **Action item raised live by Casey/Braun's ask (Pete to make a note for Casey):** Security and Gatehouse currently have to be run as two separate department reports; requesting an "op code" so they can be combined into a single view — same underlying need as the general one-report-per-department limitation.

**Reports run live — Weekly Projected Schedule (forward-looking, "are we ready for next week").** Run against a prior completed week for Security (current week's schedule wasn't finished yet, so a completed week was used to demonstrate the report): **376 hrs projected vs. 280 scheduled = 96 hours short.** Framed as an active hiring gap, not a scheduling error — Pete's read is that existing staff are likely absorbing the shortfall via longer shifts/overtime, the same dynamic independently confirmed on the Call Center side (see below).

**Call Center — no labor standards exist behind task assignments, confirmed live.** Pete opened the Call Center job/assignment list and checked every entry — confirmed there are **no standards attached** to task-type assignments (e.g., "Dining General AM/PM" inbox-monitoring labels). These are just labels, not standard-driven, so the auto-scheduler has no way to know which employees' actual shift times align with an AM vs. PM task — risk of assigning an AM-labeled task to someone starting at noon, or a PM task to someone who's off hours before end of day. This is the direct reason David built an external Excel/VBA process (see below) rather than using Unifocus's own task-assignment scheduling — confirmed as a reasonable workaround given the current gap, not something to force back into Unifocus without building real standards first.

**Employee Maintenance built live — Kevin Messer (Call Center, full-time, 40 hrs/week, variable).** Had no availability configured at all (contrast with Megan O'Brien below, already correctly set). Built live:
- Required Off: Sunday & Monday
- Saturday: 7:50 AM–4:20 PM (end time bakes in the standard's 30-min break)
- Wednesday/Thursday/Friday: 8:50 AM–5:20 PM
- Tuesday: 10:40 AM–7:10 PM (one input error mid-entry — a leftover overlapping entry had to be deleted before the correct time would save)
- Matches David's description of Kevin's actual working pattern (one early Saturday, three standard weekday starts, one late-morning start).

**Employee Maintenance reviewed live — Megan O'Brien (Call Center) — no changes needed.** Already fully and correctly configured (Required Off Mon/Tue/Thu/Sat; Available to Work 10:40 AM–7:10 PM the other days); confirmed the auto-scheduler had filled her shifts cleanly with no manager-override icon present. Used as the "this is what correct looks like" comparison for Kevin's build.

**Known platform limitation noted, no action taken — 15-minute shift increments vs. Call Center's actual start times.** Call Center's real shift starts (e.g., 8:50 AM, not 8:45) don't land cleanly on Unifocus's quarter-hour shift grid. Pete confirmed the standard's predetermined shift times already account for this (shift length + break math), declined to change anything, and flagged it as a platform characteristic to be aware of rather than a bug to fix.

**David's existing print/export workflow reviewed, deliberately left unchanged.** David currently runs no Unifocus schedule report at all — he copy/pastes raw exported cells directly into his Excel macro process (cells arrive as text, not numeric values; David already handles the "convert to values" step). Pete offered to review/adjust the print and schedule-group configuration but explicitly declined to modify anything since the current process is already working — avoided adding complexity to something functioning.

---

## Assignments / Action Items

- [ ] **Add secondary Security job code for Carol Carroll** in Unifocus Employee Maintenance (Braun or Casey) — she's currently invisible to the Security schedule filter because ADP doesn't feed secondary jobs automatically.
- [ ] **Casey to set up a combined "op code"** so Security + Gatehouse can be viewed/reported as one department instead of two separate reports.
- [ ] Confirm next week whether Carol Carroll's newly-set availability constraints (Required Off Tue–Sat, Available Sun/Mon 2 PM–midnight) hold and produce a cleaner draft schedule.
- [ ] Confirm next week whether Kevin Messer's newly-built availability produces correct auto-scheduling.
- [ ] Security is currently ~96 hours/week short of standard (active hiring gap) — worth flagging explicitly at the labor meeting as an explainable variance, same treatment as the conference-services BEO overage pattern.
- [ ] No formal action needed on Call Center's task-assignment gap (Dining General AM/PM, etc.) — documented as a known limitation the existing Excel/VBA workaround compensates for; revisit only if Mohonk wants those tasks standard-driven inside Unifocus itself.

---

## Cross-References to Existing Mohonk KB

- **Employee Maintenance / auto-scheduler mental model** — same Variable/Regular/Permanent framework and "makes shifts, then fills them" language taught in the [8/3 Admin Training session](2026-08-03_admin-training-session1-summary.md); this session applied it live to real Security and Call Center staff rather than teaching it in the abstract.
- **Weekly Labor Summary / Weekly Projected Schedule reports** — same two reports and "how did we do last week / are we ready for next week" framing as 8/3; this session's live numbers (Gatehouse -8%, Security -13% and -96 hrs forward-looking) are new data points, not previously in the KB.
- **One-report-per-department limitation** — the Security/Gatehouse combined-report request parallels the general reporting constraint already noted elsewhere in this KB; worth remembering if other departments raise the same ask.
- **Cross-department secondary-job gap (Carol Carroll)** — a concrete, department-specific instance of the same "ADP → Unifocus data flow has manual steps admins have to remember" pattern already documented for new-hire imports and job-code governance in the [8/3 admin training Live Diagnostic Findings](2026-08-03_admin-training-session1-summary.md#live-diagnostic-findings-from-the-full-am-transcript).

---

## Misc Notes

- **"Braun" in this transcript = Bron Walis** (Director of IT) — same person confirmed as "Ron"/"Paul" in the 8/3 admin training file's Plaud mis-transcriptions; this session's raw transcript spells the name "Braun" throughout. Referenced here as the person coordinating Pete's onsite schedule for the week and as the go-to for Unifocus support tickets/issues.
- David mentioned using Claude Code for his own VBA/scripting work over the past ~3 months, alongside Copilot and ChatGPT — personal color, not a Mohonk operational item.

---

## Open Items From This Session

- [ ] Verify Carol Carroll's secondary Security job code was added.
- [ ] Verify the Security + Gatehouse combined "op code" report request was picked up by Casey.
- [ ] No PM-session equivalent exists for this one — session ran as scheduled 1–3 PM (Security) then continued 1:1 with David through closer to the original 4 PM end for Call Center.

---

*© Peter A. Castellano. All rights reserved.*
