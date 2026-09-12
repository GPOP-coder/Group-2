<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Standard Hours Not Generating (Thu–Sun) — Call with Susanna Briggs

**Date:** July 20, 2026
**Participants:** Pete Castellano (PWS), Susanna Briggs (Unifocus CSM)
**Ticket:** [UNIFOCUS-252999](https://ufjira.atlassian.net/browse/UNIFOCUS-252999) — "RE: Standard Hours Issue" — **Priority: Critical**
**Context:** Working session to investigate the ticket below, filed by Bron Walis (Mohonk IT), escalating an internal email from James Danks.

---

## The Reported Issue

**Original internal report (James Danks → Bron Walis, Casey Dow, cc Lou Petruzzelli, Patrice Huart — 7/15/26, 11:05 AM):** "We seem to have not generated standard hours for most positions last week from Thursday through Sunday. Please take a look."

**Bron Walis's ticket description (UNIFOCUS-252999):**
- Dining room covers for the week of 7/6–7/12 were successfully uploaded to Unifocus at **8:05 AM on 7/14**.
- The Weekly Labor Summary KBIs confirm covers are in the system for **all 7 days**.
- However, **standard hour generation only created hours for Monday–Wednesday**. No standard hours generated for **Thursday–Sunday**, even though the automatic generation process should have run multiple times after the covers were uploaded.
- **This has happened almost every week for the past few months** — not a one-off.
- Bron is confident manually regenerating would fix it for this week, but is **holding off on manually regenerating** until Unifocus responds, specifically to preserve the broken state for diagnosis.
- Attachments on the ticket: `UnifocusExportFB.xlsx`, two `Weekly Labor Summary` exports (7/15, 11:01 AM and 11:04 AM), 3 images.

**Ticket timeline:**
- Filed ~7/15–7/16; acknowledged by Neeraj Singh (Client Service Specialist)
- Bron followed up: "I have not heard back from support besides an acknowledgement... Standard hours for Thurs–Sun are showing up in the reports now. I'm assuming support regenerated standard hours. This will likely happen again next week. We need to figure out the root cause."
- Susanna Briggs replied: support investigating; she and Pete connecting that afternoon (this call)
- Jira automation flagged **Critical + open >3 days**, requiring a client call unless a reason is logged
- **Linked ticket:** UNIFOCUS-246799 (Closed, Critical) — "relates to"
- **Similar/related tickets surfaced by Jira automation:** UNIFOCUS-248911, UNIFOCUS-246836
- Susanna's internal note also cross-referenced UNIFOCUS-247559 (the Founders outlet ticket, Closed) as a possible pattern match
- **Post-call (Susanna's internal note):** looped in @Jeremiah Lay and @Mrigen Pradhan for engineering eyes, confirming: "the automated generate hours task runs 4 times a day, but did that produce actual hours? If this needs to be escalated, can we please do so, and let the client know."

This comes shortly after the [7/1/26 Interface Flow call](2026-07-01_unifocus-interface-flow-call.md) added a 9:00 AM ET Generate Standard Hours run specifically to address F&B Covers timing — so this is either that fix not fully holding, or a related-but-distinct failure mode.

---

## Live Investigation (screen-share, Pete + Susanna)

- Confirmed the **Generate Standard Hours** task is scheduled to run **4x/day** (~6 AM, ~9/10 AM, ~2 PM, ~10 PM), consistent with the existing interface documentation.
- Property's screenshot showing zero Thursday–Sunday standard hours was timestamped **7/15, 3:04 PM** — i.e., captured the day after the 7/14 upload.
- Checked the actuals/covers directly in Unifocus (not the property's screenshot) — **volumes were present and correctly imported**. Spot-validated one data point directly: Main Dining Breakfast covers for 7/12 showed **379**, matching what the property's own data should show. Confirmed the import itself is working correctly.
- So the gap is specifically between **covers arriving** and **standard hours actually generating from them** — not a missing-data problem.
- Reviewed the Task Scheduler setup for Generate Standard Hours (all 4 daily instances) — nothing visibly misconfigured at the task-definition level, but this view only shows current setup, not a historical log of exactly what happened on 7/14–7/15.
- **Working theory (not fully confirmed):** most likely a **timing issue** — the property may have captured their screenshot in the window after covers were imported but before the next Generate Standard Hours pass picked them up. However, Pete and Susanna both noted this looks like the same general failure pattern seen twice before at this property:
  - [UNIFOCUS-247559](kb.md#-shifts-not-generating--founders-outlet) — Founders outlet shifts not generating; ultimately fixed by Melody Tate creating a brand-new Generate Projected Hours task (prefix `07a`) and disabling the stale original, rather than editing the existing task.
  - A separate closed ticket (found while searching Jira live on the call, not yet added to this KB) where the same "disable old task, stand up an identical new one, watch it run cleanly" fix pattern resolved a similar Mohonk automation issue.
- Given the recurrence ("almost every week for months"), both leaned toward suspecting the **task scheduler / automation itself is intermittently unreliable** rather than pure bad luck on report timing — but neither could prove it definitively from what was visible live. Susanna's post-call internal note on the ticket confirms this same conclusion: the generate-hours task runs on schedule, but it's unconfirmed whether it's actually producing hours each time.

## Outcome / Next Steps

- Confirmed as a Critical-priority ticket (UNIFOCUS-252999) requiring root-cause investigation, not just "regenerate and move on" — Bron is deliberately holding off on manually regenerating this week to preserve the broken state for Unifocus to diagnose.
- Susanna escalated to engineering (Jeremiah Lay, Mrigen Pradhan) after the call, referencing UNIFOCUS-247559 as a possible pattern match.
- Related/similar tickets to check for a shared root cause: UNIFOCUS-246799 (linked, Closed), UNIFOCUS-248911, UNIFOCUS-246836.
- Susanna's Outlook was malfunctioning during part of the call (couldn't search her own inbox) — not itself part of the technical finding, just a logistics hiccup during the investigation.

---

## Separate Topic: Pre-Visit Planning Call for August Onsite

- Property wants a planning call **this week** ahead of the confirmed **first-week-of-August** onsite F&B standards review/training visit — they've apparently been meeting internally and have an agenda of what they want covered.
- **Pete's concern:** the property may try to pack more into the visit than one week can reasonably cover — he intends to tell them directly if the agenda requires more than one trip.
- **Scheduling:** Susanna has availability Thursday after 2 PM (her Wed/most of Tue is booked); Pete's calendar is largely open. One of them to send the invite once a slot is confirmed.

---

## Related Files

- [Mohonk Client KB](kb.md)
- [Interface Reference](interfaces.md)
- [Call Notes — Unifocus Interface Flow, 7/1/26](2026-07-01_unifocus-interface-flow-call.md)
