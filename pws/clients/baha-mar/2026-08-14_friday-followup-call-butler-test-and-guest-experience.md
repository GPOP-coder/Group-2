<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# RWBHM — "Changes to Rooms Labour" Follow-Up Call — August 14, 2026

**Time:** 8:00–9:00 AM
**Attendees:** Emre Kenan (DOF), Sherrell Sullivan (Director of Rooms — again transcript-garbled, referred to as "Cheryl"/mixed pronouns at points), Pete Castellano
**Source:** Meeting transcript, pasted by Pete 8/14/26
**Context:** Direct follow-through on [2026-08-14_new-butler-standard-built.md](2026-08-14_new-butler-standard-built.md) (built overnight 8/13→8/14) and the start of the Guest Experience Associate build referenced in [2026-08-11_sherrell-guest-relations-fte-proposal.md](2026-08-11_sherrell-guest-relations-fte-proposal.md).

---

## Part 1 — Butler Standard: Tested, Works, Needs Minor Tuning

Emre pulled the "Day by Day Job Detail" Budgeter report against the Butler + Butler 2 jobs using the imported 2026 volumes (2027 volumes not built yet — Emre using "same as 26" as placeholder for now).

**Result: 93,750 total annual hours** ÷ 1,980 (annual FTE hours, = 165/month) = **47.35 average FTE**. Target was **44**. Close, running slightly generous — not alarming, described by Emre as "not off."

**Design confirmed as correct implementation of the 8/12–8/14 discussion:**
- 1 butler per 11.2 rooms (224 rooms ÷ 20 shifts at full house)
- Floor: 4 shifts, handles first 45 rooms
- Ceiling: 20 shifts at 214+ rooms
- Overnight: 1 → 3 shifts (confirmed — floor matches the 8/12 email, ceiling of 3 confirmed correct)
- At full house: 20 AM + 1 Lobby + 20 PM + 3 overnight = **44** (matches target exactly at 100% occupancy)
- Because daily volumes vary rather than sitting at 100% every day, the realized annual average (47.35) comes in above the theoretical max-occupancy figure (44) — the model has "flex," not an error. If every day were full occupancy, the math would run to ~61 (44 × 7 ÷ 5 relationship discussed live), so real-world variability is working in the intended direction.

**Rounding mechanic reconfirmed:** shift minimum is 7.5 hrs and the standard rounds up at 0.2 increments, not 0.5 — so it rounds up 4 times out of 5 and down only 1 time out of 5, which mechanically inflates hours slightly versus a perfectly smooth ratio. This is expected behavior, not a bug, and is part of why the realized average (47.35) sits above the pure-ratio target (44).

### Open tuning question — needs a department-manager check
Emre's real question: **can the first 4 shifts (floor) actually absorb up to 45 rooms of work**, or is the true per-person capacity different (meaning the ramp should start increasing before/after 45 rooms)? Sherrell doesn't have the answer — the department manager who would know is currently on vacation. **Action: Pete/Emre wait on that manager's return before making this tuning adjustment.** Current design is intentionally on the generous/blue side deliberately, since this is a new, untested service model — Emre explicitly does not want to be aggressive on the low side ("don't want to shoot ourselves in the foot").

Confirmed reference point: butlers currently handle roughly **10–12 rooms each** in practice; the new standard's 11.2 ratio sits right in the middle of that range.

**Sign-off status:** Emre is proceeding with this as his working draft — "at least it's something for me to start working on Monday" (see deadline note below). Not locked/final, but usable now.

---

## 🔴 Critical process rule — Master vs. Budget Standards 2027

This governs **all** future Baha Mar labor-standard work, not just butlers — captured precisely because getting it wrong could silently corrupt the live 2026 structure:

- **"Budget Standards 2027" is a separate Standard Set** (not the same as the "Emre's Test" Data Set that holds imported volumes/hours/dollars) — Data Set and Standard Set are two different objects; the Data Set holds the volumes, the Standard Set (switched via "Standard Set Master" dropdown) determines which labor rules apply to them.
- **Pete has only touched Budget Standards 2027** — Master (live 2026) is untouched.
- **Emre will eventually take the entire Budget Standards 2027 set and overwrite Master with it wholesale** — not a merge, a full replace. Timing: **not today, possibly not until October.**
- **Until that happens: any labor standard change that needs to take effect immediately must be made in BOTH Master and Budget Standards 2027 separately** — Budget Standards 2027 changes alone do NOT affect live operations.
- **Constraint going forward: don't make any other/unrelated changes to Master** beyond what's already been changed, specifically because Emre intends to blow away whatever's in Master with Budget 2027's contents at cutover — any independent Master edits made in the meantime would just get overwritten and lost.
- If Unifocus throws an error while working ("Send Error Report") — click through once; if it recurs, copy the error text and file a support ticket with an explanation of what was being done.

**Deadline correction:** Emre needs a usable Butler standard to **start building his 2027 payroll budget Monday, August 17, 2026** (using 2027 volumes = same as 2026 for now). This is earlier/softer than the previously tracked "config due Wednesday, August 19" — Monday is when Emre actually starts using it; Wednesday may still be the harder final-lock date. Treat Monday 8/17 as the real go/no-go checkpoint.

---

## Part 2 — Guest Experience Associate: New Job Build (in progress, NOT finalized)

