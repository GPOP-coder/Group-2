# Mohonk Mountain House (MMH) — Knowledge Base

Last updated: 2026-07-03

---

## Contacts

| Name | Title | Contact |
|---|---|---|
| James Danks | Director of Dining Services | jdanks@mohonk.com \| 845.256.2073 |
| Bron Walis | Director of Information Technology | bron@mohonk.com (email header address) / bwalis@mohonk.com (signature block — confirm which is primary) \| 845.256.2141 |
| Lou Petruzzelli | On-call Main Dining Room Server (position) | lpetruzzelli@mohonk.com |
| Patrice Huart | (Dining — CC on issues) | phuart@mohonk.com |
| Casey Dow | Software Specialist & Level III Tech. | cdow@mohonk.com \| 845.256.2169 |
| Susanna Briggs | Unifocus internal contact | sbriggs@unifocus.com \| O: 972.512.5113 |
| Ralph Varble | Unifocus Chief Customer Officer | O: 972-512-5083 \| C: 832-226-8945 \| rvarble@unifocus.com |
| Monali Desai | Unifocus — Lead, Data Integration | mdesai@unifocus.com |

---

## Implementation History

**Original implementation:** Significant configuration problems created during initial Unifocus implementation. James Danks had influence over the implementation team and steered decisions that created overuse of Assignments — consultants at the time were unable to push back effectively.

**Pete's remediation work (prior to current engagement):**
- Identified Assignment overuse as the root cause of configuration complexity
- Deactivated the majority of misused Assignments
- Migrated standards to the appropriate department/job level
- Result: dramatically simplified configuration, cleaner system

**Outcome:** James and all Mohonk stakeholders expressed strong satisfaction. Reported directly to Ralph Varble (CCO) how pleased they were and specifically requested Pete for all future Unifocus work at the property.

**Relationship context:** Pete's standing at Mohonk is unusually strong because he solved a problem the original implementation created. James can be demanding, but the relationship is positive and built on demonstrated results.

---

## Project Status

- Open PO: ~10 weeks in; ~2 weeks remaining once F&B standards arrive
- **Holding all F&B standard changes** pending Mohonk's operational decisions
- On-call main dining room server position: Lou Petruzzelli green-lit — configure with James Danks

## Onsite Visit — August 2026

**Arranged by:** Ralph Varble (CCO) and Susanna Briggs with Bron Walis and Lou Petruzzelli
**Purpose:** F&B standards review + training
**Tentative dates:** First week of August (second week also an option — Pete to confirm preference)
**Billing:** Covered under existing active change order
**Travel notes (from Ralph, who has been there):**
- Fly into **Newark** — easier than NYC; 10 miles further but avoids navigating out of the city
- Rent a car — approximately 2-hour drive to Mohonk
- First hour out of Newark covers only ~⅓ of the distance due to traffic; much faster once across NJ/NY border
- Albany is physically closer but harder to fly into and likely more expensive
- Must arrive **Sunday**, depart **Saturday** — Mohonk expects the full week

**Next step:** Pre-visit planning call being scheduled for the week of 7/20/26 (property wants to walk through their agenda before Pete arrives) — targeting Thursday afternoon after 2 PM, pending final confirmation between Pete and Susanna. Pete's read: the property may try to fit more onto this visit than one week can cover — he plans to tell them directly if so.
**Pete's status:** Blocking first week of August; checking for conflicts with Kim

---

## Tickets

