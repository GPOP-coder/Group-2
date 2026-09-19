<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Rooms Labor Meeting, with Tom Smiley (CEO) Sitting In

**Date:** August 5, 2026
**Location:** Mohonk Mountain House — Office 16
**Context:** Part of Pete's onsite visit week (Aug 2–7, 2026). A live weekly Rooms labor meeting, notable because **Tom Smiley — Mohonk's CEO and a 5th-generation owner — sat in for the first time**, then stayed on after Alex left to talk one-on-one with Pete and Lou. **Recording missed many minutes at the start** — the opening dollars-vs-hours framing below may be incomplete.

## Participants
- **Pete Castellano** (PWS)
- **Lou Petruzzelli** (budget authority)
- **Alex Sherwood** (Rooms Division) — left partway through; the CEO conversation happened after he stepped out
- **Tom Smiley** — **Mohonk CEO, 5th-generation owner, trained Industrial Engineer.** New contact, high value — see kb.md contacts.
- **Invited, not attending:** Bron Walis, **Eric Gullickson** — Tom's cousin, co-operated the property with Tom for years; new contact, referenced in Tom's origin story below.

**Why this matters:** Tom's personal, longstanding conviction about the labor-standards methodology explains a pattern already visible elsewhere in this KB — Lou, and especially Bron, visibly frustrated by Unifocus's many technical/interface problems, yet consistently staying committed to making it work. That commitment is coming from ownership, not just Lou's own preference or vendor pressure.

---

## 1. Dollars vs. Hours — Core Framing (partial, recording started mid-explanation)
- Labor-meeting comparisons should stay on **hours** (actual vs. standard), not dollars — revenue is muddied by comps, discounts, and pricing changes, none of which change how much labor a task actually takes. "The work doesn't change based on what you're charging."
- Dollars still matter fully outside this room — budgets, schedules, and P&Ls can and should carry dollar figures — but the *diagnostic* comparison in the meeting itself should be hours-based, because getting hours right is what makes the dollars fall into place, not the reverse.

## 2. Op Codes — Two Purposes
- Op codes can be built for two different reasons: **operational groupings** (who a manager actually meets with / wants to total together) and **budget-matching groupings** (matching however the property's budget is structured) — these don't have to be the same op code.

## 3. Employee Schedule Analysis Report — New Drill-Down Tool Demoed
- Introduced live in response to Alex asking how granular reporting can get — down to specific job titles, even individual employees.
- **Employee Schedule Analysis Report**: shows Scheduled vs. Actual side-by-side at the individual level (not just job/department rollups), including break timing, with anomalies flagged in bold. Demoed on Housekeeping Administration → Room Inspectors.
- **Live example ("Anton"):** already scheduled at 44 hours (4 over standard) before actuals were even factored in, then clocked additional hours pushing the real total higher — a concrete, named example of exactly the kind of drill-down this report is for. Alex called it "a really good drill down report" and found it genuinely revealing — first time he'd seen this level of detail.
- **Known limitation, explicitly flagged as by-design, not a bug:** if ADP doesn't cleanly recognize an employee/job combination (e.g., a job transfer not yet reflected, or another HR/ADP interaction issue), the hours still land in the correct job-level bucket on other reports — but **won't attribute to that specific employee on this report**, since it doesn't know where to place them. So this report can look incomplete for a given person even when the property-wide numbers are accurate elsewhere.
- Pete's aside: run this report for the whole property sometime and just sit with what it shows — implied there's a lot to find once you look this closely.
- **Directly connects to item 7 below** (a live front-desk case where this exact limitation surfaced).

## 4. Weekly Projected Schedule Report & the Timeline Compression Problem
- This is the **forward-looking** counterpart to the backward-looking Weekly Labor Summary — Scheduled vs. Projected only, meant to be reviewed by managers *before* they publish, as a "look at it through someone else's eyes before you let it go" check. Alex confirmed he doesn't routinely review his managers' schedules this way before posting.
- **Core finding — the current cycle timing doesn't support this review as intended:**
  - Rooms/Banquets forecast entry happens first, feeding a revenue-center forecast (built via regression) that James (F&B) edits — currently due **Tuesday 3:00 PM**.
  - Generate Projected Hours currently doesn't run until **overnight Monday into Tuesday morning** — leaving managers very little runway to actually build a schedule before a Wednesday review meeting.
  - Result: when Alex pulled the forward Weekly Projected Schedule report mid-week for this meeting, it showed things like **39% under-schedule for Rooms** — not a real staffing problem, just that schedules genuinely weren't built yet when the report was pulled (the report's percentages are inherently actual-vs-standard-based, so an unscheduled future week reads as zeroed/wildly off).
