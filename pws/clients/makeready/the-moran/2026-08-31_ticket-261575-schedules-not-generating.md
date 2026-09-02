<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran — UNIFOCUS-261575: Schedules Not Generating

**Status:** 🔴🔴 **Still open, now escalated to VP level** — filed 8/31/26, 6:40 PM CT, unresolved as of 9/2/26. **Real consequence already happened, not just a risk:** Tuesday's (9/1) training sessions had to teach managers how to edit a draft schedule with no actual draft schedule to work from. Pete on property through Thursday (9/3) only, departs early Friday (9/4) — **the automated Generate Projected Hours + Generate Schedules run fires Friday at noon Central, after Pete has already left.** 9/2/26: Pete posted a new internal ticket note and emailed the ticket directly to Shilpa Bhando (VP of Operations) to escalate above the existing support thread.

**Why urgent:** Pete is onsite at The Moran; Generate Schedules has now failed through a full day of training, not just before it started.

---

## Issue

- **Database:** Makeready
- **Property:** The Moran
- **Symptom:** Generate Schedules produces no schedules, fills no shifts. Tried multiple times.
- **Generate Projected Hours works fine** — produces shifts as expected. Issue is isolated to Generate Schedules.
- **Possible red herring investigated:** Employee Maintenance showed every employee with a Work Class of 12 (origin unknown). Bulk-edited everyone to Fulltime — same result, so likely not the root cause.
- **Error observed:** Immediately after generating schedules, the schedule editor shows: *"Info 30 job(s) have ben marked Closed for Editing by scarrellmr."* Steve Carrell generated schedules; Pete was in Schedule Editor when the message appeared on his screen. However, Manage Schedules shows the schedule state as **open for editing** — inconsistent with the "Closed for Editing" message.
- **Diagnostic session (same evening, with Monica Brock):** full walkthrough in [2026-08-31_monica-brock-forecasting-scheduling-training-session.md](2026-08-31_monica-brock-forecasting-scheduling-training-session.md), §5. Two tests run live: (1) Housekeeping-only — generated shifts but filled none, traced to Room Attendant's Daylight Saving Time/Standard Time seasonal assignment split having no employees assigned to either; (2) property-wide, all divisions/jobs, schedule cleared and regenerated — **zero shifts generated at all**, not just unfilled. The assignment gap explains test (1) but not test (2) — the property-wide zero-shift result is what triggered this ticket and remains unexplained.

## Correspondence

- **6:40 PM CT, 8/31/26** — Pete emailed support@unifocus.com, cc Steve Carrell (SCarrell@unifocus.com) and Alain Derderian (aderderian@unifocus.com), subject "Schedules Not Generating - Consultant on property."
- **6:42 PM CT, 8/31/26** — Auto-confirmation received from Unifocus Client Service: ticket **UNIFOCUS-261575** opened, queued by priority/order received.
- **10:33 PM CT, 8/31/26** — Nguon Zhong (Unifocus Client Service) commented: schedules showed as generated, but when re-generated, **Clear Schedule was set to true**. Asked Pete to re-run Generate Projected Hours then Generate Schedules again.
- **11:35 PM CT, 8/31/26** — Pete replied, pushing back on the Clear Schedules theory with both direct evidence and logic:
  - Confirms Clear Schedules was **not** selected on any run today — this was a live admin-training session, and Clear Schedules was specifically discussed with the trainee as they walked through the steps.
  - Re-ran both Generate Projected Hours and Generate Schedules again with Clear Schedules explicitly unchecked — **same zero-shift result.**
  - **Logical point:** even if Clear Schedules *had* been triggered, worst case it deletes an existing schedule and replaces it with a new one — it does not produce a completely blank schedule. The symptom doesn't match what Clear Schedules actually does.
  - Redirects the diagnosis: if support is seeing a Clear Schedules flag as true, **that flag is being set from somewhere else** in the system — a real clue pointing away from user error and toward a system-side cause, not a restatement of the same theory.
- **Internal note, 9/1/26 evening (Pete):** ticket still unresolved through the entire training day. Both Tuesday sessions had to teach managers to edit a draft schedule that didn't exist — described by Pete as "embarrassing." Two more classes Wednesday, two more Thursday, **first real draft schedule needed for go-live Friday 9/4.** Asked directly: can we get an update on this ticket? **This note itself functions as the escalation** — internal notes on the ticket auto-notify Steve Carrell, Alain Derderian, and everyone on the support team who's touched it, so no separate follow-up message was needed to reach them.
- **Internal ticket update from Nguon Zhong, same evening — Nguon replicated the error.** Posted raw system task logs for the two generation runs against week 9/6-9/12, plus a screenshot of the resulting schedule grid for that week: every day shows exactly "1 Open Shift," and example employee Velez, Dolores M (FDX000072) sits at 0/40 hrs the entire week — the same zero-fill symptom Pete saw, now independently reproduced by Unifocus support on the actual go-live target week. **This is the important part: it confirms the bug is real and system-side, not a training/setup mistake at the property** — direct validation of Pete's 11:35 PM pushback the night before.
  - **Task 1 — Generate Projected Hours** (host `taps-processing-79f997c48b-rpmpb`, Planner Mode: PROJECTED, "gen from master"): Standard Set ID 1040, Calculate KBIs: true, Clear Schedules: false.
  - **Task 2 — Generate Schedules** (host `taps-processing-79f997c48b-hsww5`, Run From: Schedule Editor): Standard Set ID 0, Clear Schedules: false, Rotate Days Off: false.
  - **Correction (Pete, 9/1/26):** Generate Schedules isn't dependent on a Standard Set at all by design — it assigns employees to shifts that Generate Projected Hours already created, it doesn't recalculate against a standard itself. So Standard Set ID 0 on Task 2 is expected/normal, not a clue. The real root cause is still open — Nguon's replication confirms the bug exists but doesn't yet explain it.
