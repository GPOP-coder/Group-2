<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Sandra Academia — Full System Admin Training, 9/15/26

**Context:** The real follow-up session to Friday 9/11's rushed ad-hoc training (see [2026-09-11_sandra-academia-adhoc-training.md](2026-09-11_sandra-academia-adhoc-training.md)), where her own three-page topic checklist went largely uncovered. Originally locked for 10 AM–12 PM PT — **ran the full curriculum instead: Pete's own words, "This is a six-hour class."** Teams, Sandra Academia (Marriott Del Mar DOF/primary system admin) as the trainee. Val and Mark (DOF-adjacent) referenced throughout as partially trained, not full admins yet.

---

## 1. Weekly Operational Timeline — the backbone of the whole session

| When | What happens | Automated or manual |
|---|---|---|
| Monday, 1:00 AM | System rolls forward to the new planning period | Automated |
| Monday, 1:30 AM | Rooms forecast (ProfitSword) + banquet forecast (CI) imported, based on Sunday's data | Automated |
| Monday, until noon | Forecasts open for manual edits | Manual window |
| Monday, mid-day | Revenue Center Forecast generated | **Automated — do not run manually** |
| Tuesday, ~11:45 AM–noon | Projected Hours + Schedules generated | **Automated — do not run manually** |
| Tuesday onward | Managers edit schedules | Manual |
| Wednesday, 3:00 PM | Schedules finalized ahead of the labor meeting, published end of day | Manual (publish) |
| Saturday | Following week's schedules must be published by one designated person — triggers the Paychex send | Manual, single owner |

**Critical procedural point, repeated for emphasis:** never manually trigger "Generate Revenue Center Forecast," "Generate Projected Hours," or "Generate Schedules" — they're automated, and running them manually risks overwriting data with incomplete historicals. Live example caught during the session: a forecast screen showed a **zero for arrivals**, which cascades into a negative/very-low departures calculation — traced to exactly this kind of accidental manual overwrite risk (see the "off by five or six hours" timestamp note in the transcript — worth Sandra double-checking her local time zone display against actual run times).

Standard Hours recalculates **4x daily: 7 AM, 11 AM, 2 PM, 6 PM.**

**Paychex relationship:** managers edit time/correct punches directly in Paychex; Unifocus imports on a **14-day lookback**, overnight. Time-off approved in Paychex **by Monday** is honored in Tuesday's auto-schedule; approved later creates an overlay managers must fix by hand. Employees view their schedule via the **Paychex app**, not the Unifocus mobile app.

## 2. Forecasting Methodology

- **Current method: Trend-Adjusted Exponential Smoothing (TAEs)** — a weighted average favoring the most recent 13 weeks. Has a natural lag; needs manual override during real seasonal shifts.
- **Regression analysis** — more sophisticated (uses a driver like guest count to predict volume), **not currently usable** — the property isn't receiving guest-count data at all. Flagged as a real gap to revisit if regression is ever adopted.
- **Banquets (CI):** only Event Type × Booking Type combinations the system has already seen get mapped — new/unseen combinations are **silently dropped**, not flagged. Same systemic gap already tracked for Westin La Paloma; worth treating as an HMAlpha-portfolio-wide pattern, not Del Mar-specific. **Process:** if a booking/covers gap is spotted, collect the BEO number and escalate to Nicole Mendez/Devon Peters.
- **Room count data can arrive a day late** — acceptable for the weekly cycle, not a defect.
- **Actual KBI Mapping** lives at `Setup > Labor > Actual KBI Mapping` — this is where ProfitSword/CI source data gets tied to the right KBI; mapping errors are a common silent-data-loss point.

## 3. Labor Standards Mechanics — the "pitcher and cups" framing, applied

- Work is measured in **minutes per unit** (e.g., 35 min/departure, 16 min/stayover).
- Shifts get built by accumulating minutes until an 8-hour "cup" fills — this **naturally produces short shifts** at the remainder, which managers are expected to manually round out to full shifts. (Matches the CLAUDE.md-documented "pitcher and cups" signature analogy — worth noting as a live instance of it, not new methodology.)
- Min/max shift length and rounding are configured at the job level.

## 4. Contract Labor Placeholders — Housekeeping

- **12 Room Attendant placeholders** built, naming convention **"Z Contract, [Job Name]"** (alphabetizes to the bottom of lists — matches the pattern already used at Baha Mar/Del Mar elsewhere).
- **6 set to auto-schedule** (Hours Available = 40), **6 not** (Hours Available = 0) — a deliberate split, not an oversight.
- **Critical setting, called out explicitly:** **"Include in export" must be unchecked** on every placeholder, or the payroll export to Paychex will fail trying to send a nonexistent employee. Work Class set to "Contract."

