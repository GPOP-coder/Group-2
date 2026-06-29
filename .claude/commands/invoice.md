---
description: Generate a PWS invoice from a Clockify summary PDF
---

# PWS Invoice Generator

Generates a Unifocus (or direct client) invoice from a Clockify time report. Produces a single paste-ready block for Excel.

## Usage

`/invoice [billing period]` — e.g., `/invoice June 16–30 2026`

Billing period from `$ARGUMENTS` sets the invoice date (last day of period) and invoice number. If not provided, ask Pete for it.

---

## Step 1 — Confirm inputs

1. **Billing period** — from `$ARGUMENTS` or ask
2. **Clockify PDF** — Pete pastes or uploads the summary report for the period

---

## Step 2 — Parse the Clockify report

Read the **Project-level summary** (page 1 of the PDF — project name + total duration h:mm:ss).
Ignore the description-level breakdown for the hour calculation.

For each project:
- Extract project name and total duration
- Convert to decimal hours: total_seconds ÷ 3600

**Also extract the per-project Clockify descriptions** (from the detail pages) — list them under each project so Pete can choose or edit the invoice description.

---

## Step 3 — Load rates from rate table

Read `pws/billing/rate-table.md`. Look up each project name exactly.

- If found: use the rate from the table
- If not found: flag as unrecognized (see Step 7)
- $0 or tracking-only projects: exclude from invoice entirely

**Do not recalculate rates from logic during invoice generation. The rate table is the truth.**

---

## Step 4 — Calculate days and line totals

For each billable project:

1. **Raw days** = decimal hours ÷ 8
2. **Truncated days** = drop all digits after the 3rd decimal place (do NOT round up)
   - Example: 0.549583 → 0.549
3. **Line Total** = truncated days × rate (no further rounding)
   - Example: 0.549 × $600.00 = $329.40

The math must stand alone. Qty × Unit Price = Line Total, exactly, with no rounding explanation needed.

---

## Step 5 — Group by billing client

**Unifocus invoice:** Baha Mar (all), Rosewood Baha Mar, Mohonk, Rosewood Miramar, HM Alpha (all), UF Internal Remote Billable, Jumeirah

**Davidson MHBR invoice:** MHBR F&B and Housekeeping projects

**Grand Hyatt Baha Mar invoice:** Grand Hyatt Baha Mar projects

Generate a separate invoice block per client if billable hours exist.

---

## Step 6 — Descriptions

For each invoice line, present:
- The Clockify descriptions logged under that project this period
- A suggested consolidated description (Pete edits as needed)

Pete confirms or rewrites each description before the final block is generated.

**Item type labels:**
- Onsite, standard property → "Onsite Consulting"
- Remote, standard property → "Remote Consulting"
- Onsite, casino property → "Onsite Consulting — Casino"
- Remote, casino property → "Remote Consulting — Casino"

---

## Step 7 — New project protocol

If any project in the report is not in `pws/billing/rate-table.md`:
1. Flag it: "Unrecognized project: [name]"
2. Ask: onsite or remote? Casino property?
3. Add the confirmed rate to rate-table.md
4. Remind Pete to add both Onsite and Remote variants to Clockify if missing

---

## Step 8 — Generate Excel paste block

Output a **single tab-separated block** Pete can paste directly into his invoice Excel template.

Format (tabs between columns, one row per project):

```
Qty[TAB]Item[TAB]Description[TAB]Location[TAB]Unit Price[TAB]Line Total
0.549[TAB]Remote Consulting — Casino[TAB][description][TAB]Baha Mar[TAB]$600.00[TAB]$329.40
...
[TAB][TAB][TAB][TAB]Total[TAB]$X,XXX.XX
```

Label the block clearly so Pete knows to select from the first data row through the Total row, then paste into Excel starting at the Qty column.

**Also display** the full invoice header block (not for paste — for reference when setting up the invoice):

> **Invoice #:** UF[YYYYMMDD]PAC
> **Date:** [last day of billing period]
> **Customer ID:** 20240515
> **Due Date:** [nearest upcoming 5th or 20th after invoice date]
> **Salesperson:** PAC | **Job:** Contractor | **Payment Terms:** Due upon receipt
>
> **Bill to:**
> Attn: Shilpa Bhando, VP of Operations
> Unifocus (Texas), L.P.
> 511 E John W Carpenter Fwy
> Irving, TX 75062
> (954) 512-5100
>
> **Send from:** pcastellano@unifocus.com
> **To:** Shilpab@unifocus.com
> **CC:** peter.a.castellano@outlook.com; heartprincess71@yahoo.com

---

## Step 9 — Record keeping

After Pete confirms the invoice:
1. Offer to save a standalone file at `pws/billing/invoices/[invoice-number].md`
2. Offer to append the summary row to the invoice history table in `pws/billing/kb.md`
