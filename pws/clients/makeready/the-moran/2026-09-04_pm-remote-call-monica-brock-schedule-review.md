<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran — Remote Call with Monica Brock: Friday's Auto-Schedule Review, Constraint Gaps Found, Contract-Labor Setup

**Date:** September 4, 2026 (Friday afternoon), ~2:45–3:15 PM CT (Monica: "it's already three o'clock," labor meeting referenced at 2:30 PM same day, call itself ran ~30 min per both transcripts)
**Location:** Remote — Pete had landed in Omaha that morning (return flight OMA 10:25 AM) after departing The Moran before 6 AM; Monica still onsite at The Moran, mid-month-end-close
**Source:** Plaud transcript — two near-identical transcription passes of the same call (`09-04 Call_ The Moran Hotel - Automated Scheduling and Employee Maintenance-transcript.txt` and `09-04 Call_ The Moran Hotel Month-End Close and Scheduling System Configuration-transcript.txt`); reconciled into one summary below, no material differences between the two beyond transcription variance.
**Participants:**
- Pete Castellano (PWS, trainer) — remote, Omaha
- **Monica Brock** — Director of Finance, The Moran — diarized as Speaker 3 / Speaker 2 across the two passes
- One or two unidentified background speakers (brief, non-substantive — e.g., someone signing off "Teams, have a great weekend")

