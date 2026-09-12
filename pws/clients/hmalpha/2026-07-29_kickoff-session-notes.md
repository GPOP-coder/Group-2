<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# HM Alpha — Unifocus P&S Kickoff, July 29, 2026

**Date/Time:** 7/29/26, 3:00–4:30 PM (per Outlook invite screenshot)
**Format:** One of several repeated kickoff sessions Ralph Varble ran for HM Alpha's next (Wave 3) group of properties — **not a single-property meeting.** Ralph gave the same standard presentation multiple times; Devon Peters and Nicole Mendez forwarded the invite out to their properties, so attendance varied by session rather than being a fixed named list.
**Required attendees (per Outlook invite):** Ralph Varble, Devon Peters, Nicole Mendez.
**Optional attendees (Unifocus consultants, per invite):** Steve Carrell, John Grech, Taylor Walton, Akram Chahin, Pete Castellano.
**Property attendees who actually spoke (identified from the transcript, not the invite):** **Fabiana Torres** (Executive Chef, DoubleTree Sunrise — confirmed by name match against `doubletree-sunrise/contacts.md`) and an unidentified **"Bobby"** (heard once, not on any current property roster — property unconfirmed). Other properties may have had silent attendees; not knowable from the transcript alone.
**Status:** Full transcript captured, no gaps.

**Relationship to the other kickoff-notes file:** `2026-07-31_kickoff-session-notes.md` documents a *different* instance of this same repeated presentation, two days later, with an ~47-minute gap in the middle (missing the live software walkthrough/dashboard demo). That file's closing section (treadmill analogy, Nicole's remarks on consultants being temporary, the hidden Help feature) matches this session's closing almost exactly — strong confirmation both are the same standard script delivered to different Wave 3 property groups, not two versions of different content. **This file's software-walkthrough section below likely mirrors what's missing from the 7/31 file's gap**, if useful for reconstructing that meeting's content.

---

## Standard content covered (same core presentation as the 7/31 session)

