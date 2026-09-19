<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — Taylor Walton Prep Call

**Date:** 2026-09-02
**Attendees:** Taylor Walton (Unifocus — configurer), Pete Castellano (trainer)
**Purpose:** Pre-training prep call ahead of Pete's onsite week (Sep 7, 2026) — property quirks, contacts, and the DoubleTree Del Mar scheduling question.

---

## Training Week — Confirmed

**Sep 7, 2026 (week of) is confirmed.** This was previously flagged in `kb.md` as needing confirmation with Ralph Varble — resolved directly with Taylor on this call. Pete flying out Monday, arriving to start Tuesday.

**Travel note:** Outbound flight is set for Monday. **Return flight booked (9/2/26):** Southwest #3440, Fri 9/11, SAN→OMA nonstop, departs 6:45 PM / arrives 11:50 PM, $446.40 total. A late-day departure works well — it leaves the full Friday open for meetings through early afternoon before heading to the airport, rather than the Saturday-departure option originally being weighed. (Personal factors behind the earlier open-return question are logged separately — see `journal/2026-09-02_san-diego-personal-notes.md`, not filed here since it's not HMA-relevant.)

---

## Contacts — Confirmed on This Call

| Contact | Role | Notes |
|---|---|---|
| Mark (Ziomek) | GM | Confirmed hands-on and engaged — attended meetings, open to discussing breakpoints, not just a rubber stamp. |
| Sandra (Academia) | DOF | **Will be the actual key user running the system day to day** — more so than the GM, who is "very hands off" operationally once the system is live. |
| Valeria (Ruvalcaba) | HR | Attended meetings but newer to the property — "doesn't know what the hell we're doing" yet on the Unifocus side; will be the go-to for HR-specific items, not system operation. |

Matches/confirms existing roster in `contacts.md`. Sandra's "key user" status is new detail worth flagging for training-day prep — she's the one who needs the deepest hands-on time.

---

## Operational Quirks for This Property

### 1. Room Service Server vs. Room Service Cashier (J1 program)
Property currently budgets these as two separate jobs, but the "cashier" role is really just J1 visa-program interns doing the same server job at a different budget line. **Build ONE server standard**, the way it would be built without the J1 program — because the J1 program itself is not guaranteed to continue (federal/State Department program, subject to change with no notice) and a standard split around it would immediately break if that happens.

### 2. Contract labor via third-party agency ("Quick" — name/spelling unconfirmed)
This property uses **Work Records** for contract labor generally, but also a separate third-party staffing company (sounds like "Quick" + a business-name suffix — Taylor wasn't certain of the spelling) that **does not interface hours into Unifocus at all**. Unifocus is reportedly reaching out to see if that company can get set up with Work Records, but nothing is in place yet.

**Practical impact:** placeholder employees will still be built for scheduling (so the property can schedule planned contract-labor hours normally), but **actual hours for this specific contract company must be entered manually** — no automated actualization for them, unlike other contract labor at this property.

- Taylor is building the placeholder employees (as she has for every other property); the property's finance/admin contact does not yet know how to build additional ones if needed — flagged as a training gap to cover.
- Naming convention Taylor is using: `[Job Title] C01`, `C02`, etc. She noted John has used a different naming convention in the past and she may switch to match his approach — worth confirming which convention lands before training, for consistency across HM Alpha properties.
- **Terminology alignment:** Taylor calls them "contract laborers" generally and "placeholder employees" specifically in the scheduling context. Pete has been calling them "dummy employees." Worth using "placeholder employee" consistently with the property to avoid the literal read of "dummy."
- **Important config note for any future added placeholder:** when adding an additional contract-labor placeholder employee, **uncheck the "Schedule Export" box** on the Scheduling tab. Confirmed this does NOT break anything on the HM Alpha side (unlike Baha Mar, where an equivalent export crashes the Infor schedule import) — the only effect is that Unifocus's own technical team sees a long error list from these non-real employees exporting, which buries genuine errors that need investigation. Purely a signal-to-noise fix on Unifocus's side.

### 3. Shared departments between Marriott Del Mar and DoubleTree San Diego Del Mar
Security, Accounting, Sales, and Laundry have labor that is **budgeted as split** between the two properties, but the employees and scheduling **all live at Marriott** — because that's where payroll actually originates for these people. DoubleTree does not have job codes or employee records for these roles.

**Rule to apply:** build the full labor standard at Marriott regardless of the budget split; the property does its own back-end accounting adjustment (end-of-month) to allocate the dollar split to DoubleTree. Do NOT try to move any of this standard to DoubleTree — there's no employee record or job code there to schedule against.

**If asked in training** "what about the people who work at DoubleTree" for these departments — the answer is there is no separate DoubleTree job/employee for them; they're scheduled and standard-built at Marriott only.

**Engineering is different:** it is NOT a shared-employee department — each property has its own engineering employees and its own budget — it's only the **manager** who is shared (one person managing both properties' engineering teams, paid out of Marriott). Once DoubleTree goes live in Unifocus, that manager will simply get access to both property databases and schedule each independently. No special standard-building workaround needed here, unlike the four shared departments above.

**Salaried managers:** standard being built to match each manager's budgeted property split (e.g., a manager budgeted 60% Marriott gets 60% of a standard 5/8 built at Marriott) even though salaried staff don't clock in and this has no real downstream effect — done mainly so managers who want to be on the schedule can be, not because it changes any actual.

---

## DoubleTree San Diego Del Mar — Trainer Reassigned (learned informally on this call)

**This was news to Pete, not communicated through any official channel.** Per Taylor, checking Ralph's/Alan's consulting resource calendar live on the call:

- **Configuration: John (Grech), week of October 5, 2026**
- **Training: John (Grech), October 19, 2026**

This property had previously been tracked in `kb.md` as **"TBD — Pete confirmed as trainer 8/20/26."** That assignment has apparently changed on the consulting calendar without Pete being notified — consistent with the standing pattern already flagged elsewhere (Ralph's resource calendar is the source of truth for schedule changes, and updates there don't reliably reach Pete directly). Pete's original interest in this property was scheduling flexibility — being able to train at either property if he was on-site for the other, since they're geographically close — but since the training assignment has moved to John, that coordination question is now moot for Pete specifically.

**Action:** Update `kb.md` and `doubletree-san-diego-del-mar/contacts.md` to reflect John Grech as trainer/configurer (done, see those files). No action needed from Pete on this property going forward unless the assignment changes again.

---

## Follow-Up Items

- Pete to send the standard pre-training timeline/materials package to Sandra, Mark, and Valeria before Monday arrival (in progress as of this call — Taylor sending updated contact list; Pete already has the broader HM Alpha contact file but will need to unhide this property in it before sending).
- Confirm final spelling/name of the third-party contract labor company ("Quick...") before training, so it can be referenced correctly with the property.
- Confirm which placeholder-employee naming convention (Taylor's `C01/C02` vs. John's alternate approach) will be used going forward.
