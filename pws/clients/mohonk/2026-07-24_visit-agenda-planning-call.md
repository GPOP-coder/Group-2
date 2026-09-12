<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — August Onsite Visit Agenda Planning Call

**Date:** July 24, 2026
**Duration:** 58 minutes
**Notes source:** Bron Walis's Note Taker (AI-generated transcript/summary) — full transcript available, not yet pulled into this file
**Purpose:** This is the pre-visit planning call flagged as pending in the [7/20/26 call notes](2026-07-20_standard-hours-thu-sun-call.md#separate-topic-pre-visit-planning-call-for-august-onsite) — property walked through their agenda ahead of Pete's Aug 2–7 onsite visit.

**Participants (named in notes):** Bron Walis, Lou (Petruzzelli), Susanna Briggs, Pete Castellano. "Alex" and "Kidani"/"Kedane" also referenced (roles not specified in this summary — confirm against Mohonk staff list; this person appears to be existing Unifocus-experienced staff, Alex appears to own recreation/housekeeping standards).

**⚠️ Name discrepancy:** These call notes (Bron's Note Taker AI transcript) spell it **"Kidani"**; Susanna's own written follow-up (email, 7/24/26 6:10 PM) spells it **"Kedane."** Confirm correct spelling with Bron/Lou before it goes into any participant-facing communication.

**Note:** Pete was also looking for Susanna's independent version/notes of this same call — **received 7/24/26, 6:10 PM** (email to Bron, Pete, Lou; cc Ralph). Summary below incorporates it; see also the fuller email thread (subject "RE: pre-call") for the scheduling history leading up to the call.

---

## Susanna's Written Follow-Up (7/24/26, 6:10 PM) — What It Adds

- **Visit framing:** Sunday evening through Friday morning = **four full working days (Mon–Thu)** plus a Friday wrap-up — not a fifth full working day.
- **Admin Training reframed:** focused specifically on Mohonk's *current configuration* — standards setup and system optimization tailored to their environment — **not** a generic/basics session.
- **Labor meeting:** framed as incorporating "labor meeting best practices" into training, aligning reporting, scheduling, and decision-making processes — slightly more structured than just "review past performance."
- **Standards & Configuration focus areas — expanded list:**
  - Recreation (new sports center, retail, consolidated operations) — already known
  - Housekeeping standards validation (turndown) — already known
  - **Spa setup and KBI integration — NEW, not previously scoped into the onsite visit.** Directly relevant to the existing [Spa Interface Not Processing issue](kb.md#-spa-interface-not-processing) (🔴 open, escalated to engineering, no resolution timeline) — worth deciding whether this visit can actually move that ticket forward or is just a standards conversation independent of the interface bug.
  - Food & Beverage refinements and prioritization — already known (James's prioritization work)
  - **Expectation set:** some items (time & motion studies, deeper standards validation) may need follow-up *beyond* this visit — not everything gets resolved onsite.
- **System & Data topics — one new item:** reviewing **new hire data flow timing** — not previously mentioned anywhere in the Mohonk KB.
- **Scheduling status:** Bron/Susanna to "continue to coordinate next week to finalize scheduling and participant availability" — confirms the day-by-day schedule and who's attending are still **not locked**, consistent with what was already flagged.
- **Materials:** Susanna attached some training materials/guides to her email (not yet pulled into this repo); Pete still owns sending the pre-work videos.

### Side notes from Susanna's email (new action items)
1. **Dashboard demo:** Susanna will schedule a demo of the upcoming dashboard enhancement "next week" (week of 7/27) — asked for availability. Open: whose availability — Pete's, Mohonk's, or both — wasn't specified.
2. **UNIFOCUS-252999 update (standard hours Thu–Sun gap):** Susanna spoke with Monali — **root cause confirmed: the "revenueimport" stored procedure runs at 8:00 AM CT, triggered by the KBI files Mohonk sends, which arrive ~7:00 AM.** Import timing can't be pushed back (it's driven by when Mohonk's files arrive) — **the only fix is moving the standard-hours generation time later.** This confirms Pete's 7/22/26 hypothesis (interface/timing issue, not a Task Scheduler bug) — see [kb.md ticket section](kb.md#-standard-hours-not-generating--thursday-through-sunday-recurring). Susanna offered a call to review if needed.

---

## Onsite Week Schedule (Draft)

Built from the action items below — this is the working schedule for the Aug 2–7 visit, not yet fully confirmed:

| Day | Activity |
|---|---|
| Monday or Tuesday | **Admin training** — full day, standards development (modifying existing standards, not building new) |
| Wednesday morning | **Basic training** — 3 hours, Mohonk-specific; videos sent ahead of time to cover basics before in-person session |
| Wednesday afternoon | **Labor meeting** — past performance review + future scheduling, using reports/dashboards |
| TBD | **Advanced training for Kidani** — ~2 hours only, since Kidani is already familiar with Unifocus; focus on efficiency; James may also attend |

This is consistent with Pete's stated concern in the 7/20/26 notes that the property might try to overpack the week — the agenda above looks like it fits, but final confirmation is still pending (Bron owns scheduling the actual blocks).

---

## Topics Discussed

### Admin training & standards development
- Full day; focused on modifying existing standards, not building from scratch.
- Standards training folded into admin training rather than run separately.

### Advanced training — Kidani
- Only ~2 hours needed given existing Unifocus familiarity.
- Focus: efficiency. James may join.

### Monthly online training sessions
- Ongoing Unifocus-hosted sessions, open-mic format, client-specific Q&A.
- Covers time & attendance, planning, scheduling.
- High turnout — 50+ participants recently. (Worth flagging to Mohonk as a supplement to onsite training.)

### New Unifocus dashboard
- Expected rollout in ~3 months; currently in beta testing, feedback loop active.
- Lets users customize view with key metrics.
- Demo available on request — **Susanna to set up a demo** (see action items).

### Basic training & labor meetings
- Basic training: 3 hrs, Mohonk-specific, video pre-work + in-person session.
- Labor meetings: cover both past performance and future scheduling, using reports/dashboards to drive discussion.

### Recreation standards review
- Needs review due to the new sports center (adds a retail component) and consolidation of activities.
- Standards need to align with budget and operational needs.
- **Lou to meet with Alex to define new standards and identify gaps before meeting with Pete** — i.e., prep work happens before Pete's onsite time, not during it.

### Housekeeping standards verification
- Turndown service standards flagged as inconsistent/variable — need verification.
- Open question: do current standards reflect actual operational needs/productivity.
- **Lou to meet with Alex on this too**, same prep-before-Pete pattern as recreation standards.

### Food & beverage standards
- Improving — recent adherence to standards noted as a positive trend.
- James working on prioritization and scheduling improvements.
- Recent data issues resolved, contributing to better performance metrics.
- Continued need: coding and labor structure discipline to sustain the improvement.

### Technical issue — data import timing
- **This is the same live issue as [UNIFOCUS-252999](kb.md#-standard-hours-not-generating--thursday-through-sunday-recurring)** (standard hours not generating Thu–Sun) — support team still investigating.
- Automated tasks suspected as the delay source; manual intervention currently works around it but isn't a permanent fix.
- **Susanna to follow up** on this (see action items) — ties directly to the open Critical ticket, not a new/separate issue.

---

## Action Items

| Item | Owner |
|---|---|
| Schedule admin training for Monday or Tuesday | Bron Walis |
| Schedule basic training for Wednesday morning | Bron Walis |
| Block time for labor meeting on Wednesday afternoon | Bron Walis |
| Review recreation standards with Alex before meeting with Pete | Lou |
| Verify housekeeping standards with Alex, focusing on turndown service | Lou |
| Send guides and videos for basic training to participants | **Pete Castellano** |
| Set up demo for new Unifocus dashboard | Susanna Briggs |
| Follow up on technical issue with data import timing | Susanna Briggs |

**Pete's open action:** send basic-training guides/videos to participants ahead of the Wednesday morning session — needs a participant list from Bron/Mohonk first if not already provided.

---

## Related Files

- [Mohonk Client KB](kb.md)
- [Call Notes — Standard Hours Thu–Sun Investigation, 7/20/26](2026-07-20_standard-hours-thu-sun-call.md) (raised this call as a pending next step; also the source of the Thu–Sun data-import ticket referenced above)
- [Call Notes — Unifocus Interface Flow, 7/1/26](2026-07-01_unifocus-interface-flow-call.md)
