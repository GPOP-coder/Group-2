<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — Weekly Call #1 Scorecard

**Date:** September 18, 2026 (morning call; recap email sent 2:09 PM)
**Host:** John Grech (Unifocus) — first of the post-implementation coaching/QA calls, same format as Westin La Paloma's weekly-call cycle. **Taylor Walton will lead the remaining calls** going forward.
**Score:** 96% — "outstanding" for week 1, one item identified for review.
**Attendees:** Mark Ziomek (GM), Sandra Academia (DOF), Valeria Ruvalcaba (HR), Carlos De La Cruz — cc Devon Peters, Nicole Mendez, Alain Derderian, Susanna Briggs, Pete, Taylor Walton.
**Sources:** John Grech's recap email (2:09 PM) + full Plaud transcript/AI summary ("Marriott Del Mar Unifocus Weekly Call #1").

**Note on the recipient line:** the email's To: field listed "Carlos (F)" twice with the same address (Carlos.DeLaCruz2@marriott.com) — likely just a mail-merge/autocomplete duplication, not a new address. His Unifocus login issue was still open as of the 9/9/26 manager training (ticket opened, unresolved) — this call doesn't confirm whether it's fixed; worth checking directly.

---

## Highlights (from John's short recap)

1. **Publish schedules for the week of September 19th — due tomorrow (9/19).**
2. **After any re-forecast, remember to manually run Project Hours afterward** — this is what actually updates the hours used for scheduling; re-forecasting alone doesn't propagate.

## Fuller detail (from the call transcript)

- **Rooms forecast / departure calculation:** Mark had revised the rooms forecast several times; John demonstrated that Departures is calculated from prior-night occupied rooms + current arrivals + current occupancy, and that **the KBI must be manually recalculated after any edit** — directly the same category of gap as WLP's "hit Generate wipes manual edits" caution, but here it's the opposite problem (edits made but never recalculated). **Action: Mark to recalculate the rooms forecast after any edit going forward.**
- **Forecast timing, confirmed process:** Rooms and banquet forecasts due by **Monday noon**. Banquet imports from CI and can be manually edited — same noon-Monday review window. Dining forecast auto-generates off 13 weeks of history, runs automatically **Tuesdays 1:00 PM Pacific** (task itself is UTC-timestamped internally).
- **Mark's concern, noted not resolved:** historical-average dining forecasts don't reflect the property's actual mix (occupancy, transient, group, wedding, sports-team business) well enough. John offered a regression-based alternative as a future option; for now the team will keep adjusting dining forecasts manually.
- **Rerunning forecasts without losing schedules:** John clarified the forecasting model can update allocated/projected hours **without** clearing already-built schedules — that's a separate "clear schedule" function, which does remove entered work. Useful distinction for Mark going forward.
- **Publish timing correction:** Pete flagged that schedules had been published prematurely this week; advised a republish the following morning and **established Wednesday as the standing publish day** going forward — consistent with the standard HMAlpha weekly cadence used at other properties (WLP, etc.).
- **Room service secondary job — resolved as obsolete.** Property confirmed room service isn't actually used at Marriott Del Mar; John is clearing the stale secondary job code through Paychex.
- **Reconciliation email routing settled:** employee reconciliation / transfer-hours emails go to **Susanna and Valeria**, not Mark or Al — cleaner ownership going forward.
- **Housekeeping productivity: within 1.1% of standard** — strong first-week number, consistent with (better than) the 6%-over/25%-under housekeeping figures Sandra had flagged during her 9/15/26 training session; worth a quick gut-check on why the read differs, but not flagged as a problem.
- **Reports/labor-effectiveness demo:** John walked Mark through favoriting reports, PDF/Excel export, the Labor Effectiveness Report (department filters, contract-labor breakdown, cost, OT, worked/standard/scheduled/projected comparison), Labor Productivity Report (actual-vs-standard, housekeeping example), and the Weekly Labor Summary (daily variance review, recommended for tracking causes like special projects or call-offs).
- **Scheduling completion:** strong across departments; **Engineering and Security still need a completion check.**
- **Scheduling timeline distribution (admin housekeeping, not a system finding):** Pete is to compare his edited scheduling-timeline doc against the version John has and redistribute the current copy to the group — Teams chat attachments were disabled, so this needs to go out another way (email, presumably).
- **DoubleTree Del Mar implementation prep — surfaced during this call:** John identified **Susanna as the finance director for [DoubleTree San Diego] Del Mar** and requested the property profile plus meeting signups from her to start organizing that implementation. Ties to the already-tracked DoubleTree San Diego Del Mar thread (reassigned to John Grech, config Oct 5 / training Oct 19 — see `kb.md` Open Items) — this is John beginning that prep work, not a new assignment change.

---

## Open Items

- [ ] **Mark to recalculate the rooms forecast after every edit** — standing practice now, not a one-time fix.
- [ ] **Confirm Carlos De La Cruz's Unifocus login is actually fixed** — not addressed on this call; still open per the 9/9/26 manager training ticket.
- [ ] **Engineering and Security schedule completion** — flagged as still needing a check, not confirmed complete.
- [x] Pete to reconcile and redistribute the scheduling timeline doc to the group — **sent 9/18/26, 10:54 AM.** Prompted real follow-up questions from Mark Ziomek and Devon Peters — see [Weekly Timeline Distribution & Devon Peters' Feedback](2026-09-18_weekly-timeline-distribution-and-devon-feedback.md).
- [ ] Susanna to provide the DoubleTree Del Mar property profile and meeting signups (requested by John, no deadline given beyond "by the end of the following week" per the transcript's action items).
- [ ] Confirm room service secondary-job cleanup actually clears through Paychex (John's action, not yet confirmed done).

---

## Related Files

- [Marriott Del Mar — Property KB](kb.md)
- [Sandra Academia — Full System Admin Training, 9/15/26](2026-09-15_sandra-academia-system-admin-training.md)

---

*© Peter A. Castellano. All rights reserved.*