**What actually happened:** A short, informal follow-up call the same afternoon the corrected Friday-noon automated Generate Projected Hours + Generate Schedules run fired (see [UNIFOCUS-261575](2026-08-31_ticket-261575-schedules-not-generating.md)) — 29 of 408 shifts populated. Pete walked Monica live through what the schedule actually looked like, found a **new, distinct configuration gap** (no minimum-hours-between-shifts or minimum-days-off constraint configured, causing messy double-shifts on the few employees who did get scheduled), got direct live proof that **blank employee availability does not block auto-scheduling** (undercutting Unifocus support's standing theory on 261575 further), and walked Monica through building **contract-labor placeholder employees**. Monica was visibly unwell during the call (self-described "body shutting down") and the call ended a bit early as a result — she still had 2-3 more days of month-end close remaining.

---

## 1. Interface Confirmation — Bell/Valet Miscoding Fix Propagated Correctly

Quick, positive confirmation at the top of the call: an earlier fix recoding a bellman who had been miscoded to Valet is now correctly showing under Bell. Small but reassuring data point that ADP/Unifocus interface corrections are propagating on the expected cycle (roughly 1-2 days, consistent with what's already documented under Interfaces in the [status report draft](2026-09-02_status-report-draft.md)).

## 2. New Finding: Minimum-Hours-Between-Shifts / Minimum-Days-Off Never Configured

Reviewing Friday's freshly-generated (mostly-empty) schedule live, Pete found the handful of shifts that *did* populate looked "wacky" — one employee received a 7, an 11, and then a 3 (three separate shifts same day/week in a disorganized order), because the auto-scheduler ran out of eligible people at the top of the priority order and looped back rather than stopping. Root cause: **Labor Structure has a "Minimum Days Off" column and a minimum-hours-between-shifts setting (Pete's usual default: 10 hours) that were never discussed or configured for this property.**

- **Minimum Days Off:** when an employee has a run of short shifts, this setting forces the scheduler to still give them 2 days off rather than spreading short shifts across all 7 days.
- **Minimum hours between shifts (10-hour default):** prevents "clopening" — closing at 11:30 PM and opening again at 7 AM. The auto-scheduler can still technically do it if forced, but the setting makes it work against that outcome rather than defaulting to it.
- Pete already sent a note to **Steve Carrell** (configurator) flagging this and offering to configure it himself if Steve doesn't get to it first. Pete's own default is 10 hours between shifts / 2 days off, but final numbers are "Steve's call."
- **Not yet fixed as of this call** — tracked as a new open item below.

## 3. Direct Live Disproof of the "Blank Availability Blocks Scheduling" Theory

This is the most consequential moment of the call for ticket 261575. Reviewing a specific Bell employee, **Kunle** — who had zero entries on the Availability tab ("wide open," no dots/dashes, meaning Employee Maintenance was never done for him) — Pete and Monica found he had actually been given **five shifts, including a double** (two shifts in one day, caused by the same missing 10-hour-between-shifts constraint from §2). Monica had been told by her own team that blank availability was *why* the system wasn't scheduling people. Pete's direct response, live: *"If you ever hear that, that is not true. This is the evidence right here."*

- This is a second, independent counter-example to Unifocus support's standing theory on [UNIFOCUS-261575](2026-08-31_ticket-261575-schedules-not-generating.md) (Jeremiah's 9/3 claim that blank availability blocks population) — the first being the Bell schedule's 71% fill rate cited in Pete's 9/4 ticket reply. **Worth adding to the ticket file as further evidence** the next time that thread is touched.
- Pete's broader framing to Monica: doing Employee Maintenance/Availability doesn't *enable* scheduling — the system will schedule blank-availability employees just fine (arguably too freely, per §2's messiness) — it *restrains* the auto-scheduler into giving people the shifts they actually want, rather than whatever's left over.

## 4. Contract-Labor Placeholder Employees — Walkthrough on a Reference Property

Monica confirmed The Moran uses contract labor (likely Housekeeping-heavy) and asked whether to have the team start scheduling now or wait. Pete walked her through building placeholder/"temp" employees using a live example from a different (unnamed, non-MakeReady) property he'd recently configured the same way:

- **One job per placeholder employee** — Pete's explicit best-practice recommendation, not one employee carrying multiple jobs. Multi-job contract placeholders become stale/confusing once that specific combination of shifts is no longer needed.
- **Naming convention options:** alphabetize-by-last-name systems mean many properties prefix these employees to sort to the bottom (e.g., last name starting with "Z," or literally "Contract") with the job name in the first-name field (e.g., "Line Cook").
- **Employee ID:** just needs to be unique and not a real MakeReady ID — can be sequential/meaningless, or encode department/job/serial number.
- **Setup fields:** hire/effective date can be backdated to the start of the year; Work Class should be set to a contract-employee classification; status active as of the hire date entered.
- **Auto-populate vs. manual:** properties vary on whether contract placeholder shifts auto-populate onto the schedule or must be manually assigned every time — Pete's inclination for The Moran is to require manual assignment (forces managers to think about it each time) but noted Housekeeping specifically might be better served by auto-populate given volume — not decided.
- **Sizing:** Monica needs to determine the max number of contract employees needed **per job, on the single busiest day** (not a running total) — Pete's suggested approach: let the team "clamor" for what they need via email rather than over-building; ballpark estimate discussed was ~12-15 for Housekeeping. Monica was sending that email to the team as the call wrapped.

## 5. Decision: Don't Delay Go-Live Over an Imperfect First Auto-Schedule

Pete's explicit guidance, consistent with what he told every manager group during the week: hold the Friday-noon deadline as designed — if the auto-generated schedule doesn't look right, managers edit it manually now, then do their Employee Maintenance/Availability entries properly, and the following week's auto-generation will improve. Reinforced to Monica that this is intentional, not a failure to be rescued: *"It's your schedule... we'll work it. It'll get better every week."* Monica was encouraged to bring printed schedules to the 2:30 PM labor meeting that same day as a visible teaching moment for the team on why Employee Maintenance matters.

## 6. Minor/Contextual Items

- **Ryan** (a Moran manager) had already independently downloaded the mobile app and hit an error — casual mention, not escalated as a ticket.
- Sub Only flag: reiterated context already documented elsewhere (pre-populated for existing secondary-job employees as a go-live favor; new employees need it set manually going forward).
- Monica was sick during the call and said so directly; ended the call to go home and rest, with 2-3 more days of month-end close remaining.

---

## Open Items

- [ ] **Configure minimum-hours-between-shifts (10 hrs, Pete's default) and Minimum Days Off in Labor Structure** — flagged to Steve Carrell; Pete will configure it himself if Steve doesn't act first. Root cause of the "messy double-shift" pattern seen in Friday's auto-schedule.
- [ ] **Add the Kunle blank-availability-yet-scheduled example to [UNIFOCUS-261575](2026-08-31_ticket-261575-schedules-not-generating.md) as further evidence** — a second, independent counter-example (after the Bell 71%-fill data point) disproving support's "blank availability blocks scheduling" theory.
- [ ] **Build contract-labor placeholder employees** — owner: Monica's team, pending her email gathering max-per-day headcount needs by job (Housekeeping ballparked ~12-15). One job per placeholder employee, naming/ID convention as discussed.
- [ ] **Decide auto-populate vs. manual assignment for contract-labor shifts, by department** — not decided; Housekeeping may warrant auto-populate given volume, other departments manual.
- [ ] Investigate Allegory bartender standard showing zero generated hours despite present beverage revenue — already tracked elsewhere, not newly raised here but adjacent to this call's schedule-quality review.
