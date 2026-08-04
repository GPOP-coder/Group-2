<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Pete's Unifocus Admin Training Curriculum

**Status:** Living document — first assembled 8/2/26, night before the Mohonk system admin training (8/3/26). Blends Ralph Varble's kickoff-call framing with Pete's own teaching material from delivering the HM Alpha corporate admin training (Devon Peters / Nicole Mendez, Nashville, 7/13–16/26) and the Union Station Nashville / InterContinental New Orleans manager classes. This is Pete's own IP, not client-specific — update it after every delivery rather than rebuilding from scratch each time.

**Two-tier training model, confirmed cross-client (8/4/26):** Pete's training methodology runs two distinct tiers, named differently by client but structurally the same:
- **Admin/config tier** (this document) — deep, config-level, aimed at the property's designated system champion/admin. Standards audits, KBI mapping, Labor Structure. HM Alpha calls this the "admin day"; Mohonk calls it "Admin Training" (8/3/26 delivery — see [2026-08-03_admin-training-session1-summary.md](../clients/mohonk/2026-08-03_admin-training-session1-summary.md)).
- **Operational/usage tier** — day-to-day system use for department managers/supervisors: navigation, Employee Maintenance basics, running reports, the weekly scheduling rhythm. Now its own document: [09-basic-manager-training-curriculum.md](09-basic-manager-training-curriculum.md), sourced from Pete's existing facilitator outline and first field-tested against the 8/4/26 Mohonk delivery. HM Alpha calls this tier "manager days" (New Orleans/Nashville format: 1 admin day + 2 manager days, 13 managers — see `pws/clients/hmalpha/intercontinental-new-orleans/2026-06-29_standards-review-transcript.md`); Mohonk calls it "Basic Training" (8/4/26 delivery — see [2026-08-04_basic-training-security-callcenter.md](../clients/mohonk/2026-08-04_basic-training-security-callcenter.md)). Same tier, different client-facing label — tracked as one reusable curriculum, not per-client silos.

**Framework:** Organized against the Unifocus P&S Administrator Handbook's Table of Contents (see `reference_unifocus_handbook.md` in memory for the full 172-page TOC) — same structural approach Pete used for the corporate admin training. Sections below are the ⭐ high-priority handbook sections, each carrying Pete's own condensed teaching content (mental models, gotchas, real examples) rather than a page-by-page re-teach — attendees with the handbook PDF already have the reference; Pete's value is the "go deeper live" layer on top of it.

**Standard format:** This curriculum's default target is **two 4-hour sessions** (8 hours total) — that's the reusable template pacing for future deliveries. Draft split:

| Session | Content |
|---|---|
| **1 (4 hrs)** | §0 Opening framing (10 min) → §1 Core vocabulary & mental models (~60 min) → §3 Modifying Existing Standards audit method (~60 min) → §4-equivalent client application, worked audit-method example(s) live (~2 hrs) |
| **2 (4 hrs)** | Remaining client-specific standards work → §2 TOC modules pulled in as specific standards under review require them (Labor Standards and Labor Structure most likely) → buffer for whatever surfaces live |

**Cut first if running long:** Employee Maintenance detail, Work Rules detail beyond the state-floor caveat — neither is core to a *modify-existing-standards* session unless a specific standard is blocked by one of them.

---

### ⚠️ Mohonk 8/3/26 only — compressed to two 3-hour sessions

Mohonk's actual onsite window is tighter than the standard template above (6 hours, not 8). This is a one-off compression for this delivery, not a change to the standard format:

