<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — Manager Training, Thursday Morning (9/10/26)

**Date:** September 10, 2026, ~8:30 AM – 10:36 AM, break, then continuing to ~11:22 AM
**Source:** Two Plaud transcripts processed as a single continuous session — `09-10 Lecture_ Unifocus Labor Planning & Scheduling System Training-transcript.txt` (Part 1, through the 10:36 AM break) and `09-10 Meeting_ Labor Standards and Unifocus Auto-Scheduler Configuration-transcript.txt` (Part 2, resuming after the break through wrap-up). No break in topic between the two files — Part 2 opens mid-sentence continuing the cook labor standard discussion from the end of Part 1.

**Participants:**
- Pete Castellano (PWS, trainer)
- Jesse Frost — Director of Food & Beverage ("Jesse," diarized Speaker 3). ~1 year 1 month on property; prior public-club background (Club Essentials); prior Unifocus exposure at Estancia La Jolla and a Huntington Beach country club. Ultimate approver of all F&B schedules; works with Mark on forecasting.
- Valeria Ruvalcaba — HR ("Val"). Third Unifocus class attended.
- Mauricio Enriquez — Executive Chef, presumed (diarized Speaker 4, "Chef"; not named aloud in transcript, but matches contacts.md's Executive Chef and the self-description "5 years on property, Unifocus was here when I got here"). Schedules culinary and stewarding.
- John Davis — Loss Prevention Supervisor (diarized Speaker 5, "JD"). Team of 5. 4 years on property. Prior Unifocus exposure at the W, Andaz, and a nightclub, ~1.5 years ago.
- Agustin Paz — Restaurant Manager, presumed (diarized Speaker 6, transcribed "Augustine"; self-described as "the F&B manager," 2 years on property, first-time Unifocus user, previously scheduled via Paychex only).
- **Mark Ziomek** — General Manager (diarized Speaker 2, first appears 00:04:52 in Part 2). Joined after the ~10:36 break, not part of the opening roll call. Gave the session's closing takeaways, referenced property-wide guest-service scores, raised an HMAlpha-communication complaint.

---

## 1. Pete's 25th Workforce-Management Anniversary — Told Live in the Room

Opened the session by telling the class this is his 25th anniversary in workforce management: his second day on the job was September 11, 2001, at a Four Diamond hotel/casino in Council Bluffs, Iowa — the property got *busier*, not slower, after air travel stopped, as locals who wanted entertainment but couldn't fly turned it into a staycation destination. First day therefore falls on **September 10, 2001** — meaning this Thursday session, September 10, 2026, was the actual 25th-anniversary day itself. This is the same origin story behind the LinkedIn post drafted earlier this week (see CLAUDE.md PWS/Unifocus section) — nice to have it independently corroborated, told live and unprompted, in a client training room the same morning.

## 2. Weekly Timeline — Full Walkthrough

Same core weekly cycle taught across HMAlpha properties, walked in detail for this property:

- **Monday:** planning period rolls forward one week. Rooms forecast imports from ProfitSword (same forecast distributed to everyone else — Unifocus doesn't generate its own). Banquet forecast pulls from **CI only, never Delphi** — a rolling 42-day file (21 days back, 21 forward), split and re-pulled daily, but only *looked at* once, Monday morning, capturing whatever BEO condition existed as of the prior Thursday. Revenue center forecast (outlet covers — breakfast/lunch/dinner) generates automatically at Monday noon from rooms + banquets.
- **Monday–Tuesday:** revenue center forecast open for manager edit until Tuesday ~11:30 AM (Jesse's step). Currently a straight 13-week trailing average per meal/day — no adjustment yet for last night's heads-in-beds minus this morning's group breakfast, or comparison to prior year.
- **Tuesday ~11:00–11:30 AM:** Generate Projected Hours, then Generate Schedules — automated, runs once, not re-triggerable by managers (only Val, as admin, could force a rerun, and doing so disrupts everyone else's in-progress edits).
- **Tuesday noon – Wednesday 3:00 PM:** schedule is the department's to edit. System will not create overtime or doubles across touching shifts, but managers can override.
- **Wednesday (time TBD):** labor meeting — the same two questions taught everywhere: how did last week go, are we ready for next week.
- **Wednesday end of day (~4:00–4:30 PM):** one person publishes for the **entire property at once** (confirmed live in response to Speaker 6's question — not per-department), so all employees get a unified schedule view rather than a staggered rollout.
- **Paychex cutover:** current planning week (9/12–9/18) is being worked in Unifocus as practice/cleanup only — Paychex stays the system of record for those dates. Starting the week of **9/19–9/25**, Unifocus schedules push to Paychex twice daily (midday + end of day) and will overwrite anything managers enter directly in Paychex from that point forward. Approved time-off requests flow the other direction, Paychex → Unifocus, picked up overnight; a request submitted before Monday will suppress that shift from auto-scheduling, but a later request will show up stacked on top of an already-auto-scheduled shift as a visible flag to fix.

## 3. Help Resources — Full Menu Walkthrough

Standard Unifocus help ecosystem, shown live: the searchable Help book (table of contents, opens in a separate tab), full-length online training videos (the same three pre-training videos plus more), and a short-form "TikTok of Unifocus" video library under Help, organized by topic. Ticket-support guidance: open a ticket if genuinely stuck, but cc Val so she lands on the ticket and can track it — and try property-level troubleshooting first, since Unifocus support is triaging tickets from users in 135 countries and over-filing slows everyone down.

## 4. Rooms & Banquet Forecast — View Only, Not the Manager's Job

Walked the Rooms Forecast screen (view/edit icons show where accounting/finance corrected a bad ProfitSword import) and the Banquet input screen, explicitly framed as **not this group's responsibility** — someone else (likely accounting, possibly Sandra once she's back) owns getting these numbers right by Monday noon. **Confirmed live: the property's 10-day rooms forecast window is too short — Unifocus needs 16 days** — matches the existing tracked gap in kb.md (currently sends 10 days, 16 needed), independently reconfirmed here.

## 5. Revenue Center Forecast — "Needs Attention" Mechanic and the Beverage-Revenue Gap

Live-demoed the View/Edit Revenue Center Forecast screen with Jesse and the group:
- The system flags a day "needs attention" (rendered as zero) when the 13-week trailing average is missing or looks statistically implausible; the manager types an override number directly (autosaves on tab-out, no save button).
- **A real, live-surfaced gap: bar/beverage-revenue-driven scheduling isn't working.** The property's bar currently shows **zero beverage revenue** flowing into Unifocus (Speaker 6: bartenders are required to ring zero when a guest doesn't order food, so drink-only sales aren't counted as covers) — and the bar schedule is **currently built off occupancy**, not beverage revenue, which Pete flagged as exactly the wrong direction ("which in our world we want to get away from"). Unconfirmed whether the bartender labor standard is even wired to revenue yet. This is the same beverage-revenue pattern already tracked at other HMAlpha properties (WLP's La Luz Lounge) — worth cross-referencing as a portfolio-wide recurring gap, not property-specific.
- Pete's broader point on KBI philosophy, stated plainly for the room: guests always drive the volume number, even where the driver is unusual (rooms for engineering, beverage revenue as a proxy for bar covers) — "the guests are telling us what they want."

## 6. Scheduling Screen Mechanics

- **The filter** flagged as the single biggest source of user confusion ("40% of everybody's trouble") — filters by job AND schedule group combine as AND, not OR, so an overly narrow combination silently shows nobody.
- **Schedule groups** — confirmed **not in use at this property yet**. Mechanism explained (arbitrary manager-defined groupings, useful for filtering/printing) but flagged as a common early-implementation trap: new hires don't automatically land in a group, generating "why can't I see this person" tickets. Available to set up now while Pete's onsite, or later by Val.
- **Drag-and-drop shift assignment** demoed live using real kitchen data: system-generated shifts can be dragged to an eligible employee (job-matched; won't let you assign a mismatched job or create overtime automatically), or a manager can right-click to hand-build a shift from scratch — which does *not* consume one of the system-generated open shifts, since manually-added shifts and system-made shifts are tracked separately.
- **"Numbers at the bottom" is the core mental model Pete repeated throughout the session:** once individual editing starts, the only thing that matters is the daily/departmental summary bar (projected vs. scheduled shifts and hours) — not which specific employee holds which shift.
- Real live example: kitchen filter showed 69 shifts generated, 64 auto-filled (405 of 517.5 hours) — "encouraging" but not yet validated as the *right* people on the *right* shifts, which is what the rest of the week's editing is for.

## 7. Labor Standards — Cook Job Is Entirely Fixed, No Banquet Variability Yet

Walked the Cook labor standard in detail: shift-by-shift structure ("donut chef" 5 AM shift, lunch coverage Sun–Thu, fixed AM/PM coverage) — **entirely fixed, no variability to volume or banquets at all**, same limitation flagged generically at other properties. Pete's explicit framing for the room: security-style fixed standards are fine as a starting point, but the property should eventually think through what changes at high and low volume, including whether banquet-adjacent culinary labor should flex (with the caveat that banquet-driven labor should show up spread across the days *before* a big event, not concentrated same-day, mirroring the placeholder/autoschedule-ceiling technique already logged in the PWS foundations methodology doc).

**Assignments concept explained using Security as the live example:** an assignment is a label-plus-optional-standard that can turn a job on/off seasonally (e.g., a "summer flex officer" shift that only generates when an employee actually holds that assignment) — distinct from a job's base labor standard.

**Real gap found live in the Security standard:** reviewing the standard live with John Davis, Pete identified that the **Security Officer standard has no coverage at all for the AM shift on Saturday/Sunday**, despite officers apparently covering those days in practice (likely pulled from other shifts or from DoubleTree-shared staff). Pete's assessment: "that sounds like there's something missing there... we probably need two more shifts here." Not fixed in this session — flagged as a real follow-up item, distinct from the DoubleTree-shared-security-staff question (also raised, unresolved: those employees may currently live outside this property's Unifocus database entirely and would need to be added once DoubleTree San Diego Del Mar's own implementation, currently pushed to October per John Grech's reassignment, clarifies staffing).

## 8. Employee Maintenance — Live-Built for a Real Employee (Aurelio)

Full walkthrough using real employees (Melissa the line cook, Aurelio the busser) as live examples:

- **General/Status/Jobs tabs** — same ADP/Paychex-driven pattern as other properties: only display name is manager-editable, everything else flows from Paychex overnight. Jobs tab is where Sub Only gets set (all secondary jobs defaulted to Sub Only at go-live, matching the portfolio-wide convention).
- **Scheduling tab / availability — built live for Aurelio:** walked the room through setting real availability (days off Wed/Thu, hours 5 AM–7 PM as an illustrative example) and explained the "required off" vs. blank distinction, plus the caution against using "Preferred Off" (it deprioritizes rather than blocks, and doesn't behave the way most managers expect in a busy shift pool).
- **Regular vs. Permanent overrides, with clear sequencing guidance:** try availability first; if that doesn't resolve a specific person needing a specific shift, use **Regular** (overrides timing only, for one person); use **Permanent** only as a last resort and sparingly, since it force-schedules regardless of the standard's actual shift count and can create real overscheduling if misused — some properties do use Permanent for their whole roster as an intentional starting point, but Pete's explicit recommendation is to avoid that as a default.
- **Assignments tab** demoed on Melissa — assignments must be explicitly granted per employee even when a job requires one; nothing defaults.
- **"Dots and dashes" as the manager's own audit signal**, reiterated: a schedule view showing dots/dashes across the grid means availability has been entered; blanks mean a manager hasn't done their Employee Maintenance homework yet, which is very likely the actual root cause behind unexplained scheduling problems, not a system defect.

## 9. Reports for the Labor Meeting

Walked both standard labor-meeting reports live, using real property data:

- **Weekly Labor Summary** — same methodology taught everywhere ("start at the bottom, work your way up," actual-vs-standard is the only number that matters, projected-vs-scheduled is just how you got there). **Live example, flagged spontaneously by Mark Ziomek:** looking at a specific outlet ("Arteta"), individual job variances were modest (Bartender -1%, Buser -17%, Supervisor -3%) but the **whole-department total came out at -21%**, which Pete called out as a real, worth-investigating gap ("that means, what are we not doing?") — distinct from any single job-level number. Not resolved in this session; worth a follow-up look.
- **Weekly Projected Schedule report** — same "numbers at the bottom first" framing; demoed on Housekeeping.
- Reiterated the Paychex/Unifocus data-flow split one more time in response to a direct question: Paychex does not feed schedules backward into Unifocus. Schedules only flow Unifocus → Paychex (twice daily); actuals only flow Paychex → Unifocus (once daily). Editing today's schedule in Paychex directly, while still in the parallel-run period before 9/19, does nothing in Unifocus.

## 10. Closing — Mark Ziomek's Wrap-Up and an HMAlpha Communication Complaint

Mark Ziomek closed the session with a summary for the room — get employee maintenance done, dots-and-dashes is what Pete's actually screening for, this isn't a one-time setup but needs revisiting per new hire — and separately raised, unprompted, that **the property feels it's getting very little top-down communication from HMAlpha corporate** about how the weekly labor meeting is supposed to run administratively (is it a Unifocus meeting or an HMAlpha meeting). Pete's answer: it's an HMAlpha labor meeting run using Unifocus as the tool, not a Unifocus-owned process. **Worth flagging as a client-sentiment signal**, similar in shape to prior satisfaction/communication gaps surfaced at other HMAlpha properties — not a Unifocus configuration issue, but worth noting if a pattern develops.

Also discussed, unprompted, interest in consolidating onto more of the Unifocus suite (Time & Attendance specifically) to reduce the number of interfacing systems — a live expansion signal, not yet pursued.

Personal aside at the very end: Pete mentioned wanting to get some of his own photography displayed in local venues and asked about how a hotel's on-site art/photography program worked — unrelated to the engagement, purely personal networking, not logged as a PWS action item.

---

## Open Items

- [ ] **Security Officer standard — missing AM shift coverage on Saturday/Sunday**, found live 9/10/26 with John Davis. Needs a labor-structure correction; likely requires 2 additional shifts. Distinct from the still-open question of whether DoubleTree-shared security staff need to be added to this property's database.
- [ ] **Bar/beverage-revenue labor standard gap** — beverage revenue currently flows in at zero (bartenders not ringing drink-only sales as covers), and the bar schedule is still built off occupancy rather than revenue. Same shape as the WLP La Luz Lounge finding — worth tracking as a recurring HMAlpha-wide pattern, not just here.
- [ ] **Housekeeping/Arteta -21% overall variance** flagged live by Mark Ziomek during the Weekly Labor Summary walkthrough — not investigated in this session, worth a follow-up look at what's driving the department-level gap despite modest individual job variances.
- [ ] Confirm Executive Chef's name aloud (presumed Mauricio Enriquez per contacts.md, not stated in transcript) and confirm "Augustine" = Agustin Paz (Restaurant Manager) — both reasonable matches, not explicitly confirmed in the audio.
- [ ] Schedule groups — still not set up at this property; offered to build while onsite, not yet actioned as of this session.
- [ ] Revenue Center Forecast methodology — still a flat 13-week trailing average, no adjustment for prior-night occupancy or banquet offset yet (consistent with the standard rollout sequencing, not treated as urgent).

---

## Related Files

- [Marriott Del Mar — Property KB](kb.md)
- [Marriott Del Mar — Contacts](contacts.md)
- [Manager Training, 9/9/26](2026-09-09_manager-training.md)
- [System Admin Training — AM, 9/8/26](2026-09-08_admin-training-am.md)
- [Stephanie Simmons CI Integration Meeting, 9/9/26](2026-09-09_stephanie-simmons-ci-integration-meeting.md)
- [PWS Foundations Doc 3 — Implementation & Analysis Methodology](../../../foundations/03-implementation-analysis-methodology.md) — beverage-revenue-as-volume-driver and banquet-adjacent-labor-spread concepts referenced in this session are documented there as portable methodology.

---

*© Peter A. Castellano. All rights reserved.*
