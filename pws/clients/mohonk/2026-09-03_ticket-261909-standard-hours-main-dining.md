<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — UNIFOCUS-261909: Standard Hours Issue, Main Dining Room

**Status:** ✅ Resolved 9/4/26 — Pete fixed and confirmed. Client-side config gap, not a Unifocus bug. Ticket not yet formally closed in the Unifocus portal.

---

## Issue

- **Property:** Mohonk Mountain House
- **Outlet:** Dining Room - Main Department Total
- **Affected dates:** Monday 8/24/26 and Wednesday 8/26/26 (non-adjacent, same week)
- **Symptom:** Standard hours for those two days are far below the rest of the week, despite covers being in line with the rest of the week. Bron re-generated standard hours for the week — no change.

### Weekly summary data (from Bron's attached report, week 8/24-8/30)

| | Mon 8/24 | Tue 8/25 | Wed 8/26 | Thu 8/27 | Fri 8/28 | Sat 8/29 | Sun 8/30 | Weekly |
|---|---|---|---|---|---|---|---|---|
| Projected | 347.25 | 489.00 | 367.25 | 473.75 | 480.25 | 544.25 | 508.25 | 3,210.00 |
| Scheduled | 511.75 | 518.75 | 514.50 | 512.25 | 506.00 | 554.50 | 556.75 | 3,674.50 |
| Actual | 449.98 | 486.31 | 464.35 | 478.16 | 452.49 | 521.63 | 476.39 | 3,329.31 |
| **Standard** | **337.00** | 480.00 | **363.75** | 467.25 | 465.50 | 533.50 | 486.00 | 3,133.00 |
| Variance % | **34%** | 1% | **28%** | 2% | -3% | -2% | -2% | 6% |

Covers by meal period, same week (Main Dining Room) — Bron's second attached report confirms covers on Mon/Wed are **in the normal range**, not anomalous:

| | Mon 8/24 Actual / Forecast | Wed 8/26 Actual / Forecast | Other days, typical range |
|---|---|---|---|
| Breakfast | 375 / 350 | 465 / 400 | 358-465 actual |
| Lunch | 268 / 325 | 347 / 400 | 322-360 actual |
| Dinner | 508 / 500 | 517 / 500 | 372-465 actual |
| AM Covers (B+L) | 643 / 675 | 812 / 800 | 699-810 actual |

## Diagnosis (Pete + Claude, 9/3/26)

**Ruled out:**
- **Bad/stale covers or forecast data** (the known Thu-Sun cover interface freshness issue, still open on the 8/31 punch list) — doesn't fit. Covers and forecasts on both flagged days are in line with the rest of the week per Bron's own report.
- **One-time calculation glitch or stale cache** — doesn't fit. Bron already re-generated standard hours for the week and got the identical result. A glitch would typically clear on regeneration; a config-driven result reproduces the same output every time it's recalculated.
- **Generate Projected Hours task failure** (the Founders precedent, UNIFOCUS-247559, resolved via Task Scheduler fix by Melody Tate) — doesn't fit the symptom shape. That bug produced **zero** shifts/hours; this produces **reduced but non-zero** hours, and only on two specific calendar dates, not a full outage.

**Working theory (confirmed likely 9/3/26 — see Correspondence):** the **Dining Room Server standard is unfinished**, not a system bug or bad data.

- **8/4/26 F&B labor standards meeting** (Pete, Lou Petruzzelli, James Danks, Bron Walis, Patrice Huart) — decision made to rebuild dining room server/runner standards: **2-server floor, variable ratio to hit ~17 servers at ~400–425 covers**, removing the old fixed "+2 above 180 covers" breakfast rule. Job path: `2 - Food and Beverage\Dining Room - Main\Server`.
- Same meeting's AI-flagged open items note: *"No precise cover-to-server ratio/threshold finalized for the 17-servers-at-~400-425-covers target."* — i.e. only the floor and the top-end target were agreed, not the actual ratio curve between them.
- A follow-up was explicitly booked for 8/5, 9:00 AM "to continue the server/runner rebalancing exercise" — but that session's actual content (`2026-08-05_dining-room-standards-followup.md`) covered Buffet Attendant, Brunch Buffet, Kids Buffet, Founders Brunch, Lakeview Breakfast, Room Service, and Banquet Server Assistant instead. **Dining Room Server was never returned to.** No later file shows it finished.
- **Fits the data cleanly:** Mon 8/24 and Wed 8/26 are the two days whose covers sit at the edges (lowest/highest) across meal periods relative to the rest of the week — exactly where an unfinished ratio table (built for the "normal middle" range only) would fall short.
- **Confirmed 9/3/26:** James Danks replied to the ticket thread independently — *"It is from the server hours it seems"* — same conclusion, from the property side, without seeing this analysis.

