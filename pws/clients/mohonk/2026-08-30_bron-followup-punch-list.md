# Mohonk — Consolidated Unfinished Work (for Bron follow-up call, week of 8/30/26)

Status report already sent. This pulls together everything still open across `todo.md` and `kb.md` into one list, organized by what needs Bron's input on the call vs. what's just tracked for later.

---

## 1. Needs Bron's confirmation on the call (status is genuinely unknown)

- **UNIFOCUS-252999 (Thu–Sun standard hours not generating)** — Unifocus support closed it 8/10 citing an import-timing fix, but that's separate/unconfirmed against Bron's own 8/6 fix (new Tuesday 1AM interface transfer). Reopen window already passed (8/13) without incident, which is a good sign, but **ask Bron directly: has the Thu–Sun gap actually stopped recurring over a live cycle?**
- **RMSOPS-14129 (banquet actuals overwritten)** — root cause found 7/1, fix requested from Monali (export + delete the BQT mapping), still awaiting her action. **Ask Bron if he's heard anything from Monali's side.**
- **Forecast-side banquet KBI import** — live finding 8/3: the actuals-side import is confirmed off, but the forecast-side import may still be live, which would explain James's forecast numbers still disappearing. **Not yet confirmed with Monali which screens were actually disabled — needs a direct check.**
- **ESCALATION-6690** — flagged 8/6, never reviewed (Jira access-walled). Likely the same engineering escalation as 252999 (Jeremiah Lay / Mrigen Pradhan) but unconfirmed.
- **Beverage auto-scheduling fix (Carriage Lounge Bartender, Founders Service Bartender, Central Services Service Bartender)** — fixed 7/3 by adding missing jobs to the Generate Schedules task scope, pending confirmation the fix actually filled the shifts. **Still owe Casey Dow a reply email explaining root cause — draft this before/after the call.**
- **Spa treatment-count accuracy** — Joanna flagged counts may be inflated if staff getting treatments get miscoded as guest volume. Not quantified — worth asking if it's material.

## 2. Bron/Lou's own high-priority asks (their list, 8/14) — confirm status, some may already be done

- 🔴 **Department-by-department Unifocus adoption audit** (which departments are actually inputting schedules vs. not) — their #1 ask. The raw material exists scattered across this KB (Housekeeping's 3 parallel schedules, Kitchen's Excel-then-reenter workflow, Recreation's zero adoption, Call Center's Excel workflow, F&B's near-full adoption) but has never been assembled into the single list they want. **Worth building and bringing to the call.**
- 🔴 **"Unifocus Admin" role** — matches the already-floated combined Data Analyst/Labor Management role (half-time, 10-15-20 hrs/week). Bron/Lou independently rated this high priority — no longer just Pete's idea. Canned job description exists (Bron has it, offered to share with Lou). **Push this forward on the call.**
- Med: **Schedule Export + Employee Maintenance training classes** still owed to Recreation, Housekeeping, Property, Front Office, Spa (only Housekeeping/Kitchen/Recreation got Employee Maintenance training so far, during Basic Training).
- Low: More scheduled email reminders for weekly deadlines.
- **Confirm with Bron so his list updates:** "Get treatment volume KBI working" (Pete believes already fixed 8/4) and "Reorganize jobs — 2nd floor duplicates" (already done 8/4, Spa session) — both may just be stale on his tracker.

## 3. Structural/property-wide findings worth raising (no owner or timeline yet)

