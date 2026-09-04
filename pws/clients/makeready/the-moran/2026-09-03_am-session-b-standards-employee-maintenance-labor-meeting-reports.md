<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran — Manager Training, Day 4 AM Session Part 2: Labor Standards Deep-Dive, Employee Maintenance & Labor-Meeting Reports

**Date:** September 3, 2026 (Thursday) — Day 4 of the training week, continuation of the morning group block
**Location:** The Moran, Houston — onsite
**Source:** Plaud transcript
**Participants:**
- Pete Castellano (PWS, trainer)
- **Christian Cardenas** — F&B/Beverage Director — diarized under both **Speaker 3** and **Speaker 4** across the file. **Resolved by Pete (9/3/26 evening): probably Christian throughout.** Content is continuous and thematically consistent (culinary/banquet standards, outlet covers thresholds, ADP secondary-job coding for his own banquet servers).
- Ryan Kerkemeyer — present but largely silent in this half; one clarifying question about PTO/time-off requests for an upcoming medical procedure (self-identified as **Speaker 2**)
- Danilo (Culinary) — present, background only, no lines captured directly attributable to him in this file
- Unresolved brief interjections from other voices during the standards walkthrough

**Confirmed format:** Direct continuation of [2026-09-03_am-session-a-forecasting-scheduling-workflow-manager-controls.md](2026-09-03_am-session-a-forecasting-scheduling-workflow-manager-controls.md) — same room, same attendees, no break in topic. This part covers the Scheduler screen mechanics, a deep labor-standards walkthrough (with a live attempt to fix a mislabeled covers trigger), Employee Maintenance, contract-labor placeholders, and the two core labor-meeting reports.

---

## 1. Scheduler Screen — Filter Mechanics (Repeat of the "40% Footgun," With a Live ADP Gap Found)

