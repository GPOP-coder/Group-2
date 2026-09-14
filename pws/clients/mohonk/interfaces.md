<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk Mountain House — Unifocus Interface Reference

**Last updated:** 2026-07-01
**Owner:** Pete Castellano (PWS)
**Origin:** Bron Walis (Mohonk Director of IT) built the original interface/timing map (6/23/26) and requested a review call to fill gaps and resolve open issues. Call held 7/1/26 (see [call notes](2026-07-01_unifocus-interface-flow-call.md)); this document reflects the state after that call.

Living document. Add detail as interfaces are confirmed, tested, or changed.

---

## Interface Overview

| Interface | Priority | Direction | Timing | Status (as of 7/1/26) |
|---|---|---|---|---|
| Rooms KBI | High | HMS → Datavision → Unifocus | Datavision CSV daily 8AM; Unifocus processes Mondays | ✅ Fixed — moved to 10:00 AM ET |
| F&B Covers | High | F&B → Accounting → Datavision → Unifocus | File delivery 8AM; standard hours regenerated 6AM/9AM/2PM/10PM | 🟡 Closed by Unifocus 8/10/26 (import-timing adjustment, unconfirmed) — [UNIFOCUS-252999](https://ufjira.atlassian.net/browse/UNIFOCUS-252999) (Critical), validate before trusting; see [kb.md](kb.md#-standard-hours-not-generating--thursday-through-sunday-recurring) |
| Banquet | High | Manual entry into Unifocus | Weekly, varies; 6–12 events/week | 🔴 Open — [RMSOPS-14129](https://ufjira.atlassian.net/browse/RMSOPS-14129); root cause found, deletion requested from Monali |
| Spa | Low | Book4time → Datavision → Unifocus | Daily 8AM file; processing TBD | 🔴 Open — escalated to UF engineering |
| ADP Punch Data | High | ADP → Unifocus | Daily ~7:00 AM CT | ✅ Stable, confirmed |
| ADP Employee Data | High | ADP (SFTP) → Unifocus | Daily ~7:00 AM CT | ✅ Stable, confirmed |
| ADP Approved Time Off | Medium | ADP → Unifocus | Daily ~2:40 PM CT | ✅ Stable, confirmed |
| Beverage Job Standards | — | N/A (standards config, not a data interface) | — | 🔴 Open — new issue, ticket pending (Casey) |

---

## Rooms KBI (EST Room KBI) — High Priority

**Flow:** HMS → Datavision (daily 6AM) → Datavision generates CSV (daily 8AM) → SCP to Unifocus (daily 8:05AM) → Unifocus processes CSV (Mondays)

**Scope:** Datavision holds 21 days prior (actuals) + 21 days future (forecast). Unifocus only pulls 7 days prior + 7 days future — a narrower window than what's available, which increases margin of error.

**Data:** Occupied Rooms, Guests, Arrivals, Departures, Children

**Original issue (per Bron, 6/23/26):** Managers checking the room forecast Monday morning saw all zeros — the file wasn't processing until sometime after 1PM Eastern, despite the flow chart showing a 10AM target. Bron's question: why not process at 9AM ET, and why only import 7 days instead of the full 21 available?

**Resolution (7/1/26 call):** Task timing updated to run at **10:00 AM ET on Mondays**, giving managers visibility earlier in the day.

**Still open:** Why only 7 of the available 21 days are pulled — not addressed in the 7/1 call notes; worth asking Monali directly if it matters for forecast accuracy.

**Notes:** All times in the source document are Eastern.

---

## F&B Covers — High Priority

**Flow:** F&B records covers into a spreadsheet (daily, multiple entries) → Accounting transposes to .xlsx (Mon–Fri) → Accounting uploads to Datavision (Mon–Fri) → Datavision generates CSV (daily 8AM, file: `UnifocusExportFB`) → SCP to Unifocus (daily 8:05AM) → Unifocus processes and regenerates standard hours (originally 6AM/2PM/10PM daily)

**Scope:** Accounting steps cover the previous 1–3 days; Datavision CSV covers 21 days prior (actuals only). Covers data only (not full financials) flows to Unifocus.

**Why this matters:** These covers drive standard hours in F&B locations and are considered more accurate than the forecast calculated off the Room KBI alone.

**Original issue:** If Friday–Sunday cover numbers aren't entered before 8AM Tuesday, no standard hours generate on the Tuesday afternoon/Wednesday labor reports — late entries require manual regeneration.

**Open question raised by Bron:** Should meal cover actuals instead be calculated off room occupancy? Would be more timing-reliable but a higher margin of error on the numbers themselves.

**Resolution (7/1/26 call):** Monali added an additional standard-hours generation run at **~9:00 AM ET**, on top of the existing 6AM/2PM/10PM runs, to better align with the 8AM file delivery and reduce the timing gap.

**File names (Datavision side):** "Dining Share - Food and Bev Log - F&B Log xxx - Px - weekly", "Night Share - 123files - FY26276 - DV Day Guest Tracking"

---

## Banquet — High Priority 🔴

**Jira ticket:** [RMSOPS-14129](https://ufjira.atlassian.net/browse/RMSOPS-14129) — "Mohonk - Investigate Banquet Actuals Being Overwritten After Initial Entry" (RMS Operations project — note: different Jira project than the UNIFOCUS- tickets used elsewhere, e.g. the Founders outlet bug)

**Flow:** F&B manually enters forecast/actuals into Unifocus (weekly, timing varies) → Unifocus processes the manually entered KBI

**Scope:** 7 days prior (actuals) + 7 days future (forecast); **38 separate KBIs**. Roughly 6–12 events/week impact Unifocus.

**Context:** This interface was previously automated via Delphi.fdc, but that was disabled when Mohonk switched to Infor SCS as their event system. The Infor SCS → Datavision automation is expected to be set up within the next month (per Bron's 6/23 notes), at which point automation could resume. Until then, James (Mohonk) manually adds KBI mappings a couple times a week.

**🔴 Active issue — banquet actuals being overwritten:**
- James reported entered numbers disappearing (example: banquet actuals entered 6/19, gone by 6/23)
- Bron sent a second example ahead of the 7/1 call: actuals entered 6/28, many (not all) overwritten by 7/1 — screenshots attached to his email, attached to RMSOPS-14129
- **Root cause identified on the 7/1 call:** the old Delphi.fdc-era mappings are still active and still triggering automated imports, which overwrite the manual entries with zeros
- **Fix path decided (per Pete's RMSOPS-14129 comment):** Deleting the BQT mapping is the only way to stop it from overwriting manually-entered forecast/actual values — a config change, not a code fix
- **Action — Monali Desai (Unifocus):** Export the current mapping + forecast/actuals data for backup, then delete the BQT mapping — a few keystrokes on her end, not a PWS deliverable
- **Action — Pete Castellano:** Requested the export + deletion via Jira comment; **will restore the mapping once Mohonk resumes sending a BQT file** (i.e., once the Infor SCS → Datavision automation referenced above goes live)

---

## Spa — Low Priority 🔴

**Flow:** Book4time → Datavision (daily 6AM) → Datavision generates CSV (daily 8AM, file: `UnifocusExportSpa`) → SCP to Unifocus (daily 8:05AM) → Unifocus processes CSV (timing TBD)

**Scope:** Datavision holds 21 days prior (actuals) + 21 days future (forecast); Unifocus processing scope would be 7 days prior + 7 days future once working.

**Data:** Day Guest, Overnight, Employee — used to forecast labor at Spa reception.

**Original issue (per Bron's doc, as of 7/1):** Not currently being processed at all — flagged for Monali to follow up.

**Update from 7/1/26 call:** The file is being received by Unifocus but is **not being properly processed**, resulting in zero values downstream. Monali escalated to the Unifocus engineering team for investigation. **Still open — no resolution timeline yet.**

---

## ADP Punch Data — High Priority ✅

**Flow:** ADP generates file and emails to Unifocus daily; Unifocus processes on receipt.
**Timing:** Bron's doc lists 7:05AM (timezone unspecified, likely ET); 7/1 call confirmed processing at **~7:00 AM CT** daily.
**Scope:** Hourly staff punches — Employee #, punch data, shift date, Regular/OT hours.
**Delivery:** Email from `eet_application@adp.com` to `pmsfiles@unifocus.com` and `bwalis@mohonk.com`, subject "Mohonk Hours". File example: `1777633500023_818269722.xls`.
**Why it matters:** Without this, there are no actuals in Unifocus at all.
**Status:** Stable since setup/testing; reconfirmed stable on the 7/1 call.

---

## ADP Employee Data — High Priority ✅

**Flow:** SFTP interface delivers to Unifocus daily; Unifocus processes on receipt.
**Timing:** Bron's doc lists 7AM (likely ET); 7/1 call confirmed **~7:00 AM CT** daily.
**Scope:** All active staff + 90 days of terminated staff — full staff and salary data.
**File:** `Unifocus_Employee_Export` — lives under Bron's ADP account.
**Function:** Adds new staff, updates existing staff, deactivates terminated staff, and updates pay rates in Unifocus.
**Status:** Stable since setup/testing; reconfirmed stable on the 7/1 call.

---

## ADP Approved Time Off — Medium Priority ✅

**Flow:** ADP generates file and emails to Unifocus daily; Unifocus processes on receipt.
**Timing:** Bron's doc lists 3:28PM (likely ET); 7/1 call confirmed **~2:40 PM CT** daily (roughly consistent given the ET/CT offset).
**Scope:** All hourly staff with active time-off requests — approved time off + managers.
**Delivery:** Email from `eet_application@adp.com` to `pmsfiles@unifocus.com` and `bwalis@mohonk.com`, subject "GTOR Summary - Excel Export". File example: `1782156480023_705494139.xls`.
**Function:** ADP is system of record for time-off requests; once approved in ADP, it flows to Unifocus so schedules are built around approved days off.
**Status:** Stable since setup/testing; reconfirmed stable on the 7/1 call.

---

## Beverage Job Standards — New Issue (7/1/26) 🔴

Not a data interface — a standards/configuration issue surfaced during the same call.

**Issue:** Some beverage roles are not generating standard hours despite the standards appearing correctly configured.
**Assessment:** Likely a system-level issue, not a configuration error (pattern similar to the Founders outlet shift-generation bug — see [kb.md Active Issues](kb.md)).
**Action — Casey Dow:** Submit a Unifocus support ticket; Susanna Briggs will monitor alongside Mohonk.
**Status:** 🔴 Open — ticket not yet confirmed submitted.

---

## Source Log

| Date | Source | Key Info Added |
|---|---|---|
| 2026-06-23 | Bron Walis interface flow document (PDF/CSV) | Original interface map: 7 interfaces, timing, scope, data, file names, known issues |
| 2026-07-01 | Susanna Briggs recap email (post-call) | Rooms KBI timing fix (10AM ET); F&B Covers 9AM run added; Banquet overwrite root cause + action items; Spa escalated to engineering; ADP interfaces reconfirmed stable; new Beverage Job Standards issue |
| 2026-07-01 | Bron Walis email (pre-call) | Second banquet overwrite example (6/28 actuals) |
| 2026-07-02 | RMSOPS-14129 Jira ticket + Pete's comment | Confirmed fix path: Monali exports mapping/data backup then deletes the BQT mapping (not a Pete deliverable); Pete will restore mapping once Mohonk resumes sending a BQT file |
| 2026-07-20 | Call with Susanna Briggs + UNIFOCUS-252999 (Critical) | F&B Covers 9AM fix not holding — standard hours still not generating Thu–Sun most weeks; covers/actuals confirmed importing correctly, gap is in generation step; escalated to engineering post-call; root cause unconfirmed |
| 2026-08-10 | Heather Close (Unifocus support) closed UNIFOCUS-252999 | Integration team "adjustment to import timing" — separate from Bron's 8/6/26 Tuesday 1AM fix; unconfirmed; 72hr reopen window expires ~2:51 PM CDT 8/13/26 |

---

## Related Files

- [Mohonk Client KB](kb.md)
- [Call Notes — Unifocus Interface Flow, 7/1/26](2026-07-01_unifocus-interface-flow-call.md)
- [Call Notes — Standard Hours Thu–Sun Investigation, 7/20/26](2026-07-20_standard-hours-thu-sun-call.md)