- 🔴 **Room Attendant standard doesn't reflect the real ~4-hour cleaning access window** (Anton's math: heavy day needs ~23 attendants at the real window vs. what's staffed). Pete acknowledged live ("the time is wrong") but deferred — needs its own dedicated follow-up session, not a quick tweak.
- 🔴 **No banquet culinary labor standard exists** — driving ~450 OT hours in high-volume periods, directly tied to sous chefs (recently moved hourly) running 10–15 OT hrs/week each — together over half the kitchen's total OT. Moderate "kicker" fix proposed (not full standard set), no owner/timeline assigned.
- 🔴 **Housekeeping evaluated on daily numbers despite the property's own weekly-eval policy** — leadership contradicting stated guidance; worth surfacing directly rather than re-explaining policy to Housekeeping again.
- **Main Dining Room renovation** — ~6-week closure, timing not confirmed (loosely winter/Jan-Feb). **Correction 8/30/26 (Pete): the renovation date is NOT holding up current MDR configuration work** — the two are independent; don't block current standards work on getting a date from James/Lou.
- **Recreation onboarding** — standards already exist for essentially every Recreation job, just never handed off to Alex Mead. Pure communication gap, not configuration work — needs a session, not a project.
- **$4,000 ADP "punch to schedule" investment** — not yet approved. Cross-check against ADP eTime retirement (~12 months, driven by ADP not Mohonk) before committing spend that might need rework.
- ~~Beverage restructuring — possible reversal~~ — **Resolved, per Pete 8/30/26: Beverage was moved into its own standalone department, already documented in the status letter that went out.** Not an open question for James.

## 4. Smaller open items (parked, low urgency)

- Housekeeping scheduling ownership — 4 people (Sydney/Cindy, Nancy, Stephen, Anton) independently touch the same schedule; Sydney/Cindy raised this with visible frustration and is planning to retire in ~10 months — worth folding succession into the fix.
- Josh (Kitchen Manager) needs broader Employee Maintenance access (sub-only toggle + display-name field) — confirmed twice, still not fixed. Follow up with Bron/Casey on whether display-name access can be granted independently.
- "Paula's" missing overnight Front Desk hours — now formally on Bron/Lou's own 8/7 action items. Stacy Zappone to check her ADP Pay Code ("Night Shift" vs. "Regular").
- Saucier/Associate standard likely generates one shift too many (Jim confirmed only one shift needed vs. two generated).
- Dishwasher standard needs rebuilding on Founders + banquet covers instead of generic room-guest proxy.
- Culinary Extern/Intern ADP job-coding — two options debated (self-select at clock vs. punch-to-schedule), neither decided; ties to the $4,000 investment above.
- ~~On-call Main Dining Room server position~~ — **Superseded, per Pete 8/30/26: not creating a new position after all — better solution found: over-schedule and add a label to the shifts instead.** The "Lou green-lit, configure with James" framing in `todo.md` is stale; update `todo.md` to reflect the actual approach.
- Short-shift fix (Sun–Thu Daily Hours 9.0→10.0) — background: James reported May 25 that Sun–Thu MDR servers were getting cut off early (7:45pm instead of 10:15pm) because the shift was mislabeled 4.5 hrs vs. the real 5 hrs, tripping the 2.5-hr short-shift floor. Fixed May 26 (Daily Hours 9.0→10.0); James was to confirm the following week whether it worked, but that confirmation never got logged and it's sat untouched on `todo.md` since — 3+ months with no further complaints on record. **Action, per Pete 8/30/26: Pete will check directly in the system to see how the fix is behaving** — not waiting on James to confirm verbally.

## 5. Main Dining Room / James Danks — corrected priorities (8/30/26 live corrections from Pete)

- **Breakfast server formula** — the earlier "James objected 8/4, never addressed" framing was off. **Per Pete: in a live meeting, agreed to a sliding ratio (lower ratio at low volume, higher as it gets busier) and removing the flat base-2 addition regardless of shift.** Separately, **Pete personally noticed a ceiling placed on the staffing tab that he hasn't raised with anyone yet — ideally this should go away.** Confirmed configuration work still needed here; exact meeting date TBD (not 8/5 as previously assumed — needs pinning down).
- **Granary/Founders rain-contingency coding** — status unknown to Pete as of 8/30/26. **Action: Pete needs to find out what was actually implemented** (the standing plan was recoding rain-relocated servers as Granary + a manual ADP pay-rate correction, but that was never confirmed done).
- **Banquet Bartender TK code fix** — status unknown to Pete as of 8/30/26. **Action: Pete needs to check whether this got fixed** (root cause was a leftover TK code attached to a retired "Banquet Bar" job instead of the correct "Banquet Bartender" job; fix was deliberately held pending James's input on preferred structure).

*More corrections pending — Pete reviewing further.*

---

*Sources: `todo.md` (🟡 PWS/Billable — Mohonk items), `pws/clients/mohonk/kb.md` (full file, through the 8/16/26 update), live corrections from Pete 8/30/26.*
