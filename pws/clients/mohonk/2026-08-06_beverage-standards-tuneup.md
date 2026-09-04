<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Beverage Standards and Configuration Tuneup

**Date:** August 6, 2026, 4:00–5:00 PM
**Location:** Mohonk Mountain House — Office 16
**Context:** Confirmed on the calendar as "Unifocus — Beverage." Source: raw Apple Voice Memo transcript. **This session found and fixed several real configuration bugs live** — genuinely productive, not just training.

## Participants
- **Pete Castellano** (PWS)
- **Bron Walis** (IT Director) — led the technical walkthrough
- **Samuel Harris** (Beverage) — **new to this role, ~6 weeks in.** Background: 18 years in hospitality, left for 8 years to do civil engineering/land surveying, returned to hospitality after struggling to find engineering work without a license.
- James Danks and Casey Dow were on the calendar invite but not clearly present in this portion of the recording.

---

## 1. Why This Session Was Needed — Department/Job-Code History
- Beverage originally lived under **one single job code, "Central Service Bartender Main"** — didn't work well operationally.
- Over the past couple of months, Bron and Samuel have been rebuilding it into **separate job codes per outlet** (Granary, Founders, Carriage Lounge, Main Dining Room, Banquet, Wedding), plus consolidating everything into its **own "Beverage Services" department** (mirroring the same department-restructuring pattern already done for F&B on 8/5 — see [2026-08-05_labor-meeting-fb.md](2026-08-05_labor-meeting-fb.md#1-labor-effectiveness-report--backward-looking-department-by-department)).
- **Migration was clean:** when jobs got moved into the new Beverage department/job structure, all historical actual hours, standard hours, and schedules on each line moved with them — nothing was rebuilt from scratch or lost. Confirmed as a good precedent for any future department reorganization elsewhere in the property.
- Symptom driving this session: Samuel reported some positions **not auto-generating shifts on all the days they should** (e.g., showing Sunday but not other days).

## 2. Training-Shift Hours — Where They Actually Show Up
- Samuel's question: shifts flagged as "training" aren't visibly broken out on his weekly reports.
- **Answer:** training hours count as productive hours by default (true across most of the US industry) and get folded into normal totals — but the **Weekly Labor Summary report has a "Breakout Hours" toggle** that separates training (and other categories) out specifically for this purpose.
- **Explicit use case, worth reusing elsewhere:** this is a CYA tool — e.g., "I'm over standard by 100 hours, but I actually had 150 hours of training, so I'm really under" is a defensible, provable explanation once you can point to the breakout.

## 3. Root Cause Found — Granary Generating 3 Shifts Instead of 1
- **Bug:** a single Granary bartender need was generating **three shifts** instead of one — the correct new job-level "Beverage Granary" shift, plus **two leftover legacy shifts** still attached to the old "Main Service Bar / Granary" assignment-level standard from before the restructuring.
- **Fixed live:** Bron deleted the leftover legacy standard (left an internal note first for reference, then removed it). Confirmed correct going forward.

## 4. Main Dining Room Service Bartender — Misplaced at Assignment Level
- The Main Dining Room service bartender standard was still sitting at the **assignment level** instead of being promoted to the **job level**, inconsistent with the rest of the restructured beverage jobs.
- Functionally it still works either way, but it's structurally inconsistent with everything else. **Flagged, not fully completed live** — Bron noted he still needs to move it.

## 5. Root Cause Found — Banquet Bartender Never Generated Any Shifts
**Real, dollar-relevant fix — likely explains historical under-crediting.**
- Banquet Bartender had **never generated a single shift**, going back to original setup ("from day one, that was the issue").
- **Root cause:** the standard was mapped only to the **Reception Heavy / Reception Light** KBIs (group-booked banquet business only) — not to **Banquet Total**, which also captures **local/day guests**, not just groups.
- **Fixed live:** remapped Banquet Bartender to Banquet Total Reception Heavy/Light, so it now captures both group and local banquet reception business.
- **Bron's own framing:** "You might have been shortchanged on bars... it's been set up that way all along. I don't know why. But it's fixed." Still depends on James entering accurate banquet numbers by Monday — the fix corrects the mapping, not the underlying reliance on manual forecast entry.

## 6. Banquet/Wedding Bar Logic — Methodology Reminder (Not a Bug)
- **Reinforces an existing KB theme:** the system doesn't read BEOs. It only reacts to whatever banquet category (Reception Light/Heavy, Wedding Reception) James enters by Monday of the prior week. If a BEO's bar isn't captured under one of those categories (e.g., a dinner with a bar that isn't flagged as a "reception"), **no bartender credit gets generated** — a structural limitation, not a fixable bug.
- **Bron's explicit recommendation: don't chase more granular banquet KBIs to solve this.** Precision here degrades over time as staff turnover erodes the manual discipline needed to keep it accurate — "it'll happen for a while, and then we'll go, why are you so off on bartender?"
- **Ratios confirmed, more generous than Samuel expected:** Reception Heavy and Reception Light are both **1 bartender per 50 guests** — Samuel had assumed Wedding Reception was 1-per-15; it's also 1-per-50. Both described as "generous."
- **Shift length is a flat assumption (~7 hours)** regardless of actual event duration, which in reality ranges from a 45-minute reception to a multi-hour event. Acknowledged as a rough approximation, not something the system can improve without reading BEOs directly.
- **Overlapping-event over-staffing is expected and explainable:** if the same physical bar covers a cocktail reception, then a dinner-with-bar, then an after-dinner reception, the standard may generate credit for 3 separate bartender shifts when one person actually covers all three sequentially — over-staffing on paper, but a legitimate, explainable variance ("Lou likes explainable variances... this event wanted more bartenders, that's why we had more").
- **Confirmed: wine pairing dinners ARE captured** via a BEO → Banquet Bartender, addressing Samuel's direct question about whether that recurring event type gets credit. It does.

## 7. Property's New BEO/Event System — A Workflow Regression (Not Unifocus)
- Mohonk's new event system (the Infor SCS transition referenced elsewhere in this KB) **doesn't show start/end times on requirements** the way the old system did — Samuel now has to read the full BEO outline to infer when something actually ends. Flagged as a genuine workflow loss, unrelated to Unifocus, worth being aware of when working with Samuel on timing-sensitive standards.

## 8. Carriage Lounge Shift-Generation Gap — Same Root Cause as the Standing Thu–Sun Issue
- Samuel reported some Carriage Lounge shifts intermittently not generating.
- **Live diagnostic:** standard config confirmed correct (opener 11 AM, 2 closers 4:30 PM); KBI setup confirmed correct (lunch covers standard at 3:45).
- **Root cause, found via the system's edit-history log:** James entered that week's KBI forecast numbers **Wednesday at 3:00 PM** — but **Generate Projected Hours runs Wednesday at 1:00 AM**, before the numbers existed. The numbers needed to be in by end-of-day Tuesday to be picked up.
- **This is the same underlying timing root cause already extensively documented for the standing [UNIFOCUS-252999](kb.md#-standard-hours-not-generating--thursday-through-sunday-recurring) issue** (revenueimport/generation-window timing) — another independent data point confirming that pattern extends beyond F&B covers into Beverage/Carriage Lounge forecasting too.
- **Process fix, not a system fix:** Bron asked Samuel to screenshot and escalate to Casey or Bron (cc Pete) if it recurs.

## 9. Minor Bug Fixed Live — Wrong Start Time on a Carriage Lounge Standard
- One Carriage Lounge shift had an incorrect start time baked into the standard (showing 12:45 instead of the intended 3:45 lunch-covers-driven start). **Corrected and saved live.**
- **Open question, not resolved:** whether a 5.5-hour shift should trigger an automatic unpaid break the way a 6-hour shift does — the system's behavior at that boundary wasn't fully clear even to Bron. Flagged for Samuel to watch and report back if it becomes a real issue.

## 10. Scheduling Workflow — Path Off the Parallel Excel Process
- **Current process:** Samuel builds the Beverage schedule in **Excel first** (sent out Monday, ahead of Unifocus, to give bartenders more notice), then re-enters it into Unifocus and finalizes by Friday — a duplicate-effort pattern already flagged elsewhere in this KB as a property-wide issue.
- **Key reassurance from Bron:** Unifocus's Tuesday/Wednesday-morning auto-generation **will not overwrite a schedule Samuel has already built and entered in advance** — he can safely build as far ahead as he wants natively in Unifocus without losing that early-notice workflow.
- **Because Beverage is small and highly repetitive** (largely the same people in the same slots week to week), Samuel is a strong candidate to drop the Excel step entirely and build natively — directly extends the property-wide "single native scheduling system" push already tracked elsewhere in this KB (Tom Smiley's "everyone on mobile/Unifocus" idea, the planned schedule-printing training session).
- **Practical tip given:** mark employees who reliably work the same shift/location every week as **"Regular"** rather than "Variable" — pre-populates their usual slot before the auto-scheduler runs, cutting down on weekly manual rebuilding.

## 11. Sub-Only vs. Regular — Reusable Auto-Scheduler Control Technique
**Worth generalizing to other departments — a clean, reusable explanation of a control most managers aren't using.**
- **"Sub only"** (an Employee Maintenance job-level setting): makes an employee **invisible to the auto-scheduler for that specific job** — they won't be auto-assigned; a person must place them manually. Recommended for jobs a manager wants to hand-pick rather than let the (roughly alphabetical) auto-assignment sequence decide — Samuel's leading example: **Banquet Bartender**, where he wants control over who works banquets.
- **"Regular"**: pre-populates a person into their known recurring shift before the auto-scheduler fills anything else. Example given: "Michael," who works the main service bar 5 days a week — a genuine fixed-schedule case.
- **Recommended combination:** go through each Beverage job and mark Sub-only on anything Samuel doesn't want auto-filled, and use Regular for anyone with a truly fixed weekly slot; a person can be both, or neither, depending on the job.

## 12. Administrative Pain Points, Acknowledged But Not Solved
- **ADP job-transfer auditing:** since the granular job-code split, Samuel manually checks ADP every Monday for employees whose hours got misattributed to the wrong job/location after clocking in — a real, ongoing administrative burden. No fix today; **eventually pushing schedules into ADP** (a standing future project referenced elsewhere in this KB) may reduce this, but it isn't built.
- **New-hire secondary job setup:** ADP only sends a new hire's single primary job; someone (currently Samuel) has to manually add every secondary Beverage job they're eligible to work. Bron would like this to eventually move to HR, not resolved.

---

## Decisions / Changes Made Live
- Deleted the leftover legacy Granary standard causing triple-shift generation.
- Remapped Banquet Bartender from Reception-only to Banquet Total Reception Heavy/Light — now captures local/day guests, not just group.
- Corrected the wrong start time on a Carriage Lounge standard.

## Open / Unresolved
- **Main Dining Room service bartender standard** — still at assignment level, needs promotion to job level (works either way, just structurally inconsistent).
- **Carriage Lounge KBI-timing gap** — same root cause as the standing UNIFOCUS-252999 pattern; Samuel to screenshot and escalate if it recurs.
- **5.5-hour shift break behavior** — unclear whether it should auto-trigger a break; not resolved.
- **Excel-to-native scheduling transition for Beverage** — recommended, not yet adopted.
- **Sub-only / Regular pass on Beverage job list** — recommended, not yet executed.
- **ADP job-transfer auditing burden** — acknowledged, no near-term fix.
- **New-hire secondary job setup** — currently on Samuel, may move to HR eventually.

---

*© Peter A. Castellano. All rights reserved.*