## Correspondence

- **8:50 AM CT, 9/3/26** — Bron Walis emailed support@unifocus.com (cc Susanna Briggs, Pete, Casey Dow, James Danks), subject "Standard Hours Issue," High importance. Included the two data tables above.
- **9:15 AM CT, 9/3/26** — Auto-ack from Unifocus Client Service: ticket **UNIFOCUS-261909** opened, first comment from **Pedro Gutierrez** (standard received/queued acknowledgment, no diagnosis yet).
- **8:52 AM CT, 9/3/26** — James Danks replied on the ticket thread (to Bron, support@unifocus.com, cc Susanna/Pete/Casey): *"It is from the server hours it seems."* Independent confirmation of the Dining Room Server standard as the source, matching the diagnosis above.
- **9/4/26** — Pete replied on the ticket thread: confirmed James was right, traced it to the labor standard started in the first F&B meeting with James (deferred at the 8/5 follow-up in favor of Buffet Attendant), identified the missing top-volume line in the Sun-Thu dinner standard, noted the smoothing applied to Sun-Thu and extended to Fri/Sat, attached the corrected single-week WLS (Mon -1%, Wed -3%, full week variance -3% to 2%), and flagged breakfast/lunch as a possible next step for the November visit.

## Resolution (9/4/26)

Confirmed root cause via the actual Labor Standards report: **"1715-2215 (5) Sunday-Thursday" — Main Dining Room 05. Dinner — Daily (Units/Shift)** had a fully-built 6-band volume table (1-149→12, 150-199→13, 200-400→14, 401-449→18, 450-499→19), but the top band, **500-Infinity, was only populated for Sunday (20) — Monday through Thursday were all 0.** Dinner covers that week: Mon 508, Tue 465, Wed 517, Thu 438, Fri 453, Sat 434, Sun 372 — only Monday and Wednesday crossed 500, the exact two flagged dates.

James Danks independently confirmed the same source ("It is from the server hours it seems") without seeing this analysis.

**Fix applied:** filled in the missing 500-Infinity values for Mon/Tue/Wed/Thu (20, matching Sunday), then went further and smoothed the whole table into 9 even bands (12→13→14→15→16→17→18→19→20) to remove the discontinuous jump from 14 to 18 that existed at the 400/401 boundary — same treatment applied to Friday/Saturday, which previously had no tiering at all (flat 15 units/shift regardless of volume).

**Verified against Weekly Labor Summary, before/after, 8 weeks (WE 7/12–8/30), Server Job:**

| Week Ending | Standard (before) | Standard (after) | Variance (before) | Variance (after) |
|---|---|---|---|---|
| 7/12 | 1,507.25 | 1,446.00 | -2% | 2% |
| 7/19 | 1,484.25 | 1,406.00 | -3% | 3% |
| 7/26 | 1,484.50 | 1,440.75 | 2% | 6% |
| 8/2 | 1,585.75 | 1,564.75 | -2% | 0% |
| 8/9 | 1,573.25 | 1,556.50 | 1% | 3% |
| 8/16 | 1,567.25 | 1,533.00 | 2% | 4% |
| 8/23 | 1,662.00 | 1,637.75 | -8% | -6% |
| **8/30 (ticket week)** | **1,375.25** | **1,588.25** | **15%** | **0%** |

Ticket week corrected cleanly (15%→0%). The other 7 weeks show a mixed, roughly-neutral effect from the smoothing (some improved, some moved slightly further from 0%, none dramatically) — an accepted tradeoff, not a further problem to chase. Actual-vs-standard across the whole 8 weeks now sits in single-digit percentages throughout.

**Pete's own framing:** this also finishes what was conceptualized live in the 8/4 and 8/5 F&B sessions but never completed — the standard now matches the design intent from those meetings, not just patches the ticket.

## Open items

- [x] Reply sent on ticket UNIFOCUS-261909, 9/4/26 — see Correspondence above.
- [ ] Log ~4 hours to Clockify for this ticket.
- [ ] Breakfast/Lunch base-jump fix (same "+2 at 180 → +1 at volume=1" pattern) deferred to November visit — see `2026-08-31_bron-casey-punch-list-review-call.md`.