| Session | Content |
|---|---|
| **1 (3 hrs)** | §0 (10 min) → §1 (~45 min, still the leverage — don't cut this even under time pressure) → §3 (~45 min) → start §4 Mohonk application, lead with UNIFOCUS-252999 as the worked example (~80 min, likely runs into Session 2) |
| **2 (3 hrs)** | Finish §4 Mohonk items not reached (F&B/James, Recreation/Housekeeping/Spa if confirmed in scope) → §2 TOC modules only as specific standards require them → buffer |

---

## 0. Opening Framing — Why This Matters (from Ralph's 7/31/26 kickoff call)

Open every admin training with this, not the software. Sets the stakes before the mechanics.

- **The treadmill analogy:** buying/installing Unifocus doesn't help by itself — someone has to actually interact with it, or it becomes "a laundry rack" (unused, gathering clutter). The system only works if it's worked.
- **The seriousness analogy:** you wouldn't let an untrained front-desk hire "wing it" on their first split-folio guest in Opera, or a new server work without POS training. Unifocus deserves the same seriousness — it's not a side tool, it's the system the labor operation runs on.
- **The "champion" ask:** every property needs someone designated as the go-to admin/champion — and needs to re-designate promptly if that person leaves. Losing the champion without a replacement is the direct cause of "a treadmill with laundry on it."
- **Why train admins deeply now, not later:** external consultants are temporary — there's a support window, then the property is on its own. The property's own admin knowing the answers is faster than routing every question back to Unifocus.

---

## 1. Core Vocabulary & Mental Models (reusable in any admin session)

The conceptual backbone — teach these before any hands-on screen work, they make everything downstream click.

- **Shift** = the defined worked-hours window (a fixed-size bucket — start time, end time).
- **Schedule** = a shift once a person is actually attached to it (this is what triggers work-rule application, e.g. a lunch rule only fires once a schedule exists).
- **Standard** = the KBI-driven (or fixed) formula that decides how many hours of a given shift type get created for a given day.
- **Forecast** = volumes only. **Projected** = hours, standard-driven. **Schedule** = what was actually built/published. **Budget** = a wholly separate, manually-loaded data set.

### The "Pitcher and Glasses" model — how standards fill shifts
Think of total standard hours for a day as a pitcher of water, and each defined shift length as a glass of fixed size. The system fills one glass completely before starting the next — it does **not** spread hours evenly across all available shift slots. If the underlying shift buckets are inconsistent (e.g., mixing 6-hour and 6.5-hour definitions under one shift record), the pour lands in an unintended combination.

### Rounding threshold
Defaults to 20% of the job's minimum shift length (typically ~0.8 hours on a 4-hour minimum) before the system creates one more shift rather than stopping. Configurable per job. Matters most on productivity/volume-driven standards where hours accumulate in small increments.

### Minutes-per-unit standards — the two-pass mechanic (a frequent "is this broken?" question)
A minutes-per-unit standard calculates total minutes needed in one pass, then pours that total into shift-length "cups" in a second, separate pass — it does **not** recombine a leftover partial shift back into the pool. Practical consequence: **expect at least one short shift out of the box** on any minutes-per-unit standard, and the system tends to hand out short shifts first. This is expected behavior, not a misconfiguration. **First troubleshooting step on any productivity-based standard: look for the short shifts and evaluate whether to expand them** — don't assume something's broken.

### The negative-hours trick
Enter a negative number directly into a standard line to net out labor already accounted for elsewhere (e.g., turndown attendants doing partial room-cleaning work already counted under Room Attendant). Not visibly expressed anywhere else in the system — pure internal netting. Alternative: have the employee clock into the correct secondary job code instead. Either works; **the important thing is picking one method per property and staying consistent.**

### Actual vs. Standard is the meaningful comparison — not vs. Schedule or Projected
Projected-vs-schedule is secondary/interesting only. Actual-vs-standard is what validates whether the operation is running to plan. Corollary: **standards work forwards and backwards** — forward, they generate projected hours/shifts for planning; backward, actual-vs-standard is how you decide whether a manager's recurring manual exception should be formalized into the standard itself ("if a manager keeps adding the same kind of exception, that should be your plan").

### Banquet standards are inherently an estimate, not a precise calculation
The system isn't reading BEOs — it only sees broad daily totals, not event-type detail or event count. Consequence: don't over-scrutinize a single banquet day's variance. The goal is landing on budget over time and being able to **explain variance** at the weekly labor meeting using knowledge of how the standard was built — not achieving daily precision. Separately: standard hours for banquet culinary/stewarding/setup all land on the event date even though the real labor is spent over the days leading up to it — evaluate those roles over the whole week, not day-by-day.

---

## 2. TOC-Mapped Teaching Modules

### KBIs (Handbook pp. 18–26) ⭐
Foundation for everything downstream. Teach the independent/dependent framing: base KBIs (e.g., Market Groups/Segments = Rooms KBIs) are the independent variables; generated KBIs (e.g., Revenue Centers) are dependent, derived from those and then editable. Calculated KBIs referencing an empty input KBI silently produce zero output — a frequent root cause of "why is this showing zero" tickets (see Rosewood Baha Mar case study below).

### Labor Structure (Handbook pp. 39–48) ⭐
- Structure nests like folders (property → division → department → job), but **the real functionality lives at the job level** — everything else (KBIs, standards, hours, reporting) attaches there.
- **Moving things is risky** — dragging a job/department/division can break things or drag unintended dependencies along.
- **Job naming discipline matters beyond cosmetics:** name every outlet-specific job with a short property/outlet identifier (e.g., "BQT Server" not just "Server") — floating employees and any external reporting depend on job *names* being unique and stable, since there's often no separate job-code join key.
- **Jobs and KBIs cannot be deleted once used** — only deactivated (name prefix, remove mappings/formula, type → Input) or moved to a "Do Not Use" bucket. Mis-created ones become a real support-ticket burden — worth getting naming right before first use, not after.

### Labor Standards (Handbook pp. 49–58) ⭐ — most complex section
- **Settings cascade down the hierarchy:** set boilerplate once at division level (min/max shift, KBI-related flag); only exceptions need managing below that.
- **Shift naming convention:** `[Shift Name] [Start]-[End, 4-digit military time] (worked hours in parentheses)`. Once inside the Labor Standards grid, the shift's actual start/end time isn't visible — the parenthetical is the only way to sanity-check hours without flipping screens. Follow this every time; it's what catches the exact error class below.
- **The shift record must match what its own name claims — apply this doc's Module 3 (Modifying Existing Standards) whenever it doesn't.**
- **Work Rules change effective shift length**, not the shift itself (8-hour shift + 30-min unpaid lunch = 8.5-hour *schedule*, standard is still 8 hours). Watch for "at X hours" vs. "over X hours" break-trigger settings — easy to get backwards with real consequences.

### Planning (Handbook pp. 60–76) ⭐
Weekly workflow: forecast → generate revenue centers → generate projected hours → generate/publish schedule. Teach it as a forward pipeline, then immediately pair it with the backward validation loop (actual vs. standard) from Module 1 — admins should think of planning as a loop, not a one-way process.

### Work Rules (Handbook pp. 78–83)
State law is the floor, not the answer — a property's own policy can be stricter than the state minimum, and "no state requirement" doesn't mean "no rule needed." Name every work rule to describe what it does in the title itself; the system doesn't surface this clearly elsewhere.

### Employee Maintenance (Handbook pp. 85–99) ⭐
Lower priority for a *modify-existing-standards* session specifically — cover only if data-quality issues are actively blocking a standard from calculating correctly (e.g., missing job effective dates).

---

## 3. Modifying Existing Standards — The Audit Method

**This is the module to lead with whenever the engagement is "fix what's here," not "build from scratch"** — distinct from a green-field implementation and worth naming explicitly as its own skill.

1. **Read the shift record before touching the standard.** Does its defined length match what its own name/parenthetical claims? (Real example: a shift named for a 6.5-hour bucket but carrying 12 hours of standard — the system poured it as one 6.5-hour shift + one 5.5-hour leftover, not the two 6.5-hour shifts the name implied.)
2. **On any productivity/minutes-per-unit standard, look for the short shift first.** It's the expected artifact of the two-pass mechanic (Module 1), not proof of a bug — start troubleshooting there before assuming misconfiguration.
3. **Check the rounding threshold** is behaving as expected given the shift's minimum length.
4. **Validate against Actual vs. Standard trend over multiple weeks**, not a single day — a standard being off on one day doesn't mean it's broken; sustained variance does.
5. **If a manager is manually adding the same exception shift repeatedly, that's the signal to formalize it into the standard** rather than leaving it as a recurring manual override.
6. **Standard changes don't retroactively fix anything already generated** — editing a standard doesn't touch already-generated projected hours/schedules. The system regenerates automatically ~4x/day; a manual "Regenerate Projected Hours" tests changes immediately but risks clearing the existing schedule for that job — use cautiously, especially on a live property.

---

## 4. Mohonk-Specific Application — 8/3/26 Admin Training

Per Susanna's framing (7/24/26 planning call), Mohonk's admin day is explicitly **standards development on their current configuration — not a generic/basics session.** Use Module 3 as the operating method for the day; use Modules 1–2 only as needed when a specific standard's behavior needs explaining.

Known live material to work through:
- **UNIFOCUS-252999 (Thu–Sun standard hours gap)** — root cause already confirmed by Susanna/Monali: the `revenueimport` stored procedure runs 8:00 AM CT, triggered by Mohonk's KBI files which arrive ~7:00 AM; import timing can't move (driven by when Mohonk's files land), so the only fix is moving the standard-hours generation time later. This is a strong live case study for Module 3 — a real audit trail from symptom to root cause to fix, worth walking the room through as a worked example rather than just stating the fix.
- **F&B standards** — James's prioritization/scheduling work is already improving; frame this as reinforcing coding and labor-structure discipline (Module 2, Labor Structure) to sustain the trend, not fixing something broken.
- **Recreation and Housekeeping (turndown) standards** — Lou/Alex are doing prep work before meeting Pete; confirm whether this lands in the Monday/Tuesday admin session or a separate block before assuming it's on the agenda.
- **Spa setup/KBI integration** — newly added scope (7/24/26); ties to the open Spa Interface Not Processing ticket (`pws/clients/mohonk/kb.md`) — worth clarifying whether this session can move that ticket forward or is standards-only, independent of the interface bug.

---

## Update Log

- **8/2/26:** First assembled, night before Mohonk admin training. Sourced from HM Alpha corporate admin training (agenda-notes.md) + Ralph's 7/31/26 kickoff call notes. Not yet delivered/tested as a standalone curriculum — treat as v1.
- **8/3/26, AM session delivered (full transcript now reviewed):** First live field test, Mohonk (Bron Walis, Casey Dow, likely Lou Petruzzelli, brief visit from an unconfirmed contact "Paul"). Full notes: `pws/clients/mohonk/2026-08-03_admin-training-session1-summary.md`. **Correction:** both curriculum blocks ran same-day (AM 9–12, PM 1–4), not on separate days as first assumed.
  - **§0 opening:** delivered as personal-credibility/history framing (Pete's own path into Unifocus, prior casino-property experience) rather than reciting the treadmill/champion analogies verbatim — functionally served the same purpose (establishing stakes and tailoring to the room by directly asking "what do you want out of today"). Decision: keep the analogies as backing rationale Pete can draw on, not a script to recite line-for-line — the live version worked.
  - **§1 core vocabulary — confirmed transfers well, used almost verbatim with a real example.** The Shift/Schedule/Standard distinction and the Pitcher-and-Glasses model were taught live using an actual Mohonk standard (Bartender Main / Regis 11am shift) — matched the curriculum's phrasing closely enough to confirm the mental models are sound teaching tools, not just abstractions. KBI independent/dependent framing and "never map to a Calculated KBI" also landed as written.
  - **§3 (Modifying Existing Standards audit method) — happened, but organically rather than as a named module.** Pete's live Carriage Lounge Bartender / Banquet Bartender labor-structure audit (finding a stale duplicate assignment, a misplaced TK code) is a real, unscripted demonstration of exactly the audit method §3 describes — confirms the module reflects Pete's actual practice. Worth considering whether to make the "audit method" explicit/named in the room next time (a labeled checklist) rather than leaving it implicit in how Pete works through a screen.
  - **New content to fold back into the curriculum:** (1) the "fake file" technique for exposing all potential KBIs for mapping in one pass — belongs in §2 KBIs. (2) Beverage-as-standalone-department and Spa-as-revenue-center as generalizable department/revenue-center structuring patterns, not Mohonk-specific — candidate for a new §2 subsection. (3) The employee-import governance detail (Employee Reconcile / Hours Transfer notification emails, ADP-job-without-Unifocus-job gap, required-field gotchas like the Gender field) is dense enough it may deserve its own short module rather than living only in §2 Labor Structure.
  - **What needed more depth than the curriculum currently gives it:** seasonality/date-range guidance (§ not yet written as its own module) — Casey's instinct was to manually edit standards each season, and the live correction (separate assignments with date ranges, or let volume/KPI zero-out drive it, for budgeter compatibility) took real explanation. Consider adding a short seasonality module.

---

*© Peter A. Castellano. All rights reserved.*