- **Fix direction discussed, not finalized:** push the whole forecast → Generate Projected Hours → schedule-build pipeline earlier (targeting Monday instead of Tuesday) — Pete's stated preference — **or**, if that's not feasible, move the labor meeting itself from Wednesday to Thursday. Some properties start this cycle on Friday, but that forces F&B/others to do forecast work over a weekend, which Pete generally avoids (though some properties are fine with it); Monday is his more typical recommendation.
- **Housekeeping-specific detail:** Alex's schedules are mostly drafted (not published) by Thursday for the following Monday-start week, occasionally slipping to Friday. The Friday-publish habit persists partly because Excel-based departments already publish that far ahead as routine, and **the Unifocus mobile app specifically doesn't show a schedule to employees until it's published** — managers deliberately hold publishing until they're done editing, to avoid employees "holding them to" an in-progress draft.
- **Explicit conclusion:** the Friday-publish habit isn't currently a real complaint/pushback problem (no one's clamoring for earlier notice) — but it structurally conflicts with wanting a genuine Wednesday review-and-react meeting. Either the pipeline compresses earlier, or the meeting moves later — not both left as-is.
- **Ties directly to an existing open item** in this KB: the [**"New timeline" build-out**](kb.md#future-to-do--for-status-report-flagged-83926) — Tom asked to see the current weekly labor data-flow timeline live during this conversation and it couldn't be pulled up cleanly ("I dug through our system and found a JPEG of it. We probably want to rebuild this.") — direct executive-level confirmation that this rebuild is worth prioritizing, not just a nice-to-have.

## 5. Manager Attendance at Labor Meetings — Rotation Model Agreed
- Idea discussed: bring department managers themselves into the labor meeting (or hold a pre-meeting with them), rather than Alex being the sole Rooms representative every week.
- Alex's concern: doesn't want to create "more meetings, more work," and doesn't want it to feel like a weekly high-stakes spotlight for whichever manager attends.
- **Agreed approach: rotate which manager(s) attend**, with some intentional unpredictability, rather than requiring everyone every time — keeps accountability present without making it a dreaded fixed slot, and creates room to specifically showcase a manager who nailed it, not just flag problems. Alex has ~4 direct managers; open to bringing pairs rather than all 4 at once.
- **Explicit, repeated framing (Pete and Lou both):** this is a **coaching/visibility tool, not a "weapon."** Pete: "This should never be a weapon. It's a learning tool... It's about having the right tools to manage well." Lou confirmed this was an explicit condition agreed when they decided to move forward with the whole labor-standards program in the first place.

## 6. Explainable Variance & Cultural Change Management
- **Explicit non-punitive commitment reiterated:** nobody loses their job over what the standards reveal. If overstaffing shows up at certain times, the response is to work toward the standard gradually through **attrition**, not abrupt cuts.
- **Legitimate reason to intentionally run over standard, acknowledged directly:** remote/seasonal resorts with hard-to-hire labor markets (J-1 visa dependency, etc.) may deliberately retain full-time staff past their strict volume-driven need during slower stretches, specifically to avoid re-recruiting next season — framed as a legitimate "employer of choice" strategy, **as long as it's a conscious, quantified decision**, not accidental drift.
- **New idea, not yet built: a dedicated "Housekeeping Projects" job code.** During slower periods, staff whose hours exceed pure volume-driven need would be formally scheduled into quantifiable project work instead of being informally absorbed inside the regular room-attendant schedule. Two stated benefits: (a) makes the "extra" hours visible and explainable at the labor meeting rather than looking like unexplained overage, and (b) may ease cultural buy-in for Alex's team — explicitly described as "very culturally ingrained" and flagged as **"a very easy one to unionize"** — by giving them a legitimate separate landing spot for hours rather than feeling pressured into unfamiliar tasks folded into their normal job.
- **Core habit being built — quantify, don't just explain:** if over standard, put a real number to why (e.g., "over by 200 hours because of training" — then actually verify that; if training only accounts for 20 of the 200, dig into where the rest went, such as new hires still ramping up). Framed explicitly as building the habit of knowing your own numbers, not a punitive audit.

## 7. Live Issue Found: Front Desk Employee's Hours Not Reconciling
- Alex raised a real case: one front-desk employee works multiple functions (regular Front Desk, overnight switchboard, and a separate daytime switchboard function) and Alex hasn't been able to cleanly reconcile her hours across those roles in reporting.
- **Diagnosed live as an ADP coding/punch-attribution issue:** time clocks display **job codes, not job or employee names**, and **employees cannot self-select which job they're punching into** — only a manager can reassign hours to the correct job code after the fact. If that reassignment isn't done, hours still land in the right job-level bucket on aggregate reports, but won't attribute correctly to the individual — **the same limitation flagged in item 3 above**, now surfaced as a live, real example rather than a hypothetical.
- **Not resolved live** — Alex's next step is to go investigate this specific employee's coding/punch history directly, now understanding the actual mechanism.

---

## 8. Tom Smiley — CEO Background, Origin Story, and Endorsement
*(This section covers the conversation after Alex left the room — just Tom, Lou, and Pete.)*

- **Confirmed:** Tom Smiley is Mohonk's **CEO and a 5th-generation owner**, trained as an **Industrial Engineer**, and has been a personal, longstanding advocate for the labor-standards methodology generally (not just Unifocus specifically).
- **Origin story of Mohonk's adoption, told directly by Tom:** significant internal cultural resistance when this was first introduced — **the property's HR Director at the time pushed back hard**, fearing staff would feel surveilled/squeezed and potentially quit or need to be laid off ("pitchforks and torches"). Tom and his cousin **Eric Gullickson** (co-operators of the property) made the explicit call to proceed anyway, with a repeated, direct commitment: **"Nobody's losing their job... their experience shouldn't have changed much at all. If anything, they got more information."**
- **Timeline patience explicitly set from the top:** Tom framed the transition as something that could reasonably take **2–3 years of gradual attrition** to mature into best-practice staffing levels — affordable specifically because the property was already profitable running the way it had been, so there was no urgency to force it faster.
- **Tom's core philosophical framing, echoed and built on by Pete:** this is fundamentally a **leadership/management discipline issue, not a software feature.** *"That's more about who you are as a leadership or management team and less about we bought software that tells us how to operate. The software is going to help us operate, but we still need to lead and manage properly."*
- **Direct praise for James (Dining Room):** both Tom and Pete noted James's visible growth in engagement over the course of this project — initially resistant and insistent on doing things his own way, but has now genuinely bought into the value and is actively looking for more ways to use the system. Pete's read: James needed to be heard and have his own operational instincts validated first — Pete deliberately let him talk it out, then showed him the resulting numbers, which won him over. Both expect James may cycle through another round of pushback/negotiation at some point, and consider that normal, not a red flag.
- **Tom flagged plans to personally sit in on tomorrow's Housekeeping Basic Training session** — wants firsthand visibility. Gave Pete a heads-up on the room: some attendees have little-to-no prior exposure (an easier group to teach), while one attendee is described as **"less engaged right now because she sees a proverbial light at the end of her tunnel"** — implying she may be near retirement/departure and thus less invested in learning a new system, worth adjusting approach for.
- **First-time observer confirmation:** Tom directly asked Pete whether he'd seen a labor meeting run with this level of ownership engagement before — Pete confirmed it's notable. Tom explained Mohonk **deliberately did not bring ownership into these weekly meetings from day one** — they let the system and the operational habit mature first, and only more recently started joining themselves once it had proven itself enough to be worth ownership's time.

## 9. Pete's Closing Philosophy (with Tom)
- Core reframe, stated directly to Tom: **"Employees don't run the schedule. The customers do."** Guest/demand signal should drive staffing, not habit or headcount comfort.
- **Pete's own casino cage-cashier story** (a prior operational example he offered, not a Mohonk fact): when his former casino property switched from coin/bucket play to ticket-in/ticket-out, cage-cashier demand dropped from roughly 32 cashiers down to needing just one combined cage/players-club window — executed gradually, tracking the visibly shrinking guest lines rather than an abrupt top-down cut. No layoffs — "a nice easy landing," because the change followed real, observable declining guest need.
- **Banquets reiterated as inherently imprecise** (echoing a theme already in this KB from the Rooms/F&B sessions): Mohonk isn't currently reading full BEO detail for forecasting — just reasonable time-of-day/duration assumptions — and banquet forecast numbers, while pulled in early for planning, are only reliably accurate for a couple of hours before a same-day change (a walked-by sales rep, a group's last-minute plan shift) can move them. Tom's aside: **"that's why you pay a premium for a banquet"** — reinforcing that banquets are understood industry-wide as inherently less operationally/cost-efficient than standard programmed service.
- **Confirmed:** even this far into the engagement, genuine paradigm-shift discovery is still actively happening — James's growing engagement cited by both as a good recent example, not a sign the implementation is behind schedule.

