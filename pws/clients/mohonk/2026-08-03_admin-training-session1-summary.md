<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk Admin Training — AM + PM Sessions (Plaud), 8/3/26

**Date/Time:** 8/3/26, 8:58 AM start, ran to ~12:xx (short break for Casey's mom's medical appointment), afternoon block 1:00–4:00 PM same day.
**Correction from earlier draft:** Both 3-hour blocks of the curriculum's Mohonk-compressed schedule happen **on the same day** (today), split by a lunch/errand break — not on two separate days as the prior version of this file implied. AM block = full transcript below (through ~03:09:00 elapsed / lunch break). PM block (1:00–4:00 PM) not yet captured — add when available.
**Source:** Plaud pen/app auto-summary + full AM transcript (received complete this time, ~50 min elapsed to 03:09:00).
**Attendees confirmed from transcript:**
- **Pete Castellano** (instructor) — Speaker 1
- **Bron Walis** (Director of IT) — Speaker 2, "Ron" in Plaud's mangled transcription. Confirmed by role (interface troubleshooting, ADP file monitoring) and directly addressed as "Ron" by Pete ("let Ron tell me a little bit more").
- **Casey Dow** (Software Specialist) — Speaker 4, directly addressed by name ("Casey, tell me a little bit more") and confirmed by role (standards creation, employee maintenance, regenerating standard hours, J-1/H-1B multi-job handling).
- **Speaker 3** — likely **Lou Petruzzelli** per kb.md's expected attendee list, but not directly named in transcript; discusses labor standards/reporting/meeting culture, mentions recent health issues, deep tenure with the system (references Ken Haven's original sales visit). Working assumption, not confirmed.
- **Speaker 5** — brief, infrequent lines (employee-maintenance-adjacent content); possibly Casey misattributed by Plaud's diarization, or another staff member present briefly. Not identified.
- **"Paul" (Speaker 6) = Bron Walis, confirmed by Pete 8/3/26** — Plaud's diarization got confused (likely a re-entry into the room or a mic/audio artifact caused it to split Bron into a second speaker label). Not a new contact. The dinner/family chat, "worked with Pete in the winter" reference, and the **Beverage-as-standalone-department** ask (see below) all belong to Bron Walis, consistent with his IT/interfaces role and existing history with Pete.
- **James Danks was not present** — Pete confirms early on he'll see James separately later that day.

**Format:** AM session = first half of the curriculum's Mohonk-compressed 2×3hr admin training (see `pws/foundations/08-admin-training-curriculum.md`) — first live field test of that curriculum.

---

## Summary (as generated)

A focused, user-driven training and troubleshooting series centers on the Unifocus labor management system — its history, architecture, forecasting, labor standards, integration with ADP, and operational practices. Attendees are mature users seeking to get more out of the system, especially in labor standards, reporting, and improving labor meetings. Pete outlines a tailored agenda using the updated Unifocus training book (~187 pages) and plans dedicated sessions on running effective labor meetings, supported by a handout from Susanna Briggs. Upcoming labor meetings are scheduled for August 4–5, 2026, with a Wednesday meeting on August 5 that Pete will attend.

The training contrasts Unifocus's consulting origins with today's software-forward approach after Riverside's acquisition, aiming to make the product more self-administered and scalable to smaller properties while still requiring intensive setup for complex operations. Mohonk previously used Unifocus time and attendance, then moved to ADP ("80 B" / ADP), with earlier cultural and cost barriers to adopting labor standards.

**Roles:** Bron ("Ron") — interface troubleshooting expertise. Casey — standards creation and employee maintenance, including manual handling for multi-job J-1/H-1B students and regeneration of standard hours.

