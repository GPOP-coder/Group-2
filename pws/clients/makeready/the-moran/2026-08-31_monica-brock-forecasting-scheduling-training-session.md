<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran — Weekly Forecasting/Scheduling Cycle Walkthrough with Monica Brock (and Discovery of UNIFOCUS-261575)

**Date:** August 31, 2026
**Location:** The Moran, Houston — onsite, evening before Pete's formal manager training week begins (config was Steve Carrell's; training is Pete's, week of Aug 31)
**Source:** Plaud transcript
**Participants:** Pete Castellano (PWS), Monica Brock (Director of Finance, The Moran), an unidentified third participant (brief interjections throughout — diarized as "Speaker 3," never confirmed by name)

**Scheduled as:** System Admin Training Session 1, per the finalized training outline ([2026-08-25_training-outline-email-final.md](2026-08-25_training-outline-email-final.md)) — Admin Training, Monday 8/31, one of the two 3-hr blocks (9 AM–12 PM or 2–5 PM CT). Planned curriculum: Revenue Centers, Key Business Indicators, Labor/Global Environments, Planning, Labor Structure, Labor Standards, Work Rules, Employee Set-up, Weekly Labor Management Meeting, Security Configuration.

**What actually happened:** The session went heavily off-script into unplanned troubleshooting tangents — the planning-period timeline was found misconfigured, and while testing schedule generation Pete and Monica discovered Generate Schedules was producing zero shifts property-wide, leading to **UNIFOCUS-261575** being filed live (6:40 PM CT same day; see [2026-08-31_ticket-261575-schedules-not-generating.md](2026-08-31_ticket-261575-schedules-not-generating.md)). Real ground was covered — Planning, Labor Structure, Labor Standards, Employee Set-up, and the Weekly Labor Management Meeting all got touched via these tangents (see sections below) — but **Key Business Indicators (as a formal topic), Labor/Global Environments, Work Rules, and Security Configuration were not covered** and still need a pass, likely in the second scheduled Admin block or a follow-up session.

---

## 1. Automated Weekly Timeline — As-Found vs. Corrected

- Planning period was open to the wrong week — the "Open New Planning Period" task had run on **Friday** instead of the intended **Thursday**, so everything downstream (rooms forecast entry, revenue center forecast, schedule generation) was trying to operate in/around the wrong planning week.
- Intended automated sequence (Task Scheduler, Setup > Administration): **Open New Planning Period** (Thu 1:00 AM) → **Import Forecast KBI Data** (Thu 1:15 AM) → **Generate Revenue Center Forecast** (found running Tuesday — wrong; corrected live to Thursday, later re-timed to 4:15 PM as part of the cycle redesign, §7) → **Generate Projected Hours** (Thu 3:30 PM) → **Generate Schedules** (Thu 3:30–3:35 PM).
- Corrected the active planning week live to **9/6–9/12**.
- Work week begins **Thursday** on the forecast/schedule cycle (confirmed with Monica, who initially thought Saturday).

## 2. Rooms Forecast Walkthrough

- Path: **Labor > Planning > View/Edit Rooms Forecast**. No "generate" step needed — just enter and the system remembers on cell-exit (no save button).
- Entered guest counts, arrivals, departures, and occupied rooms for 9/5–9/12 live, sourced from an Opera report.
- Property's revenue analyst currently sends only a 10-day forecast — **not far enough out**; Unifocus needs ~16 days to be useful. Pete's guidance: push the analyst to extend the window (not urgent, just a suggestion).
- **Anomaly flagged, not resolved:** 9/5 showed **555 guests for 185 rooms** (~3 guests/room) — Pete asked what's driving it (event? group?); no answer captured.

## 3. Banquet/BEO Forecast — Not Yet Automated

- **Import Forecast KBI Data** pulls two files in one pass — rooms forecast and banquet forecast — and can't be split; if the banquet file isn't there or isn't right, the whole task's banquet half silently does nothing.
- Banquet side needs a **daily** file out of Delphi. Delphi won't send directly to non-client addresses, so the working pattern elsewhere: **Leslie schedules a recurring Delphi report → sends to Celeste (banquet director of sales) → Celeste forwards to PMSfiles@unifocus.com**. Not yet set up here.
- Current sample file has definite/agreed events with **no cover counts on package-type bookings** (e.g., "lunch package"). Pete's guidance for sales: **don't put cover counts on the package itself** — break it into its component events (plated dinner, cocktail reception, ceremony, etc.), each with its own BEO and cover count. A "wedding" line tells kitchen/setup nothing; the individual service components do.
- As a live test, manually entered two events for the week: **9th — reception for 60**; **11th — meeting for 5 + lunch + continuous beverage (mapped as meeting + lunch + break)**.
- Pete: *"Steve and I will continue to watch the banquet import progress"* — open action item, no owner/date yet.

