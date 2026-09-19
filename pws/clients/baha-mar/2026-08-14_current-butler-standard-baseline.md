<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Current Butler Standard — Baseline Snapshot (for redesign reference)

**Captured:** 8/14/26, from Unifocus screenshot, while configuring under Standard Set **"Budget Standards 2027"**, job `1. Rooms\107 - Butlers\Butler`, Shift Related Standards tab.
**Purpose:** Literal "before" values for the standard being redesigned per [2026-08-12_emre-butler-base-manning-breakpoint.md](2026-08-12_emre-butler-base-manning-breakpoint.md). Confirms the qualitative description from the 8/12 call ("minimum standard...was three," max 9 shifts, overnight 1→2 breakpoint at 150 rooms) with exact figures.

---

## As-configured standard (4 shifts)

| Shift | Driver KBI | Volume Range | Hours | Shifts (÷7.5) |
|---|---|---|---|---|
| **0800–1600 (7.5)** | 01-RW Hotel **Occupancy** (%) | 1–25 | 22.50 | 3 |
| | | 26–50 | 30.00 | 4 |
| | | 51–∞ | 45.00 | 6 |
| **1000–1800 (7.5) Lobby Host** | 01-RW Hotel **Rooms** (count) | 1–∞ | 7.50 | 1 (flat — always on, regardless of occupancy) |
| **1500–2300 (7.5)** | 01-RW Hotel **Rooms** (count) | 1–25 | 22.50 | 3 |
| | | 26–50 | 30.00 | 4 |
| | | 51–∞ | 45.00 | 6 |
| **2300–0700 (7.5)** | 01-RW Hotel **Rooms** (count) | 20–150 | 7.50 | 1 |
| | | 151–∞ | 15.00 | 2 |

All: Non-Flowed distribution, Beginning distribution option, Daily (Hours).

---

## ⚠️ Driver KBI inconsistency to resolve during redesign

The **AM shift (0800–1600) is driven by Occupancy %**, while **Lobby Host, PM (1500–2300), and Overnight (2300–0700) are all driven by absolute Hotel Rooms count.** Emre's 8/12 breakpoint email and the 8/12 call discussion speak in **both** units interchangeably (percentages like 60%/75%, and absolute counts like 134 rooms) — worth deciding on one consistent driver KBI (or deliberately keeping the mix, if there's a reason) rather than carrying forward whichever unit happens to already exist per shift.

## ⚠️ Confirms Lobby Host was unconditional in the OLD standard

This baseline shows Lobby Host as a flat 7.5-hr shift at **any** occupancy (Volume Range "1–∞"). This matches what the 8/12 call assumed going in — but Emre's follow-up email says the **new** design should make Lobby Host conditional, activating only above 60% occupancy (134 rooms). So the call's "Lobby Host is fixed" framing was actually correct for the **current/old** standard — the change is intentional and new, not a misunderstanding. Worth being precise in the redesign that this is a deliberate change from current behavior, not a correction of a factual error.

## Confirms current overnight breakpoint

151-room breakpoint (1→2 shifts) matches what was already documented qualitatively. New design starts overnight at 1 shift (per Emre's 8/12 email, superseding the "minimum 2" floated live on the call) — so the **floor is unchanged from current (1 shift)**, but the step-up point(s) above the floor still need to be redefined as part of the mid-curve build.

---

## Cross-reference

- Redesign target: [2026-08-12_emre-butler-base-manning-breakpoint.md](2026-08-12_emre-butler-base-manning-breakpoint.md)
- Call context: [2026-08-12_rosewood-butler-standard-review-call.md](2026-08-12_rosewood-butler-standard-review-call.md)
- Config deadline: Wednesday, August 19, 2026

---

*© Peter A. Castellano. All rights reserved.*