- **Corroborating evidence across all four of Tuesday's (9/1) training sessions:** the symptom was visible/referenced live in every session held that day, confirming the bug was continuously unresolved throughout the full training day, not just at the start:
  - AM(a) ([2026-09-01_am-session-a-weekly-timeline-scheduling-training.md](2026-09-01_am-session-a-weekly-timeline-scheduling-training.md), §11): Pete checked email mid-class (~55 min in) and told the room directly, *"This week and this week only, the schedules are not generating, and we don't know why."* Taught the Scheduler using manually-created test shifts instead of a live draft.
  - AM(b) ([2026-09-01_am-session-b-unifocus-wfm-overview.md](2026-09-01_am-session-b-unifocus-wfm-overview.md)): ticket not named explicitly, but Pete described the property as "not scheduled in the system yet" and had managers manually key paper schedules into Unifocus as practice — indirectly consistent with the outage.
  - PM(a) ([2026-09-01_pm-session-a-labor-management-training.md](2026-09-01_pm-session-a-labor-management-training.md), §14): Pete read live demo numbers off the sample schedule showing shifts generated but unfilled (e.g., "it made sixteen shifts. I filled none of them"), and said directly, *"Right now, today, it's not working. We're still in the opening week of turning all the dials. So maybe by Friday, this will all work."*
  - PM(b) ([2026-09-01_pm-session-b-implementation-scheduling-setup.md](2026-09-01_pm-session-b-implementation-scheduling-setup.md)): ticket not named. Pete's closing line, *"We're go time. We're now live. It's working,"* read in isolation could suggest a fix — **but this is resolved by timeline, not by content:** this PM(b) session ran mid-afternoon, while Pete's internal escalation note and Nguon Zhong's independent bug replication (both logged above) are timestamped that same evening and explicitly state the ticket was *still* unresolved and still actively disrupting training. So "we're now live, it's working" was generic go-live encouragement about the training rollout itself, not a statement that Generate Schedules had started working — confirmed false as a resolution signal by the later same-day evidence.

## Open items

- [ ] Await response — Nguon has now replicated the bug (real progress), but root cause is still unidentified; the internal note has already reached Steve, Alain, and the full support thread; escalation window is closing fast against the Friday go-live deadline.
- [ ] If no movement after this note, a direct call (not another written escalation) may be the next step given onsite urgency is now compounding daily.
- [ ] Determine root cause once resolved (Work Class 12 origin still unexplained even though bulk edit didn't fix the issue; Clear Schedules flag origin now also unexplained per Pete's pushback)
- [ ] **⚠️ Real coverage gap, flagged 9/1/26 evening, sharpened 9/2/26:** Pete's return flight (SW BUGYTC, HOU-OMA) departs 8:15 AM Friday 9/4, arriving OMA 10:25 AM — the same day the first real go-live schedule needs to generate. **Correction/clarification (9/2/26): Friday noon Central is when the *automated* Generate Projected Hours + Generate Schedules task runs** — not a manual test Pete can time or trigger himself. That makes the gap worse, not just earlier: the fix has to land before that automated run fires, because nobody onsite will be able to react live if it fails again — Pete will already be back in Omaha. Confirming the fix works Thursday (while Pete is still onsite, per Thursday's schedule below) is the only way to actually validate it before go-live, since Friday's automated run is not something Pete controls or can delay.

## Internal Note Added 9/2/26 — Escalated to Shilpa Bhando

Pete posted an internal ticket note and separately emailed the ticket directly to **Shilpa Bhando** (VP of Operations — Ralph's former role, and Pete's invoice recipient; see `pws/clients/hmalpha/kb.md` contact table) — a step above the Steve Carrell / Alain Derderian support thread this ticket had been running through. Note content: Pete is on property one more day (Thursday 9/3 — scheduling managers in session all morning, system administrator in the afternoon), then departs early Friday morning. Asked directly for a status update given the automated Friday-noon-Central generation run is the actual go-live test, and Pete won't be onsite for it.

---

*© Peter A. Castellano. All rights reserved.*
