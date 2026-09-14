---
description: Assemble the supporting-documentation PDF for a finalized, approved expense report
---

# Receipt Packet Assembler

Builds the combined receipts PDF that accompanies a finalized Unifocus ER — matching Unifocus's own submission rule that receipts can be "separate attachments or combined into one PDF." Modeled on 15+ years of Pete's own manual process (see reference packet: Nashville trip 7/13-7/16/26).

**Trust rationale (Pete, 8/15/26, referencing *The Speed of Trust*):** matching the receipt sequence to the ER's own sequence as closely as possible respects the approver/auditor's time — and that respect is itself what builds trust in the report. This is the design principle behind every rule below, not just a formatting preference.

## Trigger discipline

**Never build this automatically.** Only run when:
1. The ER is fully finalized, and
2. Pete has explicitly approved it, and
3. Pete explicitly asks for the receipt packet to be assembled.

An ER being "done" is not the trigger — Pete's explicit go-ahead is.

---

## Step 1 — Confirm the ER is in chronological order

Before assembling, the ER's own line items must already be in pure date order (not grouped by category). If the ER build script hasn't been reworked to output date order yet, do that first — this is now the standard for all future ERs (Unifocus and direct-client alike, per Pete 8/15/26).

**Same-day items:** sequence by the logical flow of the day as it actually happened (e.g., gas → return rental car → fly → layover meal → ground transport to final destination), cross-checking actual receipt timestamps where available. **Ask Pete if the order isn't clear** — don't guess at same-day sequencing.

