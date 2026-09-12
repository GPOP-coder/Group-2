<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Unifocus — IC New Orleans 4-Week Go-Live Support: Week 2 Meeting

**Date:** July 21, 2026
**Context:** Second of four weekly go-live support calls following Pete/Nicole's onsite property-level admin training. **John Grech led this one** — Taylor Walton did Week 1 (7/14) but is now onsite at an HM Alpha property in Indianapolis, so John is covering calls 2, 3, and 4. Pete attended to support John, since Pete was the property's trainer; this was John's first interaction with this specific property.

---

## Participants (property portion)

- John Grech (Unifocus — leading, first time working directly with this property)
- Chantelle Twillmann (InterContinental — Director of Finance)
- Jonathan (InterContinental — Director of Food & Beverage)
- Pete Castellano (PWS/Unifocus — listening in, available if John needed help)

Chantelle and Jonathan dropped off ~35 minutes in for an ownership call at 2:45; John and Pete stayed on afterward to dig into an open banquet labor-standards question (see below).

---

## Scorecard Review — Score: 96/100

John pre-completed a weekly scorecard (2 pts = yes, 1 = partial, 0 = no) ahead of the call, walking through it live:

| Item | Result |
|---|---|
| Data roll-over (week of 7/25 or 7/31 period) | ✅ On time |
| Rooms forecast | ✅ Done on time |
| Banquet/KBI forecast | ✅ Done on time (still manual — Delphi interface not yet live for this property; see mapping note below) |
| Restaurant forecast | ✅ Updated on time |
| Projected hours / schedule generation | ✅ Generated correctly |
| Labor standards generation | ✅ Working (rooms + restaurant importing automatically) |
| **Housekeeping/laundry scheduling** | ❌ Only miss — room attendant and laundry schedules were being done Thursday/Friday instead of on the timeline's scheduled day. House person schedule also looked possibly over-staffed (33 shifts scheduled vs. an estimated ~13 needed) — flagged for the property to review, not necessarily wrong, just worth double-checking. |
| Actual hours import | ✅ Imported correctly |
| Work Records (contract labor) interface | ✅ Confirmed working (John demoed how to verify via Labor Actuals → filter by Work Records shift category) |
| Employee reconcile process | Marked as a 2 (rounded up) — property had been taught this during training but wasn't yet receiving the automated reconcile/transfer emails, so it had been theoretical only until this call |

**Net result:** 96/100 — only the housekeeping scheduling-timeline slip kept it from a perfect score. John will send the scorecard to Chantelle and the team after the call, and will do so weekly going forward (a practice Pete has used for about a year and trained others, including Elliott, to use).

---

## ProfitSword Rooms Forecast — Import Mechanics Clarified

Chantelle raised a question about whether the imported rooms forecast reflects "on the books" or expected pickup.

- **Answer:** The import is a straight pull of whatever number is sitting in ProfitSword — no logic of its own. If the revenue manager enters pickup-adjusted estimates in ProfitSword, that's what imports; if they only update the raw on-the-books number periodically, that's what imports.
- **Timing:** Import runs **Friday ~10:00 AM**; property has until **11:00 AM** to review/edit before it locks in for standards generation.
- Chantelle had been manually overriding the imported number using Opera actuals because ProfitSword's number felt unreliable/stale (only updated a couple times a month by revenue management). John's guidance: that approach undermines the point of importing a pickup-adjusted forecast — the better fix is to get the revenue manager to maintain ProfitSword itself with pickup estimates before Friday 10 AM, not to keep hand-editing after the fact.
- **Audit trail demoed:** the Audit button on the forecast screen shows original system value vs. what was manually changed — useful for Chantelle to self-check her own edits going forward.

---

## Employee Reconcile / Job Code Error — Live Walkthrough

John found an active reconcile error (two employees — "Renia" and "Damon" — stuck in an error bucket) and used it as a teaching moment since the property hadn't yet had real practice with it:

- **Root cause:** Paychex had a job code ("Banquet Supervisor") that didn't exist in Unifocus's labor structure — a name had apparently changed on the Paychex side without the code changing, so the two systems no longer matched.
- **Fix (demonstrated live):** In Labor Structure, copy the exact job code from Paychex, paste it into the corresponding Unifocus job record's code field, and submit. Employees clear from the error bucket on the next interface run (next day — only one pass per day).
- **Process question raised (open, not resolved):** who should be responsible for keeping job codes in sync — property HR (who adds jobs to Paychex) or Unifocus? Corporate training in Nashville the prior week had an open discussion about formalizing this as an SOP: whoever adds a job to Paychex should add the matching job to Unifocus at the same time, preventing reconcile errors before they happen. No final decision yet.
- Two employee-facing emails support this workflow: a daily **Transfer** email (employee-level issues) and a daily **Reconcile** email (hours-level issues) — property wasn't receiving/watching these consistently before this call.

---

## Banquet House Person Labor Standard — Missing "Meetings" Driver (bigger gap than Week 1's issue)