## 4. Revenue Center Forecast — Mechanics & Beverage

- Generate Revenue Center Forecast uses either **TASE** (trend-adjusted exponential smoothing — a weighted average favoring recent weeks) or **regression**, set per-KBI under Setup > Forecast Structure. Nothing here is on regression yet — needs more data history first.
- **"Needs attention" ≠ broken.** A **0** means "closed" and zeroes out shifts for that KBI — always enter at least a **1** for anything that's open, even without a firm number, while data history builds.
- **Beverage should be forecast as dollar revenue, not covers** — covers don't reflect drink volume (one cover could mean ten drinks or zero), and revenue dollars is the number that actually drives the bartender labor standard.
- **Christian** (Director overseeing beverage) identified as the right long-term owner of beverage forecasting; Pete offered a dedicated follow-up session for him.
- **Corroborated 8/31/26:** Monica's live comment that "beverage revenue [is] not coming in right yet" has a real paper trail — Allegory's beverage revenue (Beer/Wine/Liquor) is missing entirely from ProfitSword's raw export, a ProfitSword/Actabl-side issue, not a Unifocus mapping problem. FYI only, no action needed from Pete. Full thread: [2026-08-31_steve-fwd-beverage-revenue-allegory-profitsword.md](2026-08-31_steve-fwd-beverage-revenue-allegory-profitsword.md).

## 5. Generate Schedules Failure — Root of UNIFOCUS-261575

- **First test (Housekeeping only):** Generate Projected Hours + Generate Schedules produced 15–16 shifts but **filled none of them**. Root cause: Room Attendant has a seasonal sub-job/"assignment" split — **Daylight Saving Time vs. Standard Time**, each with its own labor standard and different start times (8 AM weekday/DST, 9 AM weekday/standard, 10 AM weekends) — and no employees had been given either assignment yet. Employees need the matching "assignment" in Employee Maintenance to be eligible to "catch" a shift generated under that standard.
- **Second test (entire property, all divisions/jobs, schedule cleared and regenerated):** produced **zero shifts property-wide** — not isolated to Housekeeping.
- Pete: *"That is very troubling"* — flagged as needing an immediate support ticket. This is the point at which **UNIFOCUS-261575** was filed.
- **Side finding — filter footgun:** the Scheduler's "Schedule Group" filter and "By Job" filter are independent and AND-combined; a mismatched combination shows nobody and reads as "the schedule is gone." Pete expects this to drive a large share (his estimate: ~40%) of manager confusion once training starts, and plans to walk through it explicitly in class.

## 6. Employee Maintenance / ADP Integration Issue

- Three Bell staff were importing under **Valet's** department code (340) instead of **Bell's** (130). Root cause: ADP updated their job but not their department when they were moved (~2 weeks prior), and the reconcile process didn't recognize it as a clean transfer.
- Diagnosed via **Employee Maintenance > Reconcile Employees > Employees with Errors**. Daily reconcile runs at 6:30 AM; there's also a daily "hours transfer" email — **Monica (and possibly HR) need to be added to that distribution**, not currently receiving it.
- Fix has to happen **in ADP**, not overridden in Unifocus to compensate for ADP's data error. Once corrected in ADP, new punches import correctly going forward, but historical hours already imported under the wrong code will keep showing as errors for **~13–14 days** (the file carries a rolling multi-day window) unless the affected punches are individually corrected in ADP.

## 7. Weekly Cycle Redesign — Proposed New Timeline

- **Problem:** the original single-Thursday cycle compressed forecast entry and F&B revenue-center edits into one afternoon window, colliding with a standing Thursday leadership meeting (10–11 AM) and Monica's own room/banquet-forecast deadline.
- **Revised cycle discussed and roughly timed live** (not yet locked into Task Scheduler beyond what was tested):
  - Thu — Open new planning period (unchanged, 1 AM); rooms + banquet forecast entered by **Thu 4:00 PM**
  - **Thu 4:15 PM** — Generate Revenue Center Forecast
  - **Thu 4:15 PM – Fri 12:00 PM** — F&B revenue-center edit window (previously same-day Thursday noon–3 PM; now spans overnight into Friday)
  - **Fri ~12:30 PM** — Generate Projected Hours + Generate Schedules
  - Managers then get Friday evening through Wednesday to build/publish schedules — unchanged endpoint: schedules done and published by end of day **Wednesday**, ahead of the Wednesday labor meeting.
