<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Unifocus — IC New Orleans 4-Week Go-Live Support: Week 1 Meeting
**Date:** July 14, 2026
**Context:** First weekly go-live support check-in following Pete/Nicole's onsite property-level admin training. Led by Taylor Walton (Unifocus), reviewing the team's first full week scheduling in Unifocus.

---

## Participants
- Taylor Walton (Unifocus — leading go-live support)
- Chantelle Twillmann (InterContinental — DOF)
- Matthew Rogers / Jonathan Emerson (InterContinental — appear to be on the same line/station; some speaker attribution unclear in the transcript)
- Nicole Mendez (HM Alpha)
- Tiffany (F&B, InterContinental)
- Brian (InterContinental — banquets, joined partway through)

---

## Summary
The meeting reviewed Unifocus go-live support processes, the weekly automation cadence, schedule generation timelines, reporting, and open questions about banquet labor standards and schedule variances. Participants validated the forecast import and schedule generation behavior and inspected draft schedules and labor analytics for the coming week.

---

## Weekly Automation Timeline (confirmed live against the database)

| Time (Friday unless noted) | Event |
|---|---|
| 6:00 AM | Planning period advances automatically |
| 11:00 AM | Rooms forecast (from ProfitSword) and banquet forecast import/are available |
| 11:00 AM – 2:00 PM | Revenue-center forecasts are editable (auto-generated at 11 AM, then refined) |
| 4:00 PM | All forecasts must be finalized |
| 4:30 PM | Projected hours generate |
| 4:45 PM | Draft schedules generate |
| Fri 5:00 PM – Tue 2:00 PM | Scheduling managers finalize/edit schedules |
| Tue 2:00 PM | Weekly labor meeting |
| Tue EOD | Property publishes final schedules |

**Key practice emphasized:** every pre-work task (input KBIs, rooms forecast, revenue center forecast) should be explicitly **marked complete** after review — even if no edits were needed — so the rest of the team can see it's been checked, not just imported. Banquet forecast entry is currently **manual** (KBI automation for banquets is still being finalized with HMAlpha's interfaces team); rooms forecast import from ProfitSword is already automated but should still be reviewed/marked complete, not blindly trusted.

---

## Schedule Review & Variance (Week 1 observations)

- **Rooms division:** draft schedule generated (297 shifts / 2,333 projected hours), but not yet edited by managers at time of call — attributed to the team still working through adding contract labor positions, which rooms carries more of than other divisions. Not flagged as a problem, just early-week status.
- **F&B:** already edited by managers — 1,038 projected hours vs. ~1,173 scheduled (running over). Taylor's guidance: use this kind of variance as a labor-meeting discussion prompt (anticipating pickup? training happening? something day-specific?), not an automatic red flag.
- **Tools demonstrated for spotting variance:**
  - Scheduling screen → **"Show Daily Summary"** at the bottom — projected vs. scheduled hours/shifts, filterable by job
  - **Analytics → Labor Dashboard** — visual projected (pink) vs. scheduled (blue) vs., for completed weeks, actual (green) hours; drills down by division/job
  - Three reports recommended for weekly labor meetings — **favorite/star these:**
    1. **Weekly Labor Summary** — breaks out by day
    2. **Labor Effectiveness** — dashboard's numbers without the graphics; shows projected/scheduled/standard/worked hours, variance, and overtime by department
    3. **Employee Schedule Analysis** — most useful at the scheduling-manager level; surfaces individual-employee variances (early clock-in, late clock-out) vs. department-wide or SOP-training issues
- **Guidance to managers:** edit the auto-generated shift in/out times to match actual service windows, add/remove shifts as needed — don't feel locked into what the system generates. Run schedules for 1–2 weeks, then do a look-back comparing planned vs. actual covers/hours to calibrate.

---

## Banquet Staffing Issue — Labor Standards Undercounting Setup/Cleanup

**Problem raised by Chantelle/the property:** banquet labor standards aren't generating enough hours for house persons and servers.

**How the standards actually work (as explained by Taylor):**
- **House person standard:** minutes-per-cover, driven by the "Banquet Total Breakfast" calculated KBI (sums all breakfast banquet covers). Current setting: **3 minutes per cover**. Property had misread this as "3 hours flat for any event" — it's actually 3 min × cover count (e.g., a 10-person breakfast = 30 minutes of house-person time), which is far too little to include real setup/breakdown.
- **Server standard:** units-per-shift (covers per 4-hour shift), varies by meal style — e.g., Continental = 1 shift per 40 covers, Plated = 1 shift per 20 covers, Buffet = 1 shift per 25 covers.

**Concrete mismatches identified live:**
- Breakfast: standard generated a 6:00–9:00 AM shift, but actual service window was **7:45–9:00 AM** — the generated shift didn't account for the 2+ hours of setup beforehand or cleanup after.
- Coffee break: generated only a 4-hour shift (6:00–10:00 AM), but the actual coffee break ran **7:45 AM–12:00 PM** — the generated shift didn't even cover the full event window.

**Jonathan/Matthew's real-world benchmark (InterContinental's own experience):** a full breakfast buffet realistically needs **~5–5.5 hours total** — call time 2–3 hours before service for full room setup, ~90 minutes of actual breakfast service, then 30–60 minutes of cleanup/clearing. For servers: roughly 1 per 30 covers as a rule of thumb.

**Resolution/next steps:**
- This is a **labor standards configuration issue**, not a scheduling-manager error — Taylor confirmed managers should edit shift times/add shifts to match real service needs in the meantime (full ability to do this, no need to feel locked into system-generated times).
- Changing the underlying labor standard itself requires an approval process, similar to a budget change — not something a property does unilaterally.
- **Taylor is taking this to Devin (HMAlpha) to review banquet covers and standards** — likely the same Devin Peters who owned config review on the 6/29/26 standards call (`2026-06-29_standards-review-transcript.md`).
- General principle reinforced: shift times/counts will balance out over a full week even with some daily mismatch — this is consistent with Pete's own "Actual vs. Standard, evaluated weekly not daily" banquet philosophy (see `pws/clients/hmalpha/corporate-admin-training/agenda-notes.md`).

---

## Approvals & Pop-Up Event Handling

- **Daily employee punch approvals confirmed as current practice** — HR approves shifts in Paychex daily; department heads separately review the edits. Unifocus only imports hours that are approved in Paychex, so this daily cadence matters for data accuracy — Taylor flagged that properties with looser (e.g., biweekly) approval habits see much less reliable week-to-week numbers.
- **Pop-up event question (an evening event added to the schedule after that week's forecast/planning period had already locked):** team scheduled for it correctly once they learned about it, even though it wasn't in the original forecast. **No retrospective adjustment needed** — the system will naturally reflect the increase after the fact: once covers are actualized post-event, projected hours for that week increase accordingly (a "backwards look" comparing planned vs. actual covers).

---

## Open Items
- [ ] Taylor to review banquet covers and standards with Devin (HMAlpha) — house person minutes-per-cover and server units-per-shift both need adjustment to account for real setup/cleanup time
- [ ] Rooms division to finish editing/adding contract labor shifts for the current planning week
- [ ] Team to run schedules for 1–2 weeks, then perform a look-back comparing planned vs. actual covers and hours
- [ ] Distribute the finalized weekly labor timeline document to the full team (was sent to Chantelle but not yet distributed as of this call)
