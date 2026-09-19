<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# WLP Unifocus Weekly Call #4 — Full Session, 9/17/26

**Context:** This is the full call Pete joined late to (see the earlier-logged short recap from John Grech's post-call email, which only captured the 7-point scorecard — this transcript has everything, including the opening he missed). Attendees: Susanna Briggs, John Grech, Peggy Taylor, Jannett Sanora, Nicole Mendez, Pete, plus one unidentified participant (Speaker 1/7 in the diarization).

**⚠️ Biggest news of the call — not in John's scorecard email at all: this may be WLP's last regularly scheduled weekly call.** John Grech floated it directly: if things are stable, hand off from the implementation team (John + Pete) to **Susanna Briggs as ongoing Customer Success Manager for HM Alpha**, with a dedicated handoff call to confirm every promised deliverable and any still-open issue before the transition. **Peggy Taylor said she's comfortable ending regular calls** as long as issues can still be raised directly with Susanna afterward. Nothing finalized — but worth knowing this property's cadence may be about to change.

---

## Forecast/Budget Concerns

- **Banquet forecast covers look implausibly high** — spot values of 1,200, 2,000, 3,000 seen in the data, directly inflating projected hours/schedules. Peggy confirmed the covers come from Delphi/CI. **Not yet validated whether these numbers are real** (a genuinely huge event week) or a data problem — open item.
- **Peggy's ask: re-run the budget test using a high-volume week**, since Unifocus's totals look too high compared to budget. Pete's explanation: **budget tests are annual, built from 12 monthly data points per KBI — they don't capture volume extremes well by design.** Standards may genuinely need fine-tuning at the extremes; a daily-flex alternative exists but HM Alpha has accepted the current annual-test approach.
- **Productivity Goals** can be entered per job in Labor Structure to get an interim "peek" at budget alignment via the Labor Productivity Report — not a substitute for the formal test, just a gauge. Values entered as **portions of an hour** (30 min = 0.5). Live examples: Room Attendant goal ~35 minutes vs. the property's actual budgeted number; House Attendant ~0.12 based on rooms.
- **Real inconsistency found:** Room Attendant showed as *exceeding* budgeted productivity in one view, but a three-week analysis showed the department running **~600 hours over standard**. That's a real contradiction worth taking seriously. **This needs a formal review and sign-off before anyone trusts either number.**
- **Correction, per Pete (9/17/26): the "standard test" (BLSBD — budget vs. labor standards alignment check) is not a database object or something "loaded into" Unifocus at all — it's a manual process done entirely outside the software.** The actual steps: run the BLSBD report, dump its output into a spreadsheet, and that spreadsheet *is* the deliverable. There's no in-system artifact to load or check — my earlier framing (echoing loose language from the call itself) was wrong on this point. **Pete's stated intent: PWS will work on building a better way to do this** — not an immediate action item, a future process-improvement goal worth remembering when the PWS methodology/tooling roadmap comes up again.

## Employee Schedule Analysis / Actuals

- Reviewed a report showing scheduled hours, punches, breaks, and total hours per employee. **Confirmed working as designed** — blanks/zeros happen specifically when hours aren't imported or only exist as Work Records not tied to a person/job/day, not because the report itself is broken.
- **Real finding: Laundry Attendant actual hours are missing from Unifocus almost entirely** — only 1 of roughly 15 contract laundry employees shows any hours at all. **No reconcile or hours-transfer error is triggered** — job code 9455 is correct on its face, and a real description mismatch would normally throw an hours-transfer error, which isn't happening here. **Working theory: an interface issue silently dropping the data before it ever reaches Unifocus** — genuinely different from a config/Sub-Only problem, since there's no error trail at all. Needs Manali's team to investigate on the interface side.
  - *(Worth noting for pattern-tracking: this is a second HMAlpha property this month with missing Laundry hours, after Moran's universal Sub-Only defect — but the mechanism here looks different, since Moran's version threw no reconcile error either but was traceable to a config flag, while this one shows no error trail and might be a true interface-level drop. Don't assume the same root cause without checking.)*

## Schedules Changing After Publishing to Paychex — Real Bug, Not Yet Diagnosed

**Serious reported symptom:** a schedule published from Unifocus (e.g., 2:00 PM–10:00 PM) shows up in Paychex as something completely different (e.g., 10:00 PM–6:00 AM). Publishing only queues the schedule for the next of three daily syncs, so some lag is expected — **but this goes beyond sync delay, something is actually transforming the shift.** Concrete example: **Sean Simpson, Security.** Departments asked to gather more examples so this can actually be traced.

## Job Code / Paychex Sync Issues

- **Banquet Captain Rocío Ruiz reverted to "Server" as her home department** — root cause: her Paychex job code didn't match Unifocus due to punctuation differences (dots/dashes/spacing). **Fixed live** by adding the matching code to Unifocus; expected to clear on the next cycle. **Ask: verify Kate Wheat's job code setup for the same issue** — flagged as likely not isolated to Rocío.
- **Where does the mismatch actually originate?** Investigated live: Paychex's **Employment tab "Position" field is clean**, but the **"Job Costing and Labor Distribution" field carries punctuation** (e.g., "number–dash–Captain – Banquet 1"). Working hypothesis: the Unifocus integration is pulling from the messier Job Costing/Labor Distribution field rather than the clean Position field. **Not yet confirmed** — needs the exact source field and Paychex edit-permission model confirmed before anyone tries to standardize formatting.
- **Governance gap, real pattern across properties (echoes Mohonk's "Aisha" manual-transfer issue and the general naming-consistency theme from the 9/16 monthly call):** job descriptions/codes are getting altered in Paychex (punctuation drift) by people with edit rights, breaking sync downstream. **Nicole to investigate who actually has rights to change job descriptions in Paychex** and trace who's making the changes. Val/Manali's team already involved in a related secondary-jobs correction ticket; Steve previously did a naming-standardization cleanup pass.

## Auto-Scheduling / Employee Maintenance

- Managers are asking for blank schedules because deleting auto-generated ones is tedious — floated temporarily disabling auto-scheduling as a workaround.
- **Real root cause instead: many employees are missing basic Employee Maintenance settings (desired hours/day)**, which makes the auto-generated schedule look essentially random rather than genuinely broken.
- **Conclusion: don't disable auto-scheduling** — collect concrete problem examples first, and get Employee Maintenance actually completed for the affected employees before revisiting.

## Tooling note (internal, not client-facing)

Susanna mentioned fighting to keep using a note-taker called **"Read AI,"** which now appears to be broadly authorized at Unifocus. Pete and John both use Plaud/Claude instead; Susanna said she'd try Claude.

## Scheduling the 5th Call

Matches what was already known from John's scorecard email: **Taylor Walton will lead call #5 next week.** New detail from the actual discussion: **John has a hard stop at 1:00 PM** (moving straight into a Valencia call), Charles can't make the usual slot and prefers 11:00, and the group generally leaned toward **11:00 local** over the current 10:00 slot. Taylor to coordinate the actual time with Peggy.

---

## Open Items

- [ ] Validate the 1,200/2,000/3,000 banquet forecast covers against Delphi/CI — real event week or data problem.
- [ ] Confirm Steve has loaded the standard test into the database; formally review and sign off labor standards given the 600-hour Room Attendant variance.
- [ ] Escalate the missing Laundry Attendant hours to Manali's interface team — no error trail, likely a silent interface-level drop.
- [ ] Collect more examples of schedules changing between Unifocus and Paychex (Sean Simpson is the first) — needs real investigation, not just noted.
- [ ] Verify Kate Wheat's job code setup mirrors the Rocío Ruiz fix.
- [ ] Nicole to confirm which Paychex field (Position vs. Job Costing/Labor Distribution) actually feeds the Unifocus integration, and who has edit rights to change job codes/descriptions in Paychex.
- [ ] Confirm status of Manali's secondary-jobs correction ticket.
- [ ] Department managers to complete Employee Maintenance (availability, desired hours/day) before the next scheduling cycle — prerequisite before revisiting the auto-schedule-disable idea.
- [ ] Confirm call #5 time with Taylor/Peggy — leaning 11:00 local, not the current 10:00 slot.
- [ ] **Watch for the handoff-to-Susanna conversation to actually materialize** — if WLP's regular calls are ending, make sure every open item above has a clear owner before that happens, not just Pete/John.

---

## Related Files

- [Westin La Paloma Client KB](kb.md)

---

*© Peter A. Castellano. All rights reserved.*
