<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Receipt Scanning & Expense Tracking Workflow

**Scope:** PWS business expenses, personal expenses, and travel reimbursements

---

## Hardware

| Device | Role | Use Case |
|---|---|---|
| **Brother ADS-2000** | Primary scanner | Standard receipts — duplex ADF, scan straight to PDF |
| **Brother 2380** | Secondary/backup | Crumpled, fragile, or oddly-shaped receipts that won't feed through ADF |
| **iPhone + camera** | Mobile capture | Receipts collected away from the desk; use Genius Scan or Adobe Scan to export as PDF, or plain camera photo |

**Rejected option:** NeatReceipts/Neat — original scanner hardware is end-of-life/unsupported; current Neat product is a subscription bookkeeping app, not a scanner. Not in stack.

---

## Scanning Settings

- **Format:** Plain PDF (no OCR, no searchable text layer required)
- **Resolution:** Standard 300 dpi sufficient for Claude extraction
- **Duplex:** On by default for ADS-2000; use as needed

---

## File Naming Convention

```
YYYY-MM-DD Vendor Description.ext
```

**Examples:**
- `2026-07-03 Goodwill GoodBytes PWS.pdf`
- `2026-07-12 Target Bellevue PWS split.jpeg`
- `2026-07-06 HMSHost Denver Airport.jpeg`
- `2026-07-09 Sazerac Bar MSY.jpeg`

**Rules:**
- Date first (ISO format), space, then vendor name; additional description words are optional — add only to differentiate when the same vendor appears more than once on the same date
- Extension matches the actual file type (`.pdf` for scans, `.jpeg` for phone photos)
- For mixed-category receipts, append `split` in the description to signal that proportional allocation was applied

---

## Storage Locations

| Receipt Type | Folder |
|---|---|
| PWS business expenses | `finances/receipts/` |
| eBay/Photography business expenses | `finances/receipts/` |
| Travel trip expenses | `travel/trips/receipts/` |

---

## Data Extraction (Claude)

Claude reads the receipt image or PDF and:

1. **Extracts line items** — vendor, date, individual items, subtotal, tax, tip, total
2. **Categorizes** — Electronics, Office Supplies, Meals (Bkfst/Lunch/Dinner), Hotel, Air Fare, etc.
3. **Proportionally allocates tax and discounts** for mixed-category receipts
   - Each item's share = (item price ÷ subtotal) × total discount or tax
4. **Updates the appropriate tracking file** — `finances/pws-business-expenses.md` or the relevant expense report

No OCR software or paid receipt-management subscription required.

---

## Workflow Steps

1. **At desk (standard):** Feed receipt through ADS-2000 → PDF → save to `finances/receipts/` or `travel/trips/receipts/` with correct name
2. **At desk (damaged receipt):** Place on Brother 2380 flatbed → PDF → same naming/storage
3. **On the road:** Photo with iPhone camera, or scan with Genius Scan/Adobe Scan → export as PDF → name and drop into repo at next sync
4. **Extraction:** Drop file into Claude session → extract → update tracking doc → commit

---

## Destination Systems

| Expense Type | Destination |
|---|---|
| PWS billable/deductible | QuickBooks (future) + `finances/pws-business-expenses.md` |
| Travel reimbursement (Unifocus/client) | PowerShell ER build script → xlsx → submit to Ralph Varble |
| Personal expenses | Quicken Simplifi + receipt attachment |
| NTSG / BTTR org expenses | QuickBooks (future) |
| eBay/Photography (Schedule C) | QuickBooks (future) + `finances/ebay-photography-business-expenses.md` |
