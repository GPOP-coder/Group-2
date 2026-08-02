# Rosewood Miramar Beach — Knowledge Base

Last updated: 2026-08-01

---

## Property Overview

**Full name:** Rosewood Miramar Beach
**Location:** Montecito, CA
**Type:** Ultra-luxury resort
**Status:** 🔴 Billable work overdue — labor standards configuration

**Non-compete note:** CTF BM Operations d/b/a Rosewood is a named carve-out in Pete's Unifocus non-compete — direct PWS client relationship permitted.

---

## Contacts

| Name | Title | Notes |
|---|---|---|
| Anthony Weber | — | Contacted re: broken BQT file |
| Nattha | — | Following up on BQT file issue |
| Robinette Unpingco | Pool & Beach | Needs to provide shift times |

---

## Project Status

### 🔴 Labor Standards Configuration — OVERDUE

Pete met with all outlets February 16–20 except two:
- **AMA Sushi** — configure remotely
- **Spa** — configure remotely

All other outlets were scoped during the onsite visit; configuration work is pending.

### 🔴 BQT File — Broken 1+ Year

The banquet (BQT) file has been broken for over a year.
- Anthony Weber contacted
- Nattha following up
- Status: not yet resolved

**UNIFOCUS-235850 (opened, marked "resolved" 7/28/26 — reopen/follow up):** Support ticket "Rosewood Miramar BQT Forecast and Actuals Mapped But Not Importing" — Pete's description: BQT KBIs mapped on both forecast and actuals side, zeros appearing in most KBIs, looks like an automation is attempting to import volumes. Pete asked: (1) is something wrong in the automation, (2) are we getting a file to import — if so is the file wrong, if not what's needed to restart the transfer, (3) requested a sample file to validate event/booking types in use, (4) what else is needed to revive the interface.

**Heather Close's response (7/28/26 3:36 PM), then marked resolved:** event KBIs are still mapped to the **old Delphi interface** — need updating to their current KBI report. Attached today's report for reference: `K6U_KBI_07282026.csv`. **This only partially answers Pete's questions** — doesn't confirm whether a file is actively transferring, doesn't provide historical sample data to validate event/booking types, and the "resolved" status looks premature given the open questions. **Billable weekend work (per Pete, 7/31/26):** working this ticket over the weekend to push it forward — log the time in Clockify.

**Pete's reply, reopening the ticket (8/1/26 6:12 PM) — sharper diagnosis:**
- The `K6U_KBI_07282026.csv` Heather attached is **too coarse to be the actual problem file** — it only breaks volumes into Breakfast/Lunch/Dinner totals, not real Events/BEO-level granularity (Breakfast Plated vs. Breakfast Buffet vs. Breakfast Continental, etc. — the same level of detail this file needs to see, echoing the exact granularity gaps found live on the Union Station Nashville call 7/31/26).
- **Pete's actual theory:** the real missing piece is a separate **Banquet BEO file** (one row per BEO line item) — likely named a DELPHI or BQT file — and *that's* the file that's actually broken/not importing, not the KBI summary Heather sent.
- **Pete can't tell from the front-end** whether (a) Rosewood isn't sending that file, (b) Unifocus isn't staging it for import, or (c) the mapping itself needs updating — asked Heather directly which of these it is.
- **Asked whether mapping should target "BQT" or "DELPHI"** — naming/terminology itself is ambiguous from Pete's side.
- **Requested Heather attach an actual sample of the BEO-level file** (not another KBI summary) so the real structure can be validated.

### Pool & Beach

Shift times still needed from Robinette Unpingco before standards can be configured.

---

## Open Items

- [ ] Configure AMA Sushi labor standards (remote)
- [ ] Configure Spa labor standards (remote)
- [ ] Resolve BQT file — follow up with Anthony Weber / Nattha
- [x] **Reopen UNIFOCUS-235850** — ✅ Reopened 8/1/26; Pete's reply sharpened the diagnosis (real problem is likely a missing/broken BEO-level Banquet file, not the coarse KBI summary Heather sent) and asked her to confirm file-transfer status + attach a real BEO-level sample. Awaiting Heather's response.
- [ ] Obtain Pool & Beach shift times from Robinette Unpingco
- [ ] Complete all outlet configurations and deliver
