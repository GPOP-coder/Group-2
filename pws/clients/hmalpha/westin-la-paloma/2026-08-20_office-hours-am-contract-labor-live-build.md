<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Office Hours (Thursday AM), Part 11: Contract Labor — Live Employee Maintenance Build

**Date:** August 20, 2026, AM
**Attending:** Peggy Taylor (DOF); Pete Castellano; Charles James (expected back shortly, session paused before his return).
**Source:** Raw voice-memo/session transcript, rough auto-transcription with crosstalk, not cleaned verbatim.
**Note on scope:** This is the live, hands-on continuation of the contract labor policy already explained conceptually in [Part 3](2026-08-20_office-hours-am-finance-dept-scheduling-and-contract-labor.md#6-contract-labor--decision-explained-for-the-first-time-to-peggy) and reaffirmed in [Part 5](2026-08-20_office-hours-am-reconcile-employees-job-code-mismatches.md#5-contract-labor--reaffirmed-mid-session) — this file covers the **actual mechanics of building the placeholder records**, shown against two reference properties.

---

## 1. Reference Property #1 — Union Station Nashville (Shown as a Cautionary Example)

- Pete pulled up **Autograph Union Station (Nashville)** as an example of contract labor **done the way he does NOT recommend**, purely for contrast.
- **What Union Station did:** put real contract-worker names on the schedule (e.g., a person referred to as "Burt Campbell"), and — critically — **used the actual Work Records employee ID number** as the Unifocus employee ID, rather than a generic sequential placeholder ID.
- **Pete's stated reasoning for why a property might do this anyway:** it lets managers see a real name on the schedule instead of an anonymous slot, and because the Work Records ID matches, the **Employee Schedule Analysis report (see [Part 8](2026-08-20_office-hours-am-reporting-tools-walkthrough.md#3-%EF%B8%8F-employee-schedule-analysis-report--the-drill-down-tool)) actually works for these people**, unlike the general placeholder approach.
- **Pete's explicit non-endorsement repeated again here:** *"I'm advising not to [do it this way]... I'm gonna not say anything more."* Reiterates the co-employment/benefits-exposure risk already raised in Part 3. The Union Station approach was shown only so Peggy could see both options concretely, not as a model to follow.
- **Naming convention observed at Union Station (if a property does choose real names):** last name field used as "Contract," with the actual display name overridden separately (last name, first name) — confirmed that **the display name field can always be overridden independently of the underlying record** without breaking anything, true for any employee in any department.

## 2. Reference Property #2 — New Orleans (The Recommended Pattern)

- Pete then pulled up **New Orleans (InterContinental)** as the model WLP should follow — described as **"absolutely, positively" the right approach**, with the added note that **union environments especially require this level of separation** between real employees and contract labor placeholders.
- **Confirmed naming convention: job-based generic names, sequentially numbered** — e.g., **"Contract Public Area 03."** The employee's "name" in the system literally matches the job, not a real person.
- **Rate field:** can be left blank (defaults to $1) or filled in with a real rate — property's choice, no functional requirement either way beyond making reports readable.
- **Schedule groups:** optional for these placeholder records — "probably not" necessary in most cases, per Pete's read.
- **Availability:** confirmed these placeholder records can be left with **blank availability**, and are typically set up as **full-time** in the system so the auto-scheduler will actually try to schedule them first (sequentially) rather than skipping them.
- **No copy/duplicate function exists** for these records — **each placeholder must be created individually, one at a time**, even though they're structurally identical aside from the sequence number.

## 3. Why the Work Records ID Approach (Union Station-Style) Doesn't Generalize Well

- **Confirmed limitation:** Unifocus's interface with Work Records **only imports actual hours, not employee identities** — Work Records data lands against whatever employee ID is already sitting in Unifocus, it doesn't create or sync new employee records on its own.
- **Practical risk directly flagged:** if a property has **100+ contract labor employees** and tries to individually ID-match each one from Work Records, any ID that Unifocus doesn't already recognize will throw an **hours import error** — a real, scaling operational burden that the generic-placeholder approach avoids entirely, since generic placeholders are scheduling-only and never need to match a real Work Records ID.

## 4. Session Paused Mid-Build

- Pete began setting up WLP's own first placeholder record live but the session paused before completion — Peggy was told **"you're gonna need to make a new one each time"** (no bulk/copy tool), and the exact count of placeholders needed per department (e.g., how many "Stewarding 01, 02, 03...") was explicitly **deferred to department heads** (Pete's guidance to Peggy: *"I don't know — ask Chef... how many do you normally run at peak? What's the most you need?"*).
- **Session was interrupted before the full placeholder count/build was finished** — Pete stepped away to check something else, then the group broke for lunch shortly after. **Not confirmed complete as of this transcript.**

---

## Open Items From This Session

- [ ] **Finish building WLP's placeholder contract-labor records** — pattern and mechanics were demonstrated live, but the actual build was not completed in this session
- [ ] **Get department-by-department peak headcount numbers** (Housekeeping/Stewarding/etc.) from department heads (e.g., Chef) to determine how many numbered placeholders each department needs
- [ ] Decide whether any WLP department has a genuine case for the Union Station-style real-name/Work-Records-ID approach (e.g., for Employee Schedule Analysis reporting) despite the general recommendation against it — not raised as a live question, but worth a deliberate yes/no rather than defaulting silently

---

## Related Files

- [Westin La Paloma — Property KB](kb.md)
- [Office Hours AM, Part 3 — Finance Dept Scheduling & Contract Labor (policy explained)](2026-08-20_office-hours-am-finance-dept-scheduling-and-contract-labor.md)
- [Office Hours AM, Part 5 — Reconcile Employees / Job Code Mismatches (policy reaffirmed)](2026-08-20_office-hours-am-reconcile-employees-job-code-mismatches.md)
- [Office Hours AM, Part 7 — F&B Director User Access Setup](2026-08-20_office-hours-am-fnb-director-user-access-setup.md)
- [Office Hours AM, Part 8 — Reporting Tools Walkthrough](2026-08-20_office-hours-am-reporting-tools-walkthrough.md)
- [Office Hours AM, Part 9 — La Lu's Lounge Beverage-Driven Labor Standard](2026-08-20_office-hours-am-lalous-lounge-standard.md)
- [Office Hours AM, Part 10 — Revenue Center Forecasting & KBI Mapping](2026-08-20_office-hours-am-revenue-center-forecasting.md)
- [Manager Training, Tuesday PM, 8/18/26](2026-08-18_manager-training-tuesday-pm.md)
- [HM Alpha Client KB](../kb.md)

---

*© Peter A. Castellano. All rights reserved.*