**Central theme — data flow:** Unifocus acts as a capstone system, exposing upstream issues (ADP, HMS, banquet systems). Accurate and timely data is crucial; missing or delayed feeds stall labor meetings and scheduling. Time-off requests flow from ADP daily; cancellation handling requires confirming whether ADP files remove entries outright or flag them with a cancel code (open question, not yet confirmed which behavior Mohonk's feed uses).

**System architecture:** Unifocus is a management process supported by software, not payroll or HR. Two core elements drive labor standards: **volumes (KBIs)** and **plans**. KBIs include market segments (rooms, arrivals, departures — independent variables), revenue centers (meal periods with special forecasting capabilities — dependent variables, generated then editable), input KBIs (manual/imported), calculated KBIs (derived, e.g. departures/stayovers), and environments (isolate anomalies/seasonality for forecasting only, no direct labor trigger). Flow patterns distribute volume across intraday intervals — confirmed **Mohonk does not currently use flow patterns**.

**Labor structure** = the labor chart of accounts: property → division → department → job → optional assignments. Everything hangs off it. Maintain strict one-to-one correspondence between ADP jobs and Unifocus jobs — misalignment causes employee import failures, hours authorization errors, reporting gaps. Job creation/deletion is sensitive due to persistent "roots" (links, history) — deprecated jobs should be isolated (a "trash can" department), hidden via permissions, not deleted unless completely root-free. Assignments offer operational granularity (stations, day-of-week/volume sensitivity) without separate reporting — use for refinement within a single ADP job, but **never assign ADP job numbers to assignments**. *(Directly relevant: Mohonk's original implementation had Assignment overuse as its root configuration problem — see kb.md Implementation History. This module reinforces the correct usage going forward.)*

**Scheduling** is multi-step and forward-looking, aligned to weekly planning periods. Tuesday mornings: system generates revenue center forecasts, James (or delegate) edits; overnight, volumes convert to projected hours/shifts via standards. Distinguish **"Generate Projected Hours"** (creates shifts from volumes/standards) from **"Generate Schedules"** (fills shifts with employees) — the system fills shifts, not people. Troubleshooting focuses on volumes → standards → employee maintenance (availability, rules, time off), in that order. Managers own the schedule after generation — fix issues manually rather than re-forecasting. Pre-scheduling is respected; the engine builds around fixed assignments. Centralize all departments' schedules in Unifocus to enable clock locking, ADP schedule export, time-off workflows, gap filling. Publishing is typically manual after review, though automation exists.

**Forecasting** blends regression and trend-adjusted exponential smoothing (TES) with a 13-week lookback, environments to skip anomalies (blizzards, holidays), and clear separation of input vs. calculated KBIs. Regression uses capture ratios (e.g., room guests → covers) and can yield zero when the relationship is weak; TES always yields a value, weights recent weeks, can perpetuate trends. Forecast imports must be controlled to avoid overwriting manual edits before projecting hours; actuals imports must be enabled and correctly mapped, **especially banquet actuals via a KBI file covering a 21-day lookback/forward window to catch late closures**. Rooms forecast arrives daily from HMS but is typically ingested weekly (Monday) with a 21-day forward look and 21-day history.

**Banquet forecast — live status:** Mohonk switched from Delphi to **Infor SCS**; the SCS → Datavision interface is largely built, targeting **granular** import this year (~44 data points: plated/buffet/continental/box by meal period). Under Delphi/Job Five, banquet coding was loose (everything coded "continental breakfast" because no one downstream cared) — that won't fly once the granular SCS interface goes live, since Unifocus will actually consume the category detail. **Group vs. Local distinction flagged as needed** — in-house group-event guests should reduce (or in some cases add to) the local restaurant demand forecast; not currently separated. *(Directly ties to kb.md's RMSOPS-14129 legacy-mapping-overwrite issue and the "New Issues Raised" Kitchen/Beverage items — same underlying banquet-interface transition.)*

**KBI mapping:** Separate forecast-side and actuals-side interfaces; each inbound line needs a unique mapping code aligned to a KBI. **Never map an import to a Calculated KBI** — silently breaks the logic, yields zeros with no error. Multiple source codes can stack to one KBI when they represent the same measure. Technique: send a "fake" file listing every potential KBI to expose all of them for mapping in one pass, rather than discovering gaps one ticket at a time.

**Beverage:** Recommend making Beverage its **own department** (matching P&L and ADP) instead of nested under individual outlets — reduces the "same position generating under multiple job codes" problem already flagged in kb.md (Granary bartender appearing under both "Main Service Bar" and "Granary").

**Spa:** Recommend converting Spa into a **revenue center** to automate forecast generation off guests/occupancy, enabling projected hours for attendants/reception rather than the current broken/zero state. Spa granularity (hair/nails/massage) is optional, likely unnecessary for labor standards initially — start aggregate, refine later. **Zeros in spa totals indicate hidden or incorrect mapping** — fix both forecast and actuals mapping, avoid Calculated KBI targets, align deadlines/volumes with other revenue centers. *(Directly actionable against the open "🔴 Spa Interface Not Processing" ticket in kb.md.)*

**Labor standard design:** Standards drive specific shift "containers" (start/end, min/max hours) — decide explicitly whether a standard should reflect the *desired* schedule or the *actual operational run rate*; either is valid, but be deliberate and consistent. Two trigger types: **Daily Hours** (e.g., bartender shift triggers when covers > 0, additional shifts after thresholds) and **Units-per-Shift ratios** (e.g., banquet servers 1:20 covers, 1:15 for plated). Banquet standards aggregate covers by meal type property-wide — shifts are generic, won't match individual event times precisely; ensure culinary, stewarding, service, and setup are all represented for each meal type and both group/local categories, or labor silently goes missing. Use generalized categories (plated/buffet/continental/box; receptions: cocktail-no-food/light/medium/heavy) and map local variations (e.g., a luau) onto existing standards unless materially different.

**Housekeeping** exemplifies minutes-per-unit modeling: distinct times for departures (~40 min) vs. stayovers (~20 min), with an assumption like 10% DND on stayovers. Two-pass mechanic: calculate total minutes, add staff (non-cleaning) minutes in a second pass based on generated shifts, round using a 0.2 threshold — often producing two short shifts. **Improve accuracy by collecting real DND data** to refine the assumption rather than guessing. For seasonality, prefer separate **assignments with date ranges** for changed standards over ad hoc edits; alternatively, control intermittent operations purely through volume forecasts (zero volume = no labor) when the standard itself stays constant but operating days vary.

**Operational governance:** Do not move the planning period and forget to reset it — imports/generation will target the wrong week; restrict planning-period-change permissions. Some interface imports were **intentionally broken** in the past to stop problematic overwrites — restoring them requires proper controls, not just flipping them back on. Validate forecasting method per revenue center (TES vs. regression), capture-ratio stability, and environment/holiday handling (including whether to ignore day-of-week for holidays). Budgeting exists to roll day-by-day forecasts into monthly hours/dollars by job — adoption requires trusting the standards first, typically a **two-year practice cycle** before using it for a real budget submission.

**Tech note:** Plaud pen/app transcribes well but doesn't auto-label speakers by name (gets department/role context instead) — contrast with Teams, which identifies the actual speaker. Relevant to how this file's attendee attribution above should be read (inferred from role/content, not a confirmed transcript label).

---

## Assignments / Action Items (as generated)

- [ ] Review the PDF handout on conducting labor meetings (from Susanna); hold a dedicated session to refine the meeting process; schedule labor meetings on **Wednesday** to ensure complete prior-week data is available.
- [ ] Investigate and resolve data calculation issues affecting labor meetings; confirm ADP→Unifocus timelines for new-employee imports and time-off requests, including **cancellation handling** in inbound files (does ADP remove the entry or flag it with a cancel code?).
- [ ] Audit planning-week permissions; restrict access to planning-period controls; stabilize automated processes.
- [ ] Validate import configurations: ensure actuals imports (banquet KBI, spa, rooms) are enabled/mapped; control forecast imports so they don't overwrite manual edits before Generate Projected Hours runs.
- [ ] Reconfigure **Beverage as a standalone department**, aligned to P&L/ADP.
- [ ] Convert **Spa into a revenue center**; correct spa KBI mappings (avoid Calculated KBI targets); use aggregate treatment counts initially.
- [ ] Document interface data flows and the weekly labor timeline; assess which departments still use non-Unifocus methods (e.g., Excel) and plan to centralize scheduling in Unifocus; automate ADP schedule retrieval.
- [ ] Ensure departments close out BEOs promptly; rebuild removed banquet KBIs; align mapping entries with inbound lines using unique codes.
- [ ] Practice creating/refining labor standards for F&B, banquets, housekeeping; confirm the correct process for regenerating standard hours on discrepancies (cross-check against what Susanna previously sent Casey).
- [ ] Audit labor structure: enforce strict one-to-one ADP↔Unifocus job mapping; **remove ADP job numbers from assignments**; isolate deprecated jobs in a "trash can" department (no mappings/links); review TK/reconcile code linkages; prepare tickets to delete truly root-free unused jobs.
- [ ] Request access to Employee Reconcile and Hours Transfer emails; compile current import/transfer errors; consider a ticket to relax non-critical required fields (e.g., gender) if feasible.
- [ ] Configure forecasting rules for holidays (weekday-specific vs. ignore-day-of-week); verify revenue center forecasting method (TES/regression) per outlet; define environment skip rules; establish a pre-generation checklist confirming volumes are complete/accurate before running Generate Projected Hours.
- [ ] Plan for day-by-day annual forecasting tied to standards, toward eventual budgeting use; explore advanced KBIs (actual DND tracking, laundry pounds regressed against spa treatments/departures); test revenue center capacities and flow plans for demand exceeding room capacity.

---

## Live Diagnostic Findings (from the full AM transcript)

Real troubleshooting done live in-session, not just teaching — worth tracking as rate-justification evidence per `feedback_track_rate_justification_evidence` memory.

**Banquet forecast import — partially still live, risking overwrite of James's manual entries.** Pete walked the actual screens: on the **forecast side**, banquet KBI import looked like it was still importing (not fully disabled), which would explain why James's manually-entered banquet forecast numbers keep disappearing — the automated import wipes them out on its next run, but only *before* Generate Projected Hours consumes them; once consumed, the data is safe going forward even if the underlying screen later shows zeros. On the **actuals side**, by contrast, the import is confirmed fully shut off (a field of zeros, as expected per the RMSOPS-14129 fix). **This refines RMSOPS-14129**: the actuals-side fix (deleting the BQT mapping) is holding, but the forecast-side automation may not have been fully disabled during the same cleanup — worth confirming with Monali which screens were actually touched.

**Spa mapping — root cause still elusive, real blocker found.** Live investigation confirmed Spa is not a revenue center; input KBIs exist for Day/Overnight/Employee, and "Spa Total Treatments" is a **Calculated KBI** that appears to already have *some* mapping applied — invisible in the mapping UI Pete checked, producing zeros with no visible cause. Pete's explicit warning reinforced here: mapping an import to a Calculated KBI breaks silently. **Not resolved live** — flagged for a deeper look later in the week, with converting Spa to a revenue center as the recommended real fix (see Assignments above).

**Rooms forecast — confirmed working, no action needed.** Bron and Pete confirmed the HMS→Unifocus rooms forecast import is fully automated and functioning (Bron: "I didn't know we had that on... that was the easiest automation of all"). Pete does **not** recommend using Unifocus's built-in Rooms Forecaster tool ("it doesn't work like it should") — Mohonk's practice of a human revenue manager reviewing pickup data is the right approach.

**UNIFOCUS-252999 — operational detail added to the confirmed root cause.** Bron confirmed the practical failure mode matching the KB's root cause: covers entered Monday → upload Tuesday AM → should generate automatically. If not entered by Monday, it slips to Wednesday and the automated Generate Standard Hours task (runs 4x/day) **does not appear to catch the late-arriving data on its own** — someone (Bron/Casey) has to manually regenerate. Bron/Casey both describe this as "Manali's problem" to ultimately fix, but in practice it's currently a manual workaround on Mohonk's side every time it happens. This is a live example of exactly the labor-meeting-stalling symptom the KB already documents.

**Labor structure cleanup — concrete instances found of the known "duplicate job code" problem.** While reviewing Beverage's labor standards live:
- **Carriage Lounge Bartender** has a labor standard correctly attached under its new home (`Beverage Service > Carriage Lounge`), but a **leftover, redundant assignment and standard also still exist** under the old structure (`Dining Room Main > Bartender Main > Carriage Lounge` assignment) — an incomplete cleanup from Pete's prior remediation work that reverted or was never fully applied. Confirmed no TK/reconcile codes are attached to the stale copy, so it's not currently corrupting reports, but it is confusing and should be tidied.
- **Banquet Bartender's TK code is attached to a leftover "Banquet Bar" job** under Dining Room Main (that should have been retired) rather than the correct "Banquet Bartender" job under Food & Beverage > Banquet. Pete identified the fix (move the code) but **deliberately deferred making the change** until James weighs in on his preferred structure — "I don't want to mess with it before he comes in."
- **Main Buffet Attendant carries two TK codes** — confirmed intentional/known (tied to something James was doing with on-call coverage), not an error, just worth documenting.

**Employee/hours import governance — concrete gaps found.**
- Casey does not currently receive the **Employee Reconcile** error email at all (only checks manually via Employee Maintenance → Reconcile Employees tab); Bron does receive **Hours Transfer** errors. Action: simple support ticket to add both Casey and Bron to both notification emails.
- **Real example of the ADP-job-without-Unifocus-job gap:** James Adinolfi, newly promoted to a new "Fitness Desk Supervisor" position created in ADP, has no matching Unifocus job — his profile now shows a "home job must be valid" error. Confirms the existing governance gap (no enforced same-day SOP between HR creating an ADP job and IT creating the matching Unifocus job).
- **New issue found: a missing "Gender" field on new ADP hires blocks Unifocus import entirely** ("required field missing from file: gender") — affected ~10 employees historically before being traced. Action item: Pete to open a ticket asking whether this required field can be relaxed/made optional; Casey to be CC'd.
- Confirmed: Unifocus→ADP schedule export has been manually tested and works; next step is automating ADP's pickup of the file rather than a manual transfer (ties to the existing "centralize scheduling in Unifocus" action item).

---

## Cross-References to Existing Mohonk KB

- **RMSOPS-14129** (banquet actuals overwritten) — see Live Diagnostic Findings above; refined with the forecast-side-still-live finding. This session's "never map to a Calculated KBI" and unique-mapping-code guidance is directly applicable once the SCS→Datavision interface goes live.
- **Spa Interface Not Processing** — see Live Diagnostic Findings above; the hidden Calculated-KBI mapping is a more specific blocker than previously documented. Spa-as-revenue-center remains the recommended real fix, not yet built.
- **Beverage "same position under multiple job codes"** (Granary bartender) — now confirmed with two additional concrete instances (Carriage Lounge Bartender, Banquet Bartender) found live in this session, both deferred pending James's input on desired structure. The standalone-Beverage-department decision (see below) addresses the underlying cause going forward.
- **Beverage as standalone department — now an explicit, requested change**, not just Pete's best-practice suggestion. Bron Walis explicitly asked to pull Beverage back out as its own department during this session, confirmed Beverage is a standalone department in ADP (the deciding test), and Pete agreed to make the change "while I'm here." Update kb.md ownership/status accordingly.
- **UNIFOCUS-252999** (Thu–Sun standard hours gap) — see Live Diagnostic Findings above; Bron's early-session aside ("that ticket resolve? ... I had a follow up and I asked for a call with her, but I didn't hear back") confirms frustration was still live going into this visit, and the manual-regeneration workaround is confirmed still in active use.
- **Mohonk's original Assignment-overuse problem** (Implementation History) — this session's live Beverage cleanup work is a direct, concrete continuation of that same remediation, not a new problem — confirms the prior fix was real but incomplete in at least two spots.

---

## Misc Notes

- **"Dino"** — a Unifocus backend/engineering resource who handles interface/mapping-level fixes. No one on Pete's side communicates with him directly ("no one talks to Dino... I can only send him messages") — comparable to Monali/Susanna/Bron being the effective escalation path. Referenced regarding who did the RMSOPS-14129 mapping-deletion work. Not a Mohonk contact — general Unifocus-org color, may be worth a note in `pws/unifocus/kb.md` if he recurs.
- Confirmed: James has largely moved off needing a color-coded exported schedule and now runs F&B off Unifocus directly; still exports for his own reference, which is optional/his workflow, not a system dependency. Housekeeping's (Steve Dickman) publishing method unconfirmed — may still involve Excel, worth checking.

---

## Open Items From This Session

- [x] Full AM transcript received — this file updated accordingly.
- [x] "Paul" identified — confirmed by Pete 8/3/26 to be **Bron Walis** (Plaud diarization error). Attendee section and all cross-references corrected.
- [ ] PM session (1:00–4:00 PM, same day) transcript/summary not yet received — add when available.
- [ ] Confirm speaker identity for Speaker 3 (working assumption: Lou Petruzzelli) and Speaker 5 (unidentified) against Pete's direct knowledge of who was in the room.
- [ ] Confirm ADP time-off cancellation behavior (remove vs. cancel-code) — flagged live as unresolved, Bron/Casey both raised real-world pain points on this.
- [ ] Confirm with Monali which screens were actually touched during the RMSOPS-14129 fix — forecast-side banquet import may still be partially live (see Live Diagnostic Findings).
- [ ] Open ticket: add Casey Dow and Bron Walis to both Employee Reconcile and Hours Transfer error-notification emails.
- [ ] Open ticket: ask whether the ADP "Gender" required field can be relaxed for Unifocus import (Pete to file, CC Casey).
- [ ] Move Beverage back to a standalone department (Bron's request) — Pete to do "while I'm here" this week.
- [ ] Resolve Carriage Lounge Bartender and Banquet Bartender job/TK-code cleanup — deferred until James weighs in on preferred structure.
- [ ] Check whether the Alice housekeeping system can report actual DND counts, to replace the current ~10% assumption with real data.

---

*© Peter A. Castellano. All rights reserved.*
