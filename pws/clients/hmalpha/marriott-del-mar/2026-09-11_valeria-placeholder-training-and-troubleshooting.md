<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — Valeria Ruvalcaba: Placeholder Employees, Troubleshooting, and Training (9/11/26)

**Date:** Friday, September 11, 2026 (Pete's last day onsite before departing for the cruise/Nashville stretch)
**Source:** Plaud transcript, "09-11 Valeria Ruvalcaba - Placeholder Employees - Troubleshooting and Training"
**Participants:** Pete Castellano, Valeria Ruvalcaba (HR), plus an unnamed "Speaker 1" present throughout (likely IT/a second HR staffer helping with the login issue — not clearly identified in the transcript).
**Context:** This is the "Val session" from the Sandra/Val scheduling-conflict resolution logged earlier in kb.md — Val came in first (~11:30 AM after her prior call), this session covers her block; Sandra's own catch-up followed separately later that day.

---

## 1. Login Failure — A Different User, Escalated, Not Resolved Live

Opened mid-troubleshooting on a persistent login failure for a user who couldn't get in despite a new username/access code issued at 9 AM the day before. Pete recognized the symptom as matching a known issue at a different HMAlpha brand and **explicitly warned against creating a fresh user profile** — doing so risks colliding with the person's existing email address and Unifocus records, creating a worse mess than the original problem. His first instinct ("delete you") was also rejected for the same reason. Not resolved in this session — **the instruction was to reply to the existing internal support ticket confirming the error still persists**, since Unifocus support has apparently already proposed a fix that didn't work. No ticket number captured in the transcript.

## 2. Employee Visibility — Filter Issue, Not a Data Issue (Confirmed Twice)

Ramon Silva (Director of Housekeeping) emailed that his AM/PM laundry team wasn't showing up in Unifocus during his own Employee Maintenance review. Investigation with Val, live:

- **Rosa, Susana, and Mario** (laundry attendants) were not appearing in the scheduler at all. **Marty** was visible but miscoded as **Houseman** — a leftover from the previous HR director (before Val's June 2026 start); not corrected in this session, flagged for eventual cleanup.
- **Root cause: the scheduler's filter was set to "Housekeeping" only, which silently excludes Laundry as a separate department.** Fixed live by broadening the filter to all Rooms-related departments (Housekeeping, Front Desk, Laundry). Employees were never missing from Employee Maintenance — only invisible in the scheduler view.
- **Pete's standing troubleshooting mantra, repeated explicitly for Val to reuse:** when someone says "I can't see my employees," first check the filter, then check Employee Maintenance. Anyone active in Paychecks will be in Unifocus — the filter is nearly always the actual cause, not missing data. (Pete's own estimate, consistent with what he told the WLP class: roughly 40% of all user trouble traces back to filter confusion.)
- **Second confirmation of the same root cause, later in the session:** Ramon separately reported he "can't see my PM people." Same diagnosis — his filter was narrowed to Housekeeping, so PM/contract-labor staff (who skew toward being coded elsewhere) were invisible in the scheduler even though they existed correctly in Employee Maintenance.
- **Separate, non-Unifocus clarification:** Ramon's original email also asked about AM vs. PM laundry coding. Confirmed live: **Paychecks has no AM/PM distinction for laundry at all** — that's purely an internal property-side convention (Val: "at the end of the day, they only take forty percent" — an accounting allocation for chemical costs, unrelated to Unifocus or scheduling). Not a Unifocus problem to fix.

## 3. Contract Labor Placeholder Employees — Live-Built, One Model Made

Val built one full placeholder profile live with Pete coaching, to use as the template for the remaining 11 (12 total agreed with Mark Ziomek earlier in the week, mainly for Room Attendants — see Open Items below for the actual per-department headcount question, which was explicitly left unresolved and handed back to Val as her next step, not assumed at 12 each).

**Conventions established, live:**
- **Employee ID:** built from the job code, incrementing with a two-digit suffix once the group exceeds 10 (e.g., `L2655-01`, `-02`... `-11`), so the list sorts correctly. Goal: something that will never collide with a real ADP/Paychex-imported ID.
- **Display name:** first name = the job title ("Room Attendant 01"), last name = the staffing agency ("Allied," Del Mar's actual agency). Whatever convention is chosen, **consistency matters more than the specific choice** — other users will be scanning this list too.
- **Sort-to-bottom trick:** prefixing with "Z" (e.g., "Z Contract...") pushes placeholders to the bottom of any alphabetized list — the same convention already documented generally in the PWS methodology doc.
- **Job rank:** set to 1 (primary job) for every placeholder.
- **Hourly pay rate:** must be checked manually — **the system was observed defaulting to $1/hour**, same defect pattern Pete had already seen on this property's real secondary-job employees. Confirm the actual contracted rate before saving.
- **Half sub-only, half auto-schedule:** matches the placeholder-capacity technique already logged in [PWS Foundations Doc 3 § 5a](../../../foundations/03-implementation-analysis-methodology.md) — this session is the live build-out that produced that documented pattern for Del Mar specifically, with Mark's prior agreement on the 12-placeholder number.
- **Critical: uncheck "Include in Schedule Export" on the Scheduling tab, for every placeholder including the sub-only half.** Confirmed live as the same technique already logged at The Moran ([Foundations Doc 3 § 5b](../../../foundations/03-implementation-analysis-methodology.md)) — Pete's stated reason here matches exactly: an unknown/placeholder employee schedule can either get silently skipped or **crash the entire Paychex import**, depending on the receiving system's behavior.

**Val's own next step, not completed in this session:** go department by department and ask each manager for their actual peak-day headcount need, rather than assuming a flat 12 across the board — explicitly flagged as the follow-up exercise, distinct from the Room Attendant model built live.

## 4. Op Codes — Built Live, Three Examples

Setup path: **Setup → Labor → Op Codes**. An op code groups multiple departments into one reporting bucket, distinct from filtering by department directly (which only lets you view one department's totals normally, or several without adding them together).

- Built three live for Del Mar Housekeeping/Laundry: **Housekeeping**, **Laundry**, and a combined **Housekeeping + Laundry**.
- **Key mechanic Pete emphasized:** the **Weekly Labor Summary is the only report that actually totals multiple op codes together at the bottom.** Every other report lets a user select more than one op code, but reports them separately rather than summing — worth knowing before assuming a report is broken.
- Demonstrated live: ran Weekly Labor Summary with Housekeeping and Laundry both selected (not the combined one) — confirmed the report's final section totals both together correctly, matching the sum of the two individual department totals.
- **Access is not automatic** — op code visibility must be explicitly granted per user via **Administration → User Administration → Data Permissions**. Pete's guidance: give it to Mark (GM), the relevant department director (Ramon), and system admins — not broadly.
- Pete's aside, in-character: he has an open, years-old ticket asking Unifocus product to add bottom-line totals to *every* report that runs by op code, not just Weekly Labor Summary — "they're ignoring me... for ten years."

## 5. Schedule Groups — Built Path Shown, Strong Caution Against Overuse

Setup path: **Setup → Employee → Schedule Groups** (a different menu branch than Op Codes, which live under Labor).

- Del Mar currently has zero schedule groups — Pete used a different property's example to demonstrate, deliberately not building any live for Del Mar.
- **Pete's explicit recommendation: use these sparingly.** They're easy to create and hard to fully delete (every reference has to be individually cleared first), and they routinely get confused with the Division/Department/Job filter once people start combining both.
- **His actual diagnostic method, worth reusing verbatim with any manager who asks for a schedule group:** ask what specific problem they're trying to solve before building anything — most of the time the real need ("who's covering AM vs. PM," "do I have a bartender every shift") is already answered by the **Daily Schedule Report** (chronological, by department, one day) or the **Weekly Schedule Report** (same idea, a specific day of a 7-day set — not to be confused with the similarly-named "Weekly Employee Schedule," a different report). A **Daily Schedule Sign-In** variant exists too, adding a manual sign-in/out column for properties that double-verify clock-ins.
- Pete's told-to-Mark story, worth keeping as reusable framing: printing the entire property's schedule alphabetically and posting it in the break room would still get everyone to work on time — when a manager insists they need a schedule group to function, the real ask is almost always "I want my schedule to look a certain way for me," which is fine, but should be named honestly rather than defaulting to more system complexity.

## 6. Personal Context (kept here, not client-facing)

- **Valeria had a genuinely hard week:** her grandfather passed away the preceding Wednesday, she helped her mother with funeral planning Friday, and moved apartments herself on Saturday — "mentally and physically exhausted," on top of a full training week. She said taking notes and doing things hands-on helped her actually retain the material despite everything else going on.
- Planning the **Employee of the Month luncheon** (Hispanic Heritage Month theme this cycle; last month was an "Evening in Capri" Italian theme; Halloween planned for October, harvest theme for November) — needed to drive to El Cajon that same day to pick up the awards (a normally-20-minute drive that took over an hour the day before due to traffic).
- **Pete's own context:** a scheduled DoubleTree engagement for the following week was cancelled — his read is it was a personnel change on the property's side, not confirmed in detail. Net effect: he's unexpectedly home next week, his first full weekday at home in September. Confirmed he's now "100% on my own LLC," with no PTO structure — the cancellation is effectively his only real buffer before the Disney Cruise → NTSG picnic → Nashville training stretch, during which he expects to be largely unreachable. Offered Val (and separately Mark/Sandra) that he'll make time to help remotely next week if needed despite being nominally off.
- Closed by heading to grab lunch, then find Sandra (in her office, hadn't connected yet as of session end) for her own catch-up — matches the already-logged Sandra/Val sequencing plan for the day.

---

## Open Items

- [ ] **Login failure ticket** — still open as of session end; Val/Speaker 1 to reply confirming the error persists. No ticket number captured; get this from Val if it needs tracking here.
- [ ] **Marty's job coding** — still shows as Houseman (a previous-HR-director legacy miscoding), not corrected in this session.
- [ ] **Per-department placeholder headcount** — only one Room Attendant model was built live; Val still needs to survey each department (Housekeeping, Laundry, others) for actual peak-day contract-labor need rather than defaulting to 12 across the board. Pete's own read: laundry likely needs far fewer than Housekeeping, possibly just 1–2.
- [ ] **Confirm final placeholder naming convention used** — this session settled on job-title-as-first-name / agency-as-last-name (e.g., "Room Attendant 01 Allied") plus a job-code-based Employee ID (e.g., `L2655-01`). This resolves the previously-open kb.md question about "Taylor's C01/C02 vs. John Grech's alternate" convention — Del Mar is using neither; it built its own. Update kb.md accordingly.
- [x] **DoubleTree confirmed 9/12/26:** this was DoubleTree San Diego Del Mar, already reassigned to John Grech (config Oct 5, training Oct 19) per the 9/2/26 prep call — "cancelled" from Pete's week was really the reassignment playing out on the schedule, not a new/separate event. Pete has expressed a desire to get back on this engagement; not currently on the plan.
- [x] Sandra/Val session sequencing — Val's block covered in this session; Sandra's own catch-up followed separately (see kb.md for that thread).

---

## Related Files

- [Marriott Del Mar — Property KB](kb.md)
- [Marriott Del Mar — Contacts](contacts.md)
- [Manager Training — Thursday, 9/10/26](2026-09-10_manager-training-thursday.md)
- [PWS Foundations Doc 3 — Implementation & Analysis Methodology](../../../foundations/03-implementation-analysis-methodology.md) — § 5a (placeholder capacity vs. autoschedule ceiling) and § 5b (exclude placeholders from schedule export) both get a second real-world confirmation from this session.

---

*© Peter A. Castellano. All rights reserved.*
