# PWS — Billing & Invoicing

Last updated: 2026-06-29

---

## Unifocus Invoicing

### Send From
`pcastellano@unifocus.com` — always use the Unifocus email for Unifocus work.  
Direct PWS clients use `pete@platinumworkforcestrategies.com`.

### Schedule
- Send on the **15th and last day of the month**
- If either date falls on a weekend, send the **Friday before**
- Billing periods: **1–15** and **16–EOM**

### Distribution — Current (as of May 2026)

| Period | To | CC |
|---|---|---|
| Through May 31 invoices | Ralph Varble (RVarble@unifocus.com) | Shilpa Bhando (Shilpab@unifocus.com); peter.a.castellano@outlook.com; heartprincess71@yahoo.com |
| Mid-June invoice onward | Shilpa Bhando, VP of Operations (Shilpab@unifocus.com) | peter.a.castellano@outlook.com; heartprincess71@yahoo.com |

**Note:** Starting June, Shilpa approves invoices. She forwards approved invoices to: `invoices@unifocus.com`, Rahul Verma, Nita Rawtini. No longer need to include Ralph on mid-June invoice or later.

**Source:** Ralph email 5/12/26 — "Starting in June, Shilpa will approve your invoices."

### Invoice Format

**Numbering:** `UF` + `YYYYMMDD` + `PAC` (e.g., `UF20260514PAC` = May 14, 2026 invoice)  
**Customer ID:** 20240515
**Payment terms:** Due upon receipt  
**Due Date:** closest upcoming 5th or 20th after invoice date
**No timesheet required** — invoice only (per Ralph, June 2025)

**Bill to:**
> Attn: Shilpa Bhando, VP of Operations
> Unifocus (Texas), L.P.
> 511 E John W Carpenter Fwy
> Irving, TX 75062
> (954) 512-5100

**Rounding rule:** Days = TRUNCATE(hours ÷ 8, 3 decimal places). Line Total = truncated days × rate. Math stands alone — no rounding explanation needed on the invoice.

**Descriptions:** Use Clockify entry descriptions as the default; edit each period as needed. Description in Clockify does not need to match the invoice.

**Zero-hour lines:** Per Shilpa (June 2026 onward) — only include projects with actual billable hours.

**Rates:** See `pws/billing/rate-table.md` — the authoritative source. Use `/invoice [period]` skill to calculate from Clockify PDF.

### Rates
| Type | Rate |
|---|---|
| Remote | $500/day |
| Onsite | $600/day |
| Onsite — Casino | $700/day |

---

## Invoice History — Unifocus

| Invoice # | Period | Amount | Status |
|---|---|---|---|
| UF20260514PAC | May 1–14, 2026 | $1,928.50 | Sent to Ralph; CC Shilpa |
| UF20260629PAC | June 16–29, 2026 | $4,197.30 | To Shilpa; CC peter.a + heartprincess71 |

### May 1–14, 2026 Detail
| Qty | Type | Description | Client | Total |
|---|---|---|---|---|
| — | Onsite | Post Go-Live Support | Baha Mar | $0 |
| — | Remote | Post Go-Live Support | Baha Mar | $0 |
| — | Onsite | Culinary Standards Adjustment | Rosewood BHM | $0 |
| 1.931 | Remote | Migration Assistance | Rosewood BHM | $965.50 |
| 1.019 | Remote | Configuration Support | Mohonk | $509.50 |
| — | Onsite | Maintenance Training | Rosewood Miramar | $0 |
| 0.793 | Remote | Configuration Support | Rosewood Miramar | $396.50 |
| — | Onsite | Configuration Support | Rosewood Miramar | $0 |
| 0.114 | Remote | Internal Meetings | Unifocus | $57.00 |
| | | | **Total** | **$1,928.50** |

*$0 lines = no hours logged for those categories during May 1–14*

---

## Invoice Archive

Standalone invoice files stored in `pws/billing/invoices/[invoice-number].md`

## May 15–31 Billing Progress

| Date | Status |
|---|---|
| As of 2026-05-27 | 8 hours logged (~1.0 day) |
| Goal | 40 hours (5.0 days) by May 30 |
| Remaining | ~32 hours across May 27–30 |

**Open categories to bill:** Baha Mar (KBI and BQT work this week), Rosewood Miramar (standards — overdue), Mohonk (on-call server configuration)