## 5. User & Employee Administration

- **Clone, don't create** — cloning an existing user for a replacement preserves permissions/settings correctly; creating fresh risks missing something.
- **Deactivate, don't delete**, departing users — preserves their history. Live example: Al (departing) to be deactivated, cloned from a director-level template for his replacement.
- **Employee User Maps** (`Setup > Employee > Employee User Maps`) — a **one-time, per-user, easy-to-forget** step linking a system login to an employee profile. **Required before that user can publish schedules.** Worth a standing checklist item for every new user granted access.
- **Group Memberships** = what a user can *do* (scheduler, approver, etc.) — additive, HMAlpha-wide roles.
- **Data Permissions** = what a user can *see* (property/department/job/KBI level) — access to new KBIs has to be granted manually per user, doesn't inherit automatically.
- **"See Dollars"** is its own specific permission, granted at the department-manager level.
- **Schedule Groups** (custom filter/print buckets, e.g. "Kitchen") and **Operating Codes** (reporting rollups, e.g. combining Housekeeping + Laundry on the Weekly Labor Summary) both require per-user access grants.

## 6. Roles & Team Dynamic

- **Sandra is the primary system administrator** going forward — the session's explicit framing was equipping her to build accountability in others, not just learn the buttons herself.
- **Mark suggested to run the weekly labor meeting** — drives accountability from the DOF seat.
- **One single designated person must own Saturday publishing** — consistency requirement, not yet assigned by name as of this session.
- **Jesse (F&B)** and **Stephanie (Banquets)** own editing their own forecasts; catering should use **"shell BEOs"** for confirmed-but-not-fully-detailed groups to keep forecast accuracy up.
- **Valeria (Val)** owns adding new jobs in Paychex — ties her placeholder/Assignments work (9/11 session) into the same person's broader responsibility.
- Live data-quality example worked during the session: **Juan Silva's secondary job** — one of the daily reconcile/hours-transfer email items to track down, same pattern as the other HMAlpha properties' reconcile cleanup work this month.

## 7. Personal aside during a break (not client-facing)

Around the midpoint, Sandra and Pete took a break and the conversation drifted into personal territory — Sandra sounded genuinely overwhelmed by paperwork/organizing (scanning documents, "I'm scared to death"), and there was a tax/depreciation conversation about a house's cost basis that closely parallels Pete's own Pensacola cost-basis-for-depreciation work (CLAUDE.md open item) — plausibly Pete relating to her stress by talking through his own situation, not a Del Mar business topic. Also a stray, ambiguous line about an "invoice... over a hundred percent utilization" — unclear who said it or what it refers to; not enough context to act on, noted only in case it resurfaces.

---

## Assignments / Open Items

**Sandra:**
- [ ] Check with Mark whether a labor meeting is scheduled for Wednesday 9/16.
- [ ] Send Pete her updated operational timeline copy if she edits it.
- [ ] Coordinate with Mark on who owns Saturday schedule publishing — **first one due Saturday 9/19**, then every Wednesday after.
- [ ] Go through every job/division/department and enter the budgeted productivity number + KBI goal for the year.
- [ ] Build the 12 Room Attendant placeholders (6 auto-schedule / 6 not) per the naming/config rules above.
- [ ] Build schedule groups + operating codes (Housekeeping, Laundry, combined), with naming conventions and access grants.
- [ ] Re-enter correct rooms forecast numbers in View/Edit Rooms Forecast and recalculate (the zero-arrivals issue found live).
- [ ] Edit the daily short Housekeeping shifts up to full 8-hour shifts.
- [ ] Reach out to Nicole Mendez/Devon Peters for HM Alpha's SOP on entering ProfitSword forecast data.
- [ ] Sit with Jesse to trim his task menu down to what he actually needs (he does **not** need to manually run Generate Revenue Center Forecast).
- [ ] Talk to Val about the employee/job-adding process to keep Paychex and Unifocus aligned.
- [ ] Audit user labor access for full drill-down (departments *and* individual jobs).
- [ ] Monitor last-login activity; follow up with long-inactive users.
- [ ] Monitor CI banquet actuals for gaps; escalate missing-covers events (BEO number) to Nicole/Devon.

**Pete:**
- [ ] No specific outstanding items from this session beyond continued availability for Sandra's questions — this was a training delivery session, not an open troubleshooting thread.

---

## Related Files

- [Sandra Academia — Ad-Hoc Training, 9/11/26](2026-09-11_sandra-academia-adhoc-training.md)
- [Valeria Ruvalcaba — Placeholder Training, 9/11/26](2026-09-11_valeria-placeholder-training-and-troubleshooting.md)
- [Marriott Del Mar Client KB](kb.md)

---

*© Peter A. Castellano. All rights reserved.*