| Ticket | Subject | Status |
|---|---|---|
| UNIFOCUS-247559 | Founders outlet — shifts not generating | 🔴 Active |
| RMSOPS-14129 | Banquet actuals overwritten after entry | 🔴 Root cause found; fix requested from Monali 7/2/26 |
| (no ticket needed) | Beverage jobs missing from Generate Schedules task's job selection | 🟢 Fixed 7/3/26 — see below |
| [UNIFOCUS-252999](https://ufjira.atlassian.net/browse/UNIFOCUS-252999) | Standard hours not generating Thursday–Sunday, recurring weekly | 🔴 Active — Critical priority; escalated to engineering 7/20/26, root cause unconfirmed |

See [Interface Reference](interfaces.md) for full interface-by-interface status (Rooms KBI, F&B Covers, Banquet, Spa, ADP feeds) as of the 7/1/26 Interface Flow call.

---

## Active Issues

### ✅ Shifts Not Generating — Founders Outlet
**Ticket:** UNIFOCUS-247559
**Reported by:** James Danks — May 28, 2026
**Participants:** Pete Castellano, Susanna Briggs, bron@mohonk.com, Melody Tate (Unifocus Service Desk)
**Status:** ✅ Verified resolved — Pete confirmed directly in the live system 7/2/26 (admin login), Standard Hours generating appropriately for all four Founders jobs. Ticket confirmed closed, no need to reopen.

**Issue:** System is not generating shifts for four Founders positions:
- Founders Head Runner
- Founders Runner
- Founders Head Host
- Founders Host

Forecast counts are being entered, so the trigger condition is met — the system should be producing shifts. It is not.

**Likely diagnostic areas:**
- Standards may not be configured for these job codes (no standard = no shift generation)
- Standards may exist but have zero or missing volume thresholds
- Outlet or department may be inactive or misconfigured
- Forecast may be entering to the wrong KBI

**Diagnostic progress (May 28):**
- Standards ARE built for the affected positions — configuration exists
- Founders Server works correctly — using it as the comparison baseline
- Investigated KBI references and standard settings — no obvious configuration error found
- **Pete's assessment:** Legitimate Unifocus bug — no configuration reason for the failure; compounds James' existing frustrations
- **Escalated to Susanna Briggs via Teams** with Jira link: https://ufjira.atlassian.net/browse/UNIFOCUS-247559

**Status:** ⏳ In Unifocus hands — Pete cannot resolve from the configuration side
**Billing:** Diagnostic time logged in Clockify

**Call — May 28: Pete, Susanna Briggs, Melody (Unifocus senior support)**
- Pete confirmed: legitimate bug or system-level issue — not a configuration error
- Melody reviewing detailed processing logs
- Working theory: stale configuration that experienced a change but did not propagate the update everywhere — a known failure mode in Unifocus
- **Proposed resolution path:** Break the configuration and rebuild from scratch
- **Test approach:** Rebuild one position as a proof of concept; if the rebuilt version generates correctly, confirms the stale-config theory and the path forward is rebuild all four
- Status: ⏳ Waiting on Melody's log review

**Actual fix applied (per ticket comments, 5/28/26 11:22 PM):** Melody's real fix diverged from the per-job "rebuild" theory above — instead, she found the issue at the **Task Scheduler level**: created a new "Generate Projected Hours" task (name prefix `07a.`), configured identically to the existing one, then **disabled the original task**. Plan was to let the new task run through the next Wednesday cycle and check results before proceeding further.

**Resolution claimed (Melody Tate, 7/1/26):** "We have confirmed the updated Task Scheduler task ... is and has been generating the projected hours as expected when forecasted KBI volumes are in place for the selected jobs including the Founders Head Runner, Founders Runner, Founders Head Host and Founders Host jobs." Ticket marked Resolved. **72-hour window to reply and reopen — window closes ~7/4/26.**

**🚩 Pete's read (7/2/26): Not confident this is actually resolved.** Susanna asked Melody 6/29 whether the new task had been verified to fix it and got no response on that specific question before Melody's 7/1 resolution comment — the resolution reads as asserted, not demonstrated with evidence (no screenshot/data cited). **Action: verify directly in the live system that Founders shifts are now generating before the 72-hour reopen window closes, and reopen the ticket if not confirmed.**

**Related tickets flagged by Jira automation (possibly same underlying bug pattern):** UNIFOCUS-246836, UNIFOCUS-246800, UNIFOCUS-246799 — not yet reviewed, worth checking for a recurring pattern across properties.

---

### 🔴 Banquet Actuals Being Overwritten
**Ticket:** [RMSOPS-14129](https://ufjira.atlassian.net/browse/RMSOPS-14129) — "Mohonk - Investigate Banquet Actuals Being Overwritten After Initial Entry"
**Reported by:** James Danks (via Bron Walis) — first noticed ~6/19–6/23, recurred 6/28
**Status:** 🔴 Root cause identified 7/1/26; fix requested via Jira comment, awaiting Monali's action

**Issue:** Manually entered banquet actuals (38 KBIs, entered weekly) disappear/reset to zero within days of entry. Two documented examples: actuals entered 6/19 missing by 6/23; actuals entered 6/28 partially overwritten by 7/1 (screenshots from Bron, attached to the ticket).

**Root cause (found 7/1/26 Interface Flow call):** Legacy Delphi.fdc-era interface mappings are still active from before Mohonk switched to Infor SCS as their event system. Those stale mappings still trigger automated imports that overwrite the manual entries with zeros.

**Fix path:**
- **Monali Desai (Unifocus):** Export current mapping + forecast/actuals data, then **delete the BQT mapping** — the only way to stop the overwrite; a quick config change on her end
- **Pete:** Requested the export/deletion via Jira comment; will **restore the mapping once Mohonk resumes sending a BQT file** (i.e., once Infor SCS → Datavision automation goes live)

**Context:** Banquet KBI import was automated via Delphi.fdc until the Infor SCS switch; SCS → Datavision automation is expected within ~a month of 6/23/26, which would allow re-automating banquet data properly instead of James's current couple-times-a-week manual entry.

Full detail: [interfaces.md — Banquet section](interfaces.md#banquet--high-priority-)

---

### 🟢 Beverage Jobs — "Not Auto-Scheduling" — Root Cause Found and Fixed
**No ticket filed** — Pete diagnosed and fixed directly; email reply to Casey Dow pending.
**Status:** 🟢 Fixed 7/3/26, pending confirmation the next Generate Schedules run picks up the affected jobs

**Correct mental model (see [Unifocus KB — Schedule Generation Sequence](../../unifocus/kb.md#schedule-generation-sequence--standards--shifts--auto-scheduler)):** There are three sequential steps — Forecast Volumes → Generate Projected Hours (creates shifts) → Generate Schedules (auto-scheduler fills shifts per Employee Maintenance settings). The auto-scheduler does not "schedule employees" — it fills shifts that already exist. "Job not auto-scheduling" could mean either (a) no shift was ever created (an upstream Generate Projected Hours / standard problem), or (b) the shift exists as an unassigned Open Shift and the auto-scheduler had no eligible employee to fill it (an Employee Maintenance problem). These require completely different fixes.

**Diagnosis (7/3/26, Schedule Editor, Carriage Lounge Bartender, WE 7/12 — week not specified by reporter, so Pete checked the upcoming week ending and noted the assumption):**
- Filtered Schedule Editor by job. **Projected Hours existed and unassigned Open Shifts existed** → steps 1–2 (Forecast, Generate Projected Hours) worked correctly. 7 shifts had also been manually added by the property.
- This ruled out a standards/projected-hours problem and pointed toward the auto-scheduler step — but rather than assume an Employee Maintenance eligibility problem, Pete recalled [UNIFOCUS-247559](https://ufjira.atlassian.net/browse/UNIFOCUS-247559) (the Founders outlet ticket, resolved by recreating the Generate Projected Hours task) and checked the **Generate Schedules task's Labor Structure (job) selection** instead.
- **Root cause found:** The Generate Schedules task's Labor Structure selection (406 jobs selected) was **missing several jobs**, including Carriage Lounge Bartender, Founders Service Bartender, and (implied) Central Services Service Bartender. Founders Server was checked but Founders Service Bartender was not, in the same Dining Room - Founders branch — an easy-to-miss omission in a long tree with partial/indeterminate checkbox states at parent nodes.
- These jobs' shifts generated correctly but the auto-scheduler task never attempted to fill them, because the task itself was never configured to run against them. Not a stale/duplicate task issue like 247559, and not an Employee Maintenance eligibility issue — a straightforward gap in the task's job scope.
- **Fix applied 7/3/26:** Pete added the missing jobs to the Generate Schedules task's Labor Structure selection. Pending: confirm the next scheduled run of the task actually fills the previously-orphaned Open Shifts.

**Timeline:**
- **7/1/26 (Interface Flow call):** Susanna flagged that some beverage roles weren't generating standard hours despite correct configuration — a system issue, not config. Recommended Casey open a UF support ticket.
- **7/2/26, 3:21 PM:** Casey checked two jobs — **Carriage Lounge Bartender** and **Central Services Service Bartender** — and confirmed standard hours were now generating. Asked if this tied to the adjusted standard-hours generation timeline (the ~9 AM ET run Monali added during the interface flow work).
- **7/2/26, 5:15 PM:** Pete replied: he'd created **one new task** to Generate Standard Hours, and opened the others "as if to edit" without changing anything (same pattern Melody used on the Founders outlet fix — recreating/touching a task to force it to re-run cleanly). Task Log showed all tasks had run once since the 7/1 call. Pete called it resolved and asked Casey if any other jobs were still missing standard hours.
- **7/3/26, 8:54 AM (email being answered now):** Casey relayed word from Mohonk's Beverage Manager — a **different problem**, shifts not **auto-scheduling**, for:
  - Carriage Lounge Bartender *(same job — standard hours now fine, but shifts still not auto-generating)*
  - Founders Service Bartender *(new — not previously flagged)*
  - Central Services Service Bartender *(same job — standard hours now fine, but shifts still not auto-generating)*

  **Working correctly (auto-scheduling shifts fine):** Assistant Beverage Manager, Barback – Main, Bartender – Main Service Bar Granary, Bartender – Main Service Bar Main Dining Room.

  Casey asked Pete to take a look, or whether he should open a formal UF support ticket.

**Pattern worth noting:** This is the second Mohonk incident traced to Task Scheduler configuration rather than the standard itself — see the now-resolved [Founders Outlet ticket](#-shifts-not-generating--founders-outlet) above (stale/duplicate Generate Projected Hours task) and the general writeup in [Unifocus KB — Schedule Generation Sequence](../../unifocus/kb.md#schedule-generation-sequence--standards--shifts--auto-scheduler). Worth periodically auditing task job-selection lists at Mohonk for other silent gaps, since this failure mode produces no error — it just quietly does nothing for the omitted jobs.

**Next:** Draft email reply to Casey Dow — explain the root cause in outcome/action terms (per [Client Communication Standard](../../unifocus/kb.md#client-communication-standard-pws)), confirm no ticket needed since resolved directly, and ask Mohonk to confirm the three jobs fill correctly on the next schedule generation run.

---

### 🔴 Spa Interface Not Processing
**Status:** 🔴 Open — escalated to Unifocus engineering, no resolution timeline

**Issue:** Book4time → Datavision → Unifocus spa volume data is arriving at Unifocus but not processing correctly, resulting in zero values for spa reception forecasting.

**Action:** Monali Desai escalated to Unifocus engineering team (7/1/26 call). Low priority relative to Rooms/F&B/Banquet, but open.

Full detail: [interfaces.md — Spa section](interfaces.md#spa--low-priority-)

---

### 🔴 Standard Hours Not Generating — Thursday Through Sunday (Recurring)
**Ticket:** [UNIFOCUS-252999](https://ufjira.atlassian.net/browse/UNIFOCUS-252999) — Priority: Critical
**Reported by:** Bron Walis (ticket filer), escalating an internal email from James Danks (7/15/26) — recurring "almost every week for the past few months"
**Status:** 🔴 Active — investigated 7/20/26 with Susanna Briggs; escalated to engineering (Jeremiah Lay, Mrigen Pradhan) post-call; root cause not yet confirmed

**Issue:** Dining room covers for a given week import correctly and appear in the Weekly Labor Summary for all 7 days, but standard hour generation only produces hours for Monday–Wednesday — Thursday through Sunday generate nothing until someone manually regenerates. Recurs most weeks. Bron is deliberately holding off on manually regenerating this week so Unifocus can diagnose the broken state rather than a freshly-reset one.

**Investigation (7/20/26):** Confirmed the Generate Standard Hours task runs 4x/day and that covers import correctly (spot-checked Main Dining Breakfast 7/12 = 379 covers, matching source). The gap is specifically between import and generation, not missing data. Leading theory is the same intermittent task-scheduler failure pattern seen in the [Founders outlet ticket](#-shifts-not-generating--founders-outlet) below — where the eventual fix was standing up a brand-new task and disabling the stale one, rather than editing in place — but this wasn't confirmed live.

**Related tickets:** UNIFOCUS-246799 (linked, Closed, Critical), UNIFOCUS-248911, UNIFOCUS-246836 — worth checking for a shared root cause.

Full call notes: [2026-07-20_standard-hours-thu-sun-call.md](2026-07-20_standard-hours-thu-sun-call.md)

---

### ✅ Incomplete / Short Shifts — Main Dining Room Server
**Reported by:** James Danks, May 25, 2026
**Job:** `2 - Food and Beverage\Dining Room - Main\Server`
**Status:** ✅ Resolved — May 26, 2026

**Root cause:**
- Sun–Thu shift was mislabeled as 4.5 hours when the actual shift is 5:15–10:15pm (5 hours), matching Friday
- Sun–Thu Daily Hours = 9.0 (correct multiple of 4.5, but 4.5 was wrong)
- 9 hours ÷ 5-hour actual shift = 1 full shift + 4-hour remainder → triggered short shift at 2.5-hour minimum floor
- Result: server scheduled 5:15–7:45pm instead of 5:15–10:15pm

**Fix applied:**
- Confirmed with James: Friday separation IS intentional — Friday always opens at 5:15 PM; Sun–Thu sometimes opens at 6:00 PM
- Changed Sun–Thu Daily Hours from 9.0 → 10.0 to prevent the short shift the misconfigured standard was generating
- Retained day-of-week split — separation is operationally valid
- James to confirm next week whether short shifts are eliminated

**Open — deferred to F&B standards review:**
- What conditions trigger the 6:00 PM start on Sunday–Thursday?
- If Sun–Thu can run a 4.25-hour shift (6:00–10:15), Daily Hours and shift length may need revisiting at that time

**Lesson learned:**
- "Note the issue and move on" applies to rare edge cases when the standard is correctly configured
- When short shifts are systematic (every week, same shift), the standard itself is misconfigured — fix the standard

---

## Job Configurations — Known

### 2 - Food and Beverage \ Dining Room - Main \ Server

| Shift | Days | Shift Length | Daily Hours | Units/Shift |
|---|---|---|---|---|
| 1145–1445 | M–F | 3 hrs | 6.0 | Suppressed (0) |
| 1700–2215 | Sat | 5.25 hrs | 10.50 | 15 |
| 1715–2215 | Fri | 5 hrs | 10.0 | 15 |
| 1715–2215 | Sun–Thu | 5 hrs | 10.0 | 15 |

Volume range: 180–∞ (lunch) | 1–∞ (dinner)
Distribution: Non-Flow, Beginning

### 2 - Food and Beverage \ Dining Room - Main \ Server \ Main Dining AM — Planner Settings

| Setting | Inherited Value |
|---|---|
| Period Length | 15 Minutes |
| Standard Type | KBI Related |
| Min / Max Shift Lengths | min: 2.5 hrs; max: 12 hrs |
| Rounding Threshold Below One | 0.00 |
| Rounding Threshold Above One | 0.2 |
| Generate Long Shifts | Yes |
| Limit Shift To Max Shift For Non-... | Yes |
| Simple Non-Flowed Distribution | Beginning |
| Effective Dates | 1/1 – 12/31 |

Note: All values are inherited (no overrides set). Rounding Threshold Below One = 0.00 means no remainder is absorbed — any leftover hours will attempt to generate a shift, governed by the 2.5-hour minimum.

---

## Client Communication Notes

- James understands operational outcomes; does not need technical Unifocus mechanics explained
- Explain what to expect and what to do — not how the system calculates it
- Responsive via email; copy Susanna Briggs (Unifocus) on all threads

---

## Related Files

- [Interface Reference](interfaces.md) — full Rooms/F&B/Banquet/Spa/ADP interface map and status
- [Call Notes — Unifocus Interface Flow, 7/1/26](2026-07-01_unifocus-interface-flow-call.md)
- [Call Notes — Standard Hours Thu–Sun Investigation, 7/20/26](2026-07-20_standard-hours-thu-sun-call.md)
