# Unifocus — Knowledge Base

Last updated: 2026-05-26

---

## Platform Overview

Unifocus is a workforce management platform. PWS's consulting methodology is grounded in Unifocus architecture and best practices. All client work involving Unifocus is proprietary — not for model training.

---

## Core Concepts

### Labor Standards — Purpose
Labor standards **model the number of hours required to run an operation** — not the number of hours to schedule. Schedulers must understand this distinction. The schedule is a product of the standard, but the manager controls it once drafted.

### Daily Hours vs. Units/Shift
Two separate settings within a labor standard. Always evaluate independently.

| Setting | What it controls |
|---|---|
| **Daily Hours** | Total hours the standard says the outlet needs to operate |
| **Units/Shift** | Volume-driven metric (covers, transactions, etc.) that drives incremental staffing |

**Diagnosis sequence:** Always examine Daily Hours first before looking at Units/Shift.

---

### Partial Shifts / Short Shifts

**What happens:** When Daily Hours do not divide evenly by the shift length, the remainder generates a short shift. There is no "partial shift feature" to enable or disable — this is inherent system behavior.

**Floor:** The minimum shift length setting determines the shortest shift the system will generate. If the remainder of hours meets or exceeds that minimum, a short shift is scheduled.

**Example:** A 2.5-hour minimum shift length with a remainder triggering that threshold produces a 5:15–7:45pm shift in a dinner operation.

**Fix:** Set Daily Hours to a clean multiple of the shift length. No remainder = no short shift.

**Client guidance:** Explain outcomes and actions, not mechanics. Tell the client what to expect and what to do — not how the calculation works. If short shifts appear: note the issue, move on, the schedule won't re-draft.

---

### Day-of-Week Shift Differentiation

- Unifocus allows separate shift configurations by day of week within the same job
- A day-specific shift with a different length than the rest of the week creates a de facto split standard
- Each day's Daily Hours must be calibrated independently to that day's shift length
- Misalignment between shift length and Daily Hours multiples is a common source of short shifts
- Always confirm whether day-of-week differences are intentional before correcting

---

## Client Communication Standard (PWS)

> Explain outcomes and actions, not mechanics. The client's job is to run the operation. Our job is to know why it works. Reserve technical detail for when the client specifically needs it to make a decision.

This applies across all PWS clients, not just Unifocus engagements.

---

## Open Items

- [ ] PWS employment opportunity: Product Owner role under Priyanka Kalia (VP Product Management) — compensation not yet discussed
- [ ] M365 connector (pcastellano@unifocus.com): approved and active — monitor and provide feedback