---

## Decisions / Changes Made Live
- Agreed to rotate manager attendance at the Rooms labor meeting rather than requiring all managers every week or none at all.

## Open / Unresolved
- **Timeline compression** — either move the forecast/Generate Projected Hours pipeline earlier (Monday target) or move the Wednesday labor meeting to Thursday; not decided. Directly ties to the existing ["New timeline" rebuild item](kb.md#future-to-do--for-status-report-flagged-83926) — Tom personally confirmed the current JPEG-only timeline needs rebuilding.
- **"Housekeeping Projects" job code** — new idea for formally scheduling excess full-time hours during slow periods; not built.
- **Front Desk employee's multi-job hours reconciliation** — diagnosed as an ADP punch-attribution issue; Alex to investigate the specific employee's coding directly, not resolved live.
- **Manager rotation logistics** (which pairs, how often, how random) — agreed in principle, not scheduled out.

## Key Relationship Context (carry forward)
- **Tom Smiley (CEO) and Eric Gullickson (co-operator) are the reason Mohonk has stuck with Unifocus through years of technical frustration** — this is an ownership-level, multi-year commitment, not just Lou's operational preference. Worth knowing when navigating any future friction with Bron/Lou over platform issues — the underlying relationship is secure at the top.
- Tom is planning to be personally present at more training/onboarding going forward, having just started sitting in on weekly meetings — expect more direct executive visibility into this engagement than in prior months.

---

*© Peter A. Castellano. All rights reserved.*