- **Wave context:** this is Wave 3 (the last group) — Wave 1 (pilots) wrapping up, Wave 2 mid-implementation.
- **Team introduced:** Ralph as project manager (not his normal role — took it on via prior relationships with HM Alpha people), 5 consultants (Pete, John, Steve, Akram, Taylor), Monali (interfaces), Susanna (long-term client success manager post-implementation), Matt (HM Alpha corporate exec sponsor).
- **Process timeline:** kickoff (today) → configuration visit (3–5 days onsite, one consultant) → 1-week gap for budget testing → training visit (2 weeks after configuration; ~2.5 hrs for most managers, a full day split into two half-days for System Admins) → go-live immediately at end of training → 4 weeks of remote post-go-live support/scorecard calls → eventual transition meeting to Susanna (whole wave together, "maybe Halloween time" per Ralph's joke — informal, not a hard date).
- **Property homework/action items Ralph explicitly asked for:**
  - **Identify System Admin(s) now** — recommends 2 (one backup), not a large group.
  - A pre-config homework form will be sent (e.g., restaurant list + operating hours) with a deadline — late return risks delaying implementation.
  - When scheduling individual meetings during the config visit, **front-load Monday–Wednesday, keep Thursday/Friday lighter** for reschedule flexibility.
  - Complex departments (e.g., full F&B) get **separate meetings per area**, not one combined session.
  - Give the consultant a real working tour (kitchen, dish pit, housekeeping, laundry) — not the guest-facing tour.
  - Post-training, complete **Employee Maintenance** setup for the team (availability restrictions, hour caps, soft preferences vs. hard restrictions).
  - **New hires later will not get a Unifocus visit from Unifocus** — property needs its own internal onboarding plan, same as for Opera or a POS system.

## Software walkthrough detail (the part likely missing from the 7/31 session's gap)

- **Forecasting:** food & beverage forecasts run on **covers**, not revenue — cleaning/service time doesn't change with room/check price, illustrated with a room-rate and a steak-vs-pasta-plate example. Rooms side uses checkouts/stayovers, not ADR.
- **Environments** (e.g., a "rain" environment for weather-sensitive properties, referencing a golf-course client John worked on) can retroactively tag actuals and be applied to future forecast days — property has to tell the system when a triggering event happened, it isn't automatic.
- **Labor standards** turn forecasted volume into required shifts — as simple or complex as the operation needs (a single 3-cook kitchen line vs. a five-outlet culinary operation).
- **Scheduling vs. planning are separate steps** in Unifocus: planning creates the empty shift grid (standard × forecast), scheduling is the act of assigning people to those shifts, factoring job eligibility, availability, seniority, etc.
- **Schedule screen mechanics:** navy blocks = scheduled time; gold bar under each employee = how much of their base-hours allotment is filled (turns red-tipped if scheduled into overtime); solid black bar = employee unavailable that day (from Employee Maintenance, can be set at the whole-day or partial-day level); black-with-small-text bar = approved PTO pulled in from Paychex (**only approved time off imports — pending requests do not**); dragging shifts between employees triggers a warning (not a hard block) if it creates overtime or violates a rest-between-shifts rule.
- **Preferred vs. required unavailability:** Employee Maintenance distinguishes "can never work Saturdays" (hard) from "prefers not to work Saturdays" (soft) — the system fills every other shift first and only assigns a soft-preference employee if there's no other way to cover the shift.
- **Time & attendance sourcing:** actual hours come from Paychex (employees) and Work Records (contract labor, aggregated by job — not by individual person). Contract labor fills shifts only after real employees are placed first, via placeholder records.
- **Labor Dashboard walkthrough** (Ralph's real anonymized client example, ~1,000-room coastal hotel): four lines — Projected (forecast × standard), Scheduled (after manager edits), Actual (real worked hours), Standard (actual volume × standard, i.e. what hours *should* have been used). Demonstrated how a hotel can execute scheduling changes well (actual tracks scheduled closely) while still having an underlying **forecasting problem** (projected sitting well below standard) — the two are diagnosable separately from the same graph, drillable by division → department → job.

## Notable Q&A

- **Fabiana asked:** can weekly reports distinguish regular (employee) labor from temporary/contract labor? **Ralph confirmed yes** — not every report, but contract labor shows as its own category on some.

## Close

Same "treadmill" analogy as the 7/31 session (owning Unifocus doesn't help unless you actually use it — otherwise it becomes "a laundry rack"). Nicole reiterated that consultants are temporary (4-week post-go-live window), praised the in-software Help search, and thanked Ralph.

---

## Open items

- **"Bobby" — not urgent, passive watch item (Pete, 8/31/26):** doesn't matter who this is right now; watch for the name to resurface in future meeting transcripts and connect the dots then rather than chasing it down now.
- [ ] Confirm whether other properties beyond DoubleTree Sunrise had silent attendees on this specific 7/29 session.
- [ ] Confirm DoubleTree Sunrise designated its System Admin(s) ahead of the Sept 28 config visit, per Ralph's explicit ask here.
- [x] This file's walkthrough section is treated as reconstructing the gap in `2026-07-31_kickoff-session-notes.md` — see cross-reference note there.

## Future use — Pete has the actual slide deck (8/31/26)

Pete has the deck behind this presentation and may be tasked with delivering it himself going forward — either **as a Unifocus (UF) kickoff presenter** (a role currently held by Ralph, whose last day is 8/31/26) or **reworked into a PWS product/offering** of his own. Worth keeping this file as a content reference either way — it's a fairly complete record of the standard script (process timeline, homework asks, software walkthrough, dashboard demo, closing analogy) as Ralph actually delivered it.

---

## Related Files
- [Kickoff Session, July 31, 2026 (partial transcript, same repeated presentation)](2026-07-31_kickoff-session-notes.md)
- [Wave 2 Kickoff Summary](wave2-kickoff-summary.md)
- [DoubleTree Sunrise Contacts](doubletree-sunrise/contacts.md)
- [HM Alpha Client KB](kb.md)

---

*© Peter A. Castellano. All rights reserved.*