- Same filter walkthrough as prior sessions: Division/Department/Job filter shows everyone who can do a job (primary or secondary); Schedule Group and Job filters are independent and AND-combined.
- **Live discovery:** Christian filtered for Banquet Server and got only **3 people**, when he knows for a fact he has more staff — Allegory and Café Moran bartenders/servers who work banquets as a secondary job — who should show up as double-coded. They did not. Pete confirmed this is a real ADP data gap, not a filter problem this time: *"You should see everybody that has the second code... this is whatever was in ADP this morning."* **New finding, not previously tracked:** secondary banquet-server coding is missing in ADP for at least some cross-trained Allegory/Café Moran staff — a gap in the same family as the already-known Bell/Valet and dual-outlet-bartender ADP issues, but a distinct instance (affects who can catch banquet server shifts, not just who's visible under a job title). Not fixed in this session; flagged as an ADP-side correction needed.
- Reiterated: "hide unscheduled secondary employees" option, division/department/job as folders, and that schedule groups start empty and require explicit permissioning — same guidance as 8/31 and 9/1.

## 2. Live Numbers-at-the-Bottom Demo, Contract Labor Placeholder Concept (Repeat, With New Framing)

- Same "numbers at the bottom is all that matters" teaching as prior sessions, demonstrated on a real (if broken) F&B filter: "It made 131 F&B shifts... 821 hours. We've only scheduled 5 of them so far for 38 hours."
- **New wrinkle surfaced live:** a manager asked what the "PREM" (premium/overtime) figure at the bottom of the screen means — Pete acknowledged he doesn't usually look at that number himself and thanked the manager for flagging it.
- Contract labor placeholder concept reiterated (one placeholder per job, e.g., "Server Contract 1, 2, 3...," fed from Work Records) — same as taught to Monica 8/31 and to the PM group 9/1; still not built for this property as of this session.

## 3. Drag/Drop and ADP-Driven Job Eligibility — Night Auditor / Bellman Coding Confirmed Live

- Demonstrated the system will not let a manager drag a shift to an employee who isn't coded for that job in ADP, regardless of what the manager knows the employee can actually do.
- **Confirmed live:** the overnight bellman (night auditor rotation) is coded as Front Desk Agent in ADP, not as a job that would catch Bell shifts — consistent with, and now directly sourced to, the ADP-quality issue already summarized in the status report draft ("a Front Desk employee missing his Night Auditor job code, with a possible unpaid shift-differential concern"). Pete: *"It's possible you can put them in the wrong job at the right rate... no one cares, it's been doing this forever... but now the system is shining a light on it."* Not fixed live; an ADP-side correction, referred to HR.
- Overnight/back-to-back shift rules (10-hour minimum gap between shifts) demonstrated: the system will warn on a violation but still allow a manager to override it.

## 4. Employee Maintenance — General/Status/Jobs Tabs (Repeat Content)

- Same three-tab walkthrough as 9/1: General (only the display name is editable — used the "Prince" → "Tony" example again), Status (fully ADP-driven, including leave-of-absence and terminations — "the interface wins"), Jobs (Sub Only flag is the one lever managers have to prevent an unwanted secondary job from auto-catching a shift).
- **Live example used:** a cook named Garibaldi was still coded as a Steward secondary job from the prior management company. Pete tried to demonstrate un-checking a job assignment directly and discovered **he could not edit it either** — flagged live as a permissions gap needing a fix ("we need to give you the ability to do that, or go to HR"). Not resolved in this session.

## 5. Labor Standards Deep-Dive — Outlet Cook, Banquet Culinary, Action Stations

- Walked the shift-building mechanics for Front Desk (simple, whole-shift, KBI-triggered) and then Culinary in detail, using the "dropper filling a pitcher, then pouring into cups" analogy for minutes-per-unit standards.
- **Outlet cook standard — mislabeled AM/PM covers threshold, confirmed live and a fix attempted:** Pete and Christian identified that the 2:00 PM and 3:00 PM outlet-cook shift triggers are reading **AM covers** where they should read **PM covers** (both should be PM). Pete tried to edit the standard live and **could not** — *"It won't let me edit. Really. See, you can't change it either... there's something weird going on. They're working on something."* This is the live source of the "likely-mislabeled covers threshold" item already carried in [2026-09-02_status-report-draft.md](2026-09-02_status-report-draft.md); it remains uncorrected, and the inability to edit standards at all during this session is a new, possibly related, system-behavior data point worth flagging alongside UNIFOCUS-261575 even though it wasn't explicitly tied to that ticket.
- **Banquet culinary standard** walked in full: separate AM/PM, hot/cold shift lines, each an independent minutes-per-cover calculation with a 4-hour minimum/8-hour max per shift, deliberately not reading the BEO directly — mirrors the "pitcher and cups" explanation given to Monica on 8/31.
- **Action stations** confirmed as a manual-entry-only KBI (not read from any BEO field) — someone has to forecast a number ahead of time and separately enter the actual afterward; currently set up to produce only one shift regardless of the number entered (e.g., entering "3" doesn't create three action-station shifts) — flagged by Pete as a known limitation he can't fix before departure: *"I don't know if I have time to do that while I'm here."*
- **Banquet bartender standard** confirmed as the same manual-KBI pattern as action stations — no automatic trigger off "reception" or any BEO field; someone has to enter a number on both the forecast and actuals side for any shift to generate. No owner assigned in this session (echoes the open item from 9/1's PM(a) session).
- Christian raised that Culinary's needs-attention forecast is missing **buffet/plated/continental** granularity — everything comes in as generic breakfast/lunch/dinner/reception/break from ProfitSword, when Delphi actually distinguishes meal-service type. Pete confirmed this is a real, known limitation (deliberately not built out yet, not a bug) and said it's worth revisiting later — a continental-breakfast-only day currently generates the same labor as a fully plated one.

## 6. Employee Maintenance — Availability, Regular/Permanent/Variable Scheduling

- Demonstrated setting required-days-off (a hard block that still allows manager override with a warning) and availability windows sized to "catch" the correct shift (too tight = employee never catches anything; too loose = employee could catch a shift they shouldn't).
- Explained the three shift-assignment tiers: **Variable** (default, standard auto-scheduler behavior), **Regular** (gives an employee priority for a specific recurring shift without exceeding the standard's shift count), **Permanent** (locks a shift in regardless of standard — can exceed the standard if overused). Guidance: start with variable, use regular sparingly for real recurring exceptions, treat permanent as a last resort.
- Confirmed there is no employee-level audit trail visible to managers for who edited a schedule last — available to Monica if it ever becomes an issue, not needed today.

## 7. Labor-Meeting Reports — Weekly Labor Summary & Weekly Projected Schedule

- Walked the **Weekly Labor Summary** report in detail: KBIs at top, actual-vs.-standard at the bottom, "start at the bottom, work your way up" reading method; demonstrated the **breakdown-hours** toggle to isolate contract-labor hours from regular hours within a job.
- Reinforced "actual versus standard is all that matters" — repeated multiple times as a deliberate memory-anchor phrase, consistent with the training-methodology hallmark already tracked in CLAUDE.md.
- Walked the **Weekly Projected Schedule** report (forward-looking, scheduled-vs.-projected variance) as the "are we ready for next week" counterpart report.
- Confirmed with the group that **Generate Schedules is still not working** as of this point in the session — Pete's direct framing to the room: *"We're also right this moment. The generate schedules doesn't work... They're working on it right now... If you open it up tomorrow, and all you see are open shifts at the top, and you don't see any shifts filled in, just know that we're working on it."*

---

## Decisions / Changes Made Live

- No standards or system configuration changes were successfully made in this session — Pete's live attempt to correct the outlet-cook AM/PM covers mislabel and to remove a Steward secondary job from an employee both failed due to an unexplained edit-permission block ("something weird going on").
- No changes made to contract-labor placeholders, ADP coding, or action-station/bartender manual-KBI ownership — all flagged, none resolved.

## Open / Unresolved

- **Blocking:** UNIFOCUS-261575 — still producing zero filled shifts as of this session; see [2026-09-03_pm-session-a-monica-admin-working-session.md](2026-09-03_pm-session-a-monica-admin-working-session.md) for the fuller ticket review and a live Task Scheduler correction made later the same day.
- **New/related:** a system-wide edit-lock prevented Pete (with elevated permissions) from correcting the outlet-cook AM/PM covers mislabel or removing an employee's incorrect Steward secondary job — cause unknown, worth tracking as a possible symptom cluster alongside 261575 even though not confirmed to share a root cause.
- Secondary banquet-server ADP coding gap for cross-trained Allegory/Café Moran staff — newly surfaced, not yet referred for correction.
- Action-station KBI still capped at one shift regardless of the number entered — not fixed.
- Banquet bartender and action-station manual KBI entry — no owner assigned.
- Continental/buffet/plated meal-type granularity gap in the banquet forecast — known limitation, not scheduled for a fix.
- ~~Christian/Speaker 3/Speaker 4 diarization ambiguity~~ — resolved 9/3/26, probably Christian throughout.

## Next

- Afternoon: Monica Brock's working/admin session — see [2026-09-03_pm-session-a-monica-admin-working-session.md](2026-09-03_pm-session-a-monica-admin-working-session.md), which includes a live correction to the automated Task Scheduler timing for Friday's Generate Projected Hours + Generate Schedules run.
- UNIFOCUS-261575 remains the critical path item ahead of Friday's automated noon run.

---

*© Peter A. Castellano. All rights reserved.*
