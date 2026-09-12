<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran — Manager Training: Kimani Demens (Front Desk/Front Office Manager)

**Date:** September 2, 2026 (Wednesday, day 3 of training week)
**Attendee:** Kimani Demens — Front Desk Manager, recently promoted from Supervisor (no prior labor-meeting responsibility). Experienced Unifocus user from prior roles at Hilton Americas (~1.5 years) and Marriott, including Chicago Mag Mile properties.
**Format:** Solo 3-hour session, but ran short (~3 hrs actual, "I bet we can get you out of here by three") since Kimani already knew the Unifocus basics — Pete skipped fundamentals and focused on Employee Maintenance, ADP data-quality issues, filters/schedule groups, and the two labor-meeting reports.

**Relationship to UNIFOCUS-261575 (schedules-not-generating ticket):** This session is a **different, more targeted problem** than the core system bug — Generate Schedules for this week (9/6-9/12) had not yet been run as of this session (only Generate Projected Hours had). What follows are real ADP/employee-maintenance data issues found while manually testing shift assignment, not evidence the core bug is resolved. Pete explicitly still doesn't know whether Friday noon's automated run will work: "I'll be watching how all this goes, but I can't be here on Friday noon to actually be here when it happens."

---

## Real findings — ADP job-coding errors (property-side, fixable via HR/ADP, not a Unifocus bug)

Working live through Employee Maintenance for Kimani's ~9-person team surfaced several miscoded employees — explains gaps between what people actually do and what the auto-scheduler can give them:

- **Jesse Sandberg** — coded in ADP as Reception Clerk only; actually also works Night Auditor (rotating with Ryan Kerlicker/Dolores Velez). Missing the second job code entirely, so the auto-scheduler can never give him the overnight shift. **Real payroll concern raised live:** if Night Auditor carries a shift differential, Jesse may not be getting paid for work he's actually doing — neither Jesse nor Kimani were aware this might be happening. Needs an HR/ADP fix, the sooner the better.
- **Mohit** and **William** — both coded in ADP as Valet Parking; actually working Bell. Likely a leftover from years ago when the property had a company valet operation — Pete's guess, unconfirmed. Kimani to email HR with the list.
- **"Tony," formerly known as "Prince"** — ~30-year employee (present since the hotel was built), still universally called "Prince" though Kimani had never seen his real name before this session (mild, good-natured confusion mid-session about whether "Prince" was being terminated — he isn't, it's purely a naming mismatch). Coded correctly as Bell, but flagged a possible department-code mismatch (job code 610300... correct, but the "130" department number unconfirmed against ADP's actual structure).
- **Dolores Velez** — confirmed correctly coded as Night Auditor (this is the same employee shown at 0/40 hrs in Nguon Zhong's 9/1 ticket screenshot on UNIFOCUS-261575 — now identified, and her coding itself isn't the issue).
- **"Collins"** — Bell, overnight shifts Mon-Fri; availability configured live during the session (required-off Sat/Sun, available-to-work window set to catch the overnight Bell shift).

**Deadline that matters for these specific fixes:** if HR corrects the ADP job codes by end of day **Thursday (9/3)**, the overnight import will pick it up and the affected employees should be correctly eligible for their real shifts by Friday noon. Kimani was sending the correction list to HR same day.

## Other real setup work done live

- **Sub Only flag** — every secondary job was auto-marked "Sub Only" during initial system setup (blocks the auto-scheduler from ever assigning that job as a primary/regular shift). Pete unchecked this where it was wrongly blocking a legitimate primary assignment. **Not automatic for new hires** — Kimani will need to manually set this any time someone is hired with multiple jobs going forward.
- **Contract labor placeholder** — property has exactly one contract Bell employee. Monica still needs to create a placeholder record so that shift can be "spent" on something visible for labor-meeting completeness tracking (cosmetic/reporting only — doesn't touch ADP or Work Records).
- **Employee Maintenance availability set live** for Jesse, Dolores, Collins, and two other reception clerks (Isabel, one more) — each configured with required-off days and a wide "catcher's mitt" availability window rather than an exact shift match, per Pete's standard teaching approach.
- **Two labor-meeting reports demonstrated** (same as taught elsewhere this week): **Weekly Labor Summary** (backward-looking, actual vs. standard is "the only thing that matters," with a breakdown-hours option to split regular vs. contract labor hours) and **Weekly Projected Schedule** (forward-looking, projected vs. scheduled — Kimani's own numbers showed **336 projected hours vs. 40 scheduled**, i.e. ~88% under-scheduled, since this was early/practice work).

## Context notes

- **Storm confirmed as an active disruption:** Pete referenced people already being affected/absent "because of the storm" mid-session — consistent with the tropical storm context already logged for 9/1-9/2.
- Kimani is new to the labor-meeting responsibility itself (was a Supervisor before, director/manager handled labor meetings previously) — this session doubled as his first real exposure to "actual vs. standard" as the organizing framework, not just a system refresher.
- Session included substantial rapport-building (shared Chicago hotel history — Mag Mile, the Intercontinental, the Gwen's "Upstairs" bar, downtown Hilton) — consistent with the "think of your consultant as a fellow hotelier" framing from Ralph's kickoff presentation.

---

## Open items

- [ ] Confirm HR/ADP corrections landed for Jesse (Night Auditor code + possible differential pay issue), Mohit, William, and "Tony/Prince" (department code) before Thursday end of day.
- [ ] Confirm whether Jesse has actually been underpaid for Night Auditor differential — worth someone following up directly with Jesse/payroll once the code is fixed, independent of the Unifocus fix itself.
- [ ] Monica to create the contract-labor Bell placeholder record.
- [ ] This session's ADP fixes are necessary but not sufficient for a clean Friday-noon go-live — still contingent on UNIFOCUS-261575 (the core Generate Schedules bug) actually being resolved; track separately, don't conflate the two.

---

*© Peter A. Castellano. All rights reserved.*