**Build location:** initially built inside unused-jobs space within the MASTER standard set (unused jobs stay invisible in reports/budgets regardless of which standard set they're in, giving a safe hidden workspace). **✅ Moved 8/14/26, same session — now lives in Budget Standards 2027**, `Unused Jobs\1. Rooms\* Guest Experience Associate`, same location tier as Butler/Butler 2. Confirmed via screenshot: same 5 shifts, same values, standard set dropdown now shows Budget Standards 2027.

**Job created:** renamed an existing unused job, **"PBX Operator,"** to **"\*Guest Experience Associate"** (asterisk prefix, for easy sorting/searching — a Pete convention, no functional meaning). Job code not yet assigned.

**✅ UPDATE — final built config confirmed via screenshot, same session.** What was live-discussed with unresolved numbers (below) resolved cleanly once actually built. This job carries **5 shift standards** total:

**Job-level settings:** Min/Max shift length 4–8 hrs; rounding threshold 0.00 below one, 0.2 above one (same rounding mechanic as Butler); Generate Long Shifts = Yes; Effective dates 1/1–12/31; no meal/non-meal break defined.

### PBX-type standards (driven by 01-RW Hotel Rooms — occupied rooms count)

| Shift (window / actual hours) | Volume Range (rooms) | Hours | People |
|---|---|---|---|
| 0700–1500 PBX (7:00 AM–2:30 PM) | 1–75 | 7.50 | 1 |
| | 76–167 | 15.00 | 2 |
| | 168–∞ | 22.50 | 3 |
| 1500–2300 PBX (3:00 PM–10:30 PM) | 1–45 | 7.50 | 1 |
| | 46–167 | 15.00 | 2 |
| | 168–∞ | 22.50 | 3 |
| 2300–0700 (11:00 PM–6:30 AM) | 1–∞ | 7.50 | 1 (flat, no scaling) |

### Pre-Planning standards (driven by 01-RW Hotel Arrivals — NOT occupied rooms)

| Shift (window / actual hours) | Volume Range (arrivals) | Hours | People |
|---|---|---|---|
| 0700–1500 Pre-Planning (7:00 AM–2:30 PM) | 1–∞ | 15.00 | **2 (flat, no scaling)** — differs from the live call's "floor of 1, scale up" framing; final build has this shift fixed at 2 regardless of arrival volume |
| 1300–2100 Pre-Planning (1:00 PM–8:30 PM) | 1–29 | 7.50 | 1 |
| | 30–64 | 15.00 | 2 |
| | 65–∞ | 22.50 | 3 |

**Sanity check against Sherrell's original 8/11 FTE proposal:** at max volume, total headcount = 3+3+1 (PBX) + 2+3 (Pre-Planning) = **12** — matches her 70%-occupancy anchor (12 FTE) from `2026-08-11_sherrell-guest-relations-fte-proposal.md` almost exactly, a good independent cross-check that the redesigned 5-shift structure landed in the right range even though it's shaped differently from her original 2-tier model.

**Status: this is the actual built configuration**, confirmed via screenshot same session — supersedes all the "unresolved" live-call numbers below (kept for history/context only).

### Operational note (not a config detail, but relevant context)
Confirmed: staff assigned to this job can rotate between PBX and Pre-planning tasks **on different days**, but **not within the same day**.

### Coverage philosophy stated by Sherrell
Heavier staffing during daytime hours, lighter overnight/late — consistent with the existing PBX shift structure.

---

## Personal aside (not for KB, context only)

Early small talk suggests Pete may meet Emre for lunch in Nassau around **Wednesday, September 23, 2026**, while docked during the Sep 20–26 Disney Cruise (personal trip, per CLAUDE.md) — Pete needs to be back on the ship by 5:30 PM that day. Casual, not confirmed as a plan — worth remembering if travel planning firms up.

---

## Action Items

| Item | Owner | Status |
|---|---|---|
| Confirm whether the first 4 Butler shifts can truly absorb 45 rooms of work (or need a different threshold) | Department manager (currently on vacation) → Emre/Pete | Waiting on manager's return |
| Start 2027 payroll budget using Budget Standards 2027 (butler standard as currently built) | Emre Kenan | Starting Monday 8/17/26 |
| Resolve PBX and Pre-Planning scaling numbers | Emre Kenan | ✅ Done — final 5-shift config built same session, see updated tables above |
| Move Guest Experience Associate build from Master's unused-jobs area into Budget Standards 2027 once finalized | Pete Castellano | ✅ Done 8/14/26 |
| Eventually copy Budget Standards 2027 wholesale over Master | Emre Kenan (with Pete) | Not today — possibly October |
| No unrelated changes to Master in the meantime | Pete Castellano | Ongoing constraint |

---

## Cross-reference

- Butler standard being tested: [2026-08-14_new-butler-standard-built.md](2026-08-14_new-butler-standard-built.md)
- Baseline it replaced: [2026-08-14_current-butler-standard-baseline.md](2026-08-14_current-butler-standard-baseline.md)
- Original Guest Relations FTE concept: [2026-08-11_sherrell-guest-relations-fte-proposal.md](2026-08-11_sherrell-guest-relations-fte-proposal.md)
- Deadline context: 2027 payroll budget build starts Monday 8/17/26 (Emre); prior Wednesday 8/19 date still tracked as the harder final-lock milestone.

---

*© Peter A. Castellano. All rights reserved.*