Jonathan flagged that any event tagged simply as a **"meeting"** generates **zero** projected house-person hours — not just undercounted (as Week 1's breakfast/coffee-break undercounting was), but completely absent from the standard.

- **Confirmed cause:** the house-person labor standard's KBI driver list includes minutes-per-cover for banquet breakfast (3 min), lunch (3 min), light reception (1.2 min), heavy reception (3 min), and dinner (3 min) — but **no driver exists at all for "meetings."** Since meetings aren't a covered event type in the standard, they generate nothing.
- **Interim fix applied live:** John added a **3-minutes-per-cover driver for meetings on the PM shift** (matching the existing dinner/reception rate) as a placeholder so the property at least gets some labor credit. Noted in the system that this was newly added.
- **Caveat:** this can't really be tested/validated in the short term — a property would need a day of nothing but meeting-type events (no meals) to isolate the effect, which is unlikely to occur naturally, and the budget tool won't reflect it either since there's no comparable driver there.

---

## Post-Meeting Technical Debrief (John + Pete, property off the call)

After Chantelle and Jonathan left for their ownership call, John and Pete spent the remaining time digging into *why* the banquet house-person standard felt low even before the meetings gap was found. Personnel-related commentary from this portion is filed separately (not in this KB); technical findings below.

- **Budget vs. standard mismatch investigation:** The property's original BLSPD (Budget/Labor Standard/Productivity Detail) file didn't follow the standard BLSPD template (no KBI section up top, dollar figures mixed in where hours were expected, missing volume/cover reconciliation). John and Pete worked through the file live trying to reconcile the property's ~$9,638 budgeted house-person hours figure against the ~52,770 total banquet meal-cover volume, and could not fully trace how the original productivity figure had been derived — concluded the underlying BLSPD was unreliable and would need to be rebuilt/re-validated rather than trusted as-is.
- **Why the 3-min/cover standard isn't as low as it looks in isolation:** a meaningful share of banquet house-person work (setup/breakdown) is actually covered by a *separate* fixed job code — banquet house-person **supervisor** — which carries a flat allocation of roughly 10 shifts/week regardless of volume. Looking at the 3-min/cover driver alone (without accounting for the supervisor's fixed labor) overstates how understaffed the standard actually is. This mirrors the same "don't evaluate banquet labor at the single-event level" principle already documented from the corporate admin training (see `../corporate-admin-training/agenda-notes.md`).
- **Mapping status update:** BEO event-type mapping (needed to get banquet KBIs flowing automatically instead of manual entry) is now consolidated under **Nicole Mendez (HM Alpha)** rather than being taught property-by-property or left to individual Unifocus consultants — this was a deliberate decision by Nicole to keep event-type definitions (e.g., how to treat "tastings," "stations") consistent across the portfolio before scaling to additional properties, since IC New Orleans and other flags don't share a single Delphi instance (HM Alpha corporate does not have one universal Delphi — IC New Orleans and other Delphi-brand properties each have their own instance with their own event-type conventions). As of the day before this call, IC New Orleans's mapping was confirmed workable in both actuals and forecast — a recent change; it was not in that state when Pete was last onsite.
- **John's calendar this week:** 5 HM Alpha weekly calls — Hilton (same day, 5 PM his time), Union Station Nashville (next day, 2 PM Central — Pete unable to attend due to a scheduling conflict), DoubleTree Raleigh (week 2 there also), and Houston (Thursday).

---

## Open Items

- [ ] Property to correct housekeeping/laundry scheduling timeline — should be completed same day as other departments, not Thu/Fri
- [ ] Property to review house-person (room attendant/laundry) shift counts — possible over-scheduling relative to actual need (33 shifts logged vs. ~13 estimated)
- [ ] Resolve property-level vs. Unifocus-level ownership of job-code sync (Paychex ↔ Unifocus) — was an open SOP discussion in Nashville corporate training; no final decision
- [ ] Revenue manager to maintain ProfitSword with pickup-adjusted estimates before Friday 10 AM import, instead of Chantelle hand-editing post-import
- [ ] Meetings labor driver (3 min/cover, PM shift) — newly added as an interim fix; revisit once real volume data exists to validate
- [ ] Full banquet house-person BLSPD rebuild/validation — original file unreliable; John to take to Devon Peters (HM Alpha) per the same pattern as Week 1's Devin/Devon follow-up
- [ ] Nicole Mendez continuing to own BEO/event-type mapping consolidation across the portfolio (tastings, stations, and other property-specific event types need a universal answer before Wave 2/3 scale-out)

---

## Cross-reference

- Week 1 notes: [2026-07-14_go-live-support-week1-meeting-notes.md](2026-07-14_go-live-support-week1-meeting-notes.md)
- Standards review (pre-training): [2026-06-29_standards-review-transcript.md](2026-06-29_standards-review-transcript.md)
- Corporate training banquet philosophy: [../corporate-admin-training/agenda-notes.md](../corporate-admin-training/agenda-notes.md)