**Flight dating rule:**
- A round-trip flight is dated on its **first/outbound leg**.
- If that round trip is later changed (rebooking, cancellation) and the change adds expense specifically tied to the return leg, that **added expense** is dated on the day of the **actual (new) return flight** — not the day the change was charged or processed. (Example: Mohonk's weather rebooking — no added fare was charged, so nothing moves; if there had been an added fare, it would date to 8/9, the actual new return day.)

---

## Step 2 — Gather source materials

Source receipts are **not supplied per-trip** — they're continuously archived in `OneDrive\Documents\Personal Finance\Receipts\<year>\` as they arrive (see `finances/receipt-workflow.md`), independent of any specific trip's ER timeline.

For each ER line item: search that year folder (and `Inbox Receipts\` for anything not yet filed) for the matching date + vendor, using **fuzzy matching** — filenames may not exactly match ER wording (e.g., "McDonalds" vs. "McDonald's"). Both photo and digital-PDF receipts live in the same archive.

**Flag any ER line item with no matching source found — don't proceed with gaps.** Ask Pete rather than building around a hole or guessing at a fuzzy match that might be wrong.

---

## Step 3 — Classify each source document

- **Physical receipt (photo/scan)** → gets placed on the Unifocus letterhead stationary (`pws/billing/templates/unifocus-letterhead-stationary.pdf`).
- **Digital/full-page document** (email, downloaded PDF, screenshot, hotel folio, rideshare receipt, flight confirmation) → inserted as its own full page(s), completely unmodified, no stationary. If the source naturally spans multiple pages (e.g., an Uber receipt plus its trip-detail/map page), keep all of them together in original order.

**One page per expense/transaction, not per image.** If a single transaction produced multiple physical slips — e.g., an itemized order receipt plus a separate card-terminal/merchant-copy slip — **both slips share one stationary page together**, exactly as in the reference packet (HMSHost Denver, Nick The Greek, Sixty Vines, Yazoo Beer Cart all do this). Don't split same-transaction slips across pages.

**Don't confuse that with a photo+scan pair of the same single receipt.** It's normal for one receipt to exist as both a phone photo (captured in the moment) and a later desk scan — that's one document captured twice, not two different documents. When both exist, use only one on the page — including both would be redundant, not additive like the multi-slip case above. **Pick whichever is more legible, not automatically the scan** (a photo can sometimes read better than a scan of a faded/crumpled receipt, and vice versa). This is inherently subjective — **if it's not clearly obvious which one reads better, ask Pete rather than guessing.**

---

## Step 4 — Place physical receipts onto the stationary

For each physical-receipt page:
- **Centered** on the page
- **Full/actual size** if it fits within the printable area
- **Rotate freely, including diagonal**, for the natural "taped on" look — this is the established style, not a fallback for when things don't fit
- **Scale down only if the receipt exceeds the 8.5×11 printable area**
- When a same-transaction pair shares a page (Step 3), arrange side by side, both readable, both appropriately sized/rotated
- **If sizing, rotation, or fit is genuinely ambiguous, ask Pete rather than guessing**

---

## Step 5 — Assemble in ER order

Build the combined PDF in the **exact same sequence as the finalized ER's line items** (per Step 1's chronological ordering). This is the whole point — an auditor should be able to flip through the ER and the receipt packet in lockstep.

---

## Step 6 — Output

**One receipt packet per trip** (matching one ER per trip — not per invoice period; ERs and PWS invoices are separate processes connected only by overlapping date range, per Pete 8/15/26).

Save alongside the finished ER — **not the repo** (the repo only ever holds the ER working draft, see `finances/receipt-workflow.md` Storage Locations). Naming convention: `[trip-dates]-receipt-packet.pdf`.

**⚠️ Don't assume the destination folder.** `OneDrive\Documents\Platinum Workforce Strategies\Unifocus Contractor\[trip]\` is where **Unifocus-billable** trips get filed — but not every trip is a Unifocus trip. A non-Unifocus PWS/direct-client trip may file elsewhere under `Platinum Workforce Strategies`, a personal trip has nothing to do with that tree at all, and a trip tied to Dad's POA/house likely lives in yet another folder entirely. **If the correct destination isn't obvious from the trip's context, ask Pete rather than guessing or defaulting to Unifocus Contractor.**

---

## Scope

This is the **single universal process for all clients** — the Unifocus ER format has worked for 15+ years and Pete reuses it even for direct-client work. No per-client variation unless/until a future direct client explicitly requires something different (cross that bridge if/when it happens — don't build alternate processes speculatively).

---

## Technical approach (proven 8/16/26, Mohonk trip — first successful build)

**Acrobat COM automation does NOT work — don't retry it.** Confirmed 8/16/26: this machine's 64-bit Adobe Acrobat (v26.001.21789) fails `E_NOINTERFACE` on `AcroExch.App`/`AcroExch.PDDoc` from both 64-bit and 32-bit PowerShell, in both STA and default threading. Adobe has restricted/deprecated the classic COM automation interface in current 64-bit builds. This is a dead end, not a scripting bug — don't spend time debugging it again.

**What actually works: Python + pypdf + Pillow.** Installed via `winget install Python.Python.3.12` then `pip install pypdf pillow` (free, open-source, fully local — no data leaves the machine). Also installed `pymupdf` for rendering PDF pages to PNG so the output can actually be visually verified via the Read tool (poppler/pdftoppm isn't available on this machine either, so pymupdf is the substitute for checking work).

**Working pipeline** (see `travel/trips/build_mohonk_receipt_packet.py` as the reference implementation):
1. For each physical receipt: `Pillow` opens the JPEG and saves it as a single-page PDF at 72dpi (makes PDF points == image pixels, simplifying transform math).
2. `pypdf` loads that single-page image-PDF and a fresh copy of the stationary template page.
3. Compute a `pypdf.Transformation` (scale → rotate → translate) that fits the image within a **safe zone** — NOT the full page. The letterhead has a header logo in the top ~15% and a footer band in the bottom ~13%; centering/scaling against the full page (as first attempted) causes tall portrait receipts to cover the letterhead entirely. Scale to fit within `page_width × 0.88` and `safe_zone_height × 0.92`, then center within the safe zone's own vertical midpoint (not the full page's).
4. `page.merge_transformed_page(image_page, transform)` stamps the receipt onto the stationary copy.
5. Digital/full-page PDFs get their pages added directly via `PdfWriter.add_page()`, no transformation.
6. Everything assembled into one `PdfWriter` in ER chronological order, written to the output path.

**Always visually verify before declaring done** — render a handful of composited pages to PNG via pymupdf and Read them back. The margin bug above was invisible in the build log (no errors, wrong output) and only caught by actually looking at the result.
