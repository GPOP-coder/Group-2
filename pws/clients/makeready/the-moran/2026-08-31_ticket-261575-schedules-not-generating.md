<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# The Moran — UNIFOCUS-261575: Schedules Not Generating

**Status:** 🔴 **Open, urgent** — filed 8/31/26, 6:40 PM CT. Training begins Tuesday 9/1/26, 9:00 AM Central. Auto-confirmation received from Unifocus Client Service at 6:42 PM CT confirming the ticket number.

**Why urgent:** Pete is onsite at The Moran; training starts in the morning and Generate Schedules is non-functional.

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

## Open items

- [ ] Await Client Service response/fix — needed before or during Tuesday 9 AM training
- [ ] If unresolved by morning, consider direct follow-up call to Steve Carrell or Alain Derderian given onsite urgency
- [ ] Determine root cause once resolved (Work Class 12 origin still unexplained even though bulk edit didn't fix the issue)

---

*© Peter A. Castellano. All rights reserved.*
