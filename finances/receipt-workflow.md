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
- **A single receipt may legitimately exist as both a photo (captured in the moment) and a scan (done later at the desk) — both are acceptable, no need to force one or delete the other.** File both under the same date/vendor; the differing extension usually disambiguates them, otherwise use the same-vendor-same-date suffix rule. When building a receipt packet and both exist for the same physical receipt, use only one on the page — whichever is **more legible** (not automatically the scan; a photo can sometimes read better than a scan of a faded/crumpled receipt, and vice versa). This call is inherently subjective — ask Pete if it's not clearly obvious which one reads better. This is distinct from the "multiple slips share a page" rule, which is for genuinely different documents (e.g. itemized receipt + card terminal slip), not two captures of the same one.

---

## Storage Locations (corrected 2026-08-15 — real practice, not the repo)

| Artifact | Location | Notes |
|---|---|---|
| **Raw receipt archive** (all types — personal, PWS, travel; photos and digital PDFs alike) | `OneDrive\Documents\Personal Finance\Receipts\<year>\` | Single universal archive, all purposes, searchable by filename. Lands in `Inbox Receipts\` first, then renamed and moved here. This is the real single source of truth for source receipts — decoupled from any specific trip/ER build. |
| **Finished trip deliverables** (ER `.xlsx` + assembled receipt packet PDF) | Varies by trip type — see note below | The actual filed copy — Pete cuts and pastes the repo's draft ER into Unifocus's own approved blank spreadsheet, and this is where that lives. |
| **ER working draft** (`.xlsx`, built by the PowerShell scripts) | `travel/trips/` in this repo | Git-versioned draft only — not the final filed copy. One-directional: repo draft → Pete pastes into the real Unifocus form → filed in Unifocus Contractor folder above. |
| ~~`finances/receipts/`, `travel/trips/receipts/` (repo)~~ | Deprecated | Not the real workflow in practice — superseded by the OneDrive year-folder archive above. |

**⚠️ Finished-deliverable destination is not one-size-fits-all (added 2026-08-15).** `Platinum Workforce Strategies\Unifocus Contractor\[trip]\` is specifically for **Unifocus-billable** trips. A non-Unifocus PWS/direct-client trip may file elsewhere under `Platinum Workforce Strategies`; a personal trip isn't under that tree at all; a trip tied to Dad's POA/house lives in yet another location. **If the destination isn't obvious from context, ask Pete — never default to Unifocus Contractor for a trip that isn't one.**

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

## Workflow Steps (revised 2026-08-15 — decoupled capture from trip/ER usage)

**Capture and archiving (continuous, independent of any specific trip):**
1. **At desk (standard):** Feed receipt through ADS-2000 → PDF → lands in OneDrive
2. **At desk (damaged receipt):** Place on Brother 2380 flatbed → PDF
3. **On the road:** Photo with iPhone camera (auto-syncs to OneDrive Camera Roll) or scan with Genius Scan/Adobe Scan
4. **Log/archive:** Rename per `YYYY-MM-DD Vendor Description.ext` (append trip/purpose context to the description where obvious, e.g. "Mohonk," "PWS," "split") and move from `Inbox Receipts\` into `Personal Finance\Receipts\<year>\`. This step is **not tied to when a specific trip's ER gets built** — it happens as receipts arrive, checked each session (see [[feedback-receipt-folder-check]]).

**Trip/ER usage (separate, on-demand):**
5. **Financial data entry:** As Pete relays receipt details (amount, vendor, category), Claude logs them into the trip's markdown receipt log and the ER build script — doesn't require the image to be archived yet.
6. **Receipt packet assembly (once the ER is finalized and approved):** Claude searches the year-folder archive by the trip's date range (fuzzy vendor-name matching, not exact filename) to find the matching source files, then builds the combined packet per the `receipt-packet` skill.
7. **Filing:** Pete pastes the repo's draft ER into Unifocus's official blank form; both the final ER and the assembled receipt packet get filed in the Unifocus Contractor trip folder.

---

## Destination Systems

| Expense Type | Destination |
|---|---|
| PWS billable/deductible | QuickBooks (future) + `finances/pws-business-expenses.md` |
| Travel reimbursement (Unifocus/client) | PowerShell ER build script → xlsx → submit to Ralph Varble |
| Personal expenses | Quicken Simplifi + receipt attachment |
| NTSG / BTTR org expenses | QuickBooks (future) |
| eBay/Photography (Schedule C) | QuickBooks (future) + `finances/ebay-photography-business-expenses.md` |