- Rationale: gives forecasting and F&B roles real breathing room without meaningfully shrinking managers' scheduling window; once F&B forecasting is routine, Pete expects that step to collapse to "a five-minute job" and the gap to shrink naturally.
- **Open, unresolved:** whether other MakeReady properties run the same weekly cycle — worth aligning if so, not yet checked.

## 8. Labor Actuals / Work Records Validation

- Spot-checked Room Attendant actual hours via **Labor Actuals > Labor Structure** against the **Weekly Labor Summary** report — confirmed work records (ADP-sourced actual hours) are flowing into both ProfitSword and Unifocus correctly, contract vs. regular hours breaking down as expected.
- Aside, not a Unifocus issue: property has an internal segregation-of-duties concern (one person both entering and approving journal entries) — noted, no action taken.

## 9. Labor Productivity Report — Budget Sanity Check

- Walked through **Setup > Labor Structure** per-job productivity measures (e.g., hours per occupied room for Housekeeping) and the **Labor Productivity Report**, which compares actual vs. standard vs. a manually-entered goal/budget number.
- Guidance: use this as a **monthly-cadence budget gut-check**, not a weekly labor-meeting tool — one week of data is too noisy. In the sample pulled, Room Attendant read close to standard; House Person read high (Pete's read: plausibly labor "saved" on Room Attendant showing up as House Person spend when house staff help strip rooms — a common pattern, not necessarily a problem).
- Monica asked about a standard variance threshold; Pete's rule of thumb: **aim for single digits** as a starting target, refine from there once standards have run long enough to trust.
- Monica does not trust the budget numbers currently loaded — inherited from the property's prior management company, not yet re-derived under current ownership.

## Side Notes (context, not actionable)

- **Monica's prior WFM experience is a real asset here.** She's not new to labor management systems — she was a customer who **set up and used both OnTrack (from Heath) and Hotel Effectiveness** at a previous downtown Houston union property, not just a light user of either. She's used to more manual, human-driven schedule control ("I open up the schedule" vs. system-driven) — useful context for how she'll read Unifocus's more automated posture. Net effect: her Unifocus training should go faster and land deeper than a first-time admin's would, since she already has the underlying WFM concepts (forecasting, standards, schedule generation) — she's translating, not learning from scratch. **Pete's caveat, given this session's ending: that only helps if the system actually works as intended** — the property-wide zero-shift failure (§5) undercuts the value of her head start until UNIFOCUS-261575 is resolved.
- The Moran also operates ~20 residential condo units on upper floors (11–12 currently occupied) — unrelated aside about a billing dispute with a resident; not a PWS/Unifocus matter.

---

## Decisions / Changes Made Live

- Corrected Task Scheduler's "Open New Planning Period" back onto its intended Thursday cadence; planning week corrected to 9/6–9/12.
- Corrected "Generate Revenue Center Forecast" timing from Tuesday to Thursday (later folded into the new proposed Thu 4:15 PM slot, §7).
- Manually entered rooms forecast (guest counts/arrivals/departures) and two banquet events for the 9/6–9/12 week as a live test of the manual path.
- Filed **UNIFOCUS-261575** after confirming Generate Schedules produced zero shifts property-wide.
- Sketched the revised Thu/Fri forecast-then-schedule cycle (§7) — discussed and roughly timed, not yet implemented in Task Scheduler.

## Open / Unresolved

- **Blocking:** root cause of Generate Schedules producing zero shifts property-wide — awaiting Unifocus support response to UNIFOCUS-261575, needed before/during Tuesday 9/1 9 AM training.
- Banquet/Delphi daily-file automation — needs Leslie to schedule the recurring Delphi report to Celeste, forwarded to PMSfiles@unifocus.com; Manali (Unifocus data) still has to build the mapping once the file is reliable.
- 9/5 anomaly — 555 guests for 185 rooms — cause not identified.
- Whether other MakeReady properties share this weekly cycle.
- Revised Thu/Fri forecast cycle (§7) — not yet locked into Task Scheduler.
- Bell vs. Valet ADP department-code mismatch — fix has to happen in ADP; ~13–14 day hours-history lag once corrected.
- Monica to be added to the daily hours-transfer email distribution.

## Next

- Formal manager training begins **Tuesday, September 1, 9:00 AM** with John Christian, per the property's Manager Meeting Schedule — full Tue–Thu roster in [contacts.md](contacts.md).
- **Admin curriculum gap:** Key Business Indicators (as a formal topic), Labor/Global Environments, Work Rules, and Security Configuration were on the Session 1 outline but never reached — needs a pass in the second scheduled Admin block or a dedicated follow-up before Monica/The Moran's admins are considered fully trained.

---

*© Peter A. Castellano. All rights reserved.*
