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

For every ER line item, Pete supplies either:
- A **photo/scan of the physical receipt**, or
- The **original digital document** (forwarded email, downloaded PDF/receipt, screenshot)

**Flag any ER line item with no source document yet — don't proceed with gaps.** Ask Pete rather than building around a hole.

---

## Step 3 — Classify each source document

- **Physical receipt (photo/scan)** → gets placed on the Unifocus letterhead stationary (`pws/billing/templates/unifocus-letterhead-stationary.pdf`).
- **Digital/full-page document** (email, downloaded PDF, screenshot, hotel folio, rideshare receipt, flight confirmation) → inserted as its own full page(s), completely unmodified, no stationary. If the source naturally spans multiple pages (e.g., an Uber receipt plus its trip-detail/map page), keep all of them together in original order.

**One page per expense/transaction, not per image.** If a single transaction produced multiple physical slips — e.g., an itemized order receipt plus a separate card-terminal/merchant-copy slip — **both slips share one stationary page together**, exactly as in the reference packet (HMSHost Denver, Nick The Greek, Sixty Vines, Yazoo Beer Cart all do this). Don't split same-transaction slips across pages.

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

Save alongside the trip's ER file, naming convention: `[trip-dates]-receipt-packet.pdf`, same folder as the ER (e.g. `travel/trips/`).

---

## Scope

This is the **single universal process for all clients** — the Unifocus ER format has worked for 15+ years and Pete reuses it even for direct-client work. No per-client variation unless/until a future direct client explicitly requires something different (cross that bridge if/when it happens — don't build alternate processes speculatively).

---

## Technical approach (for build time)

Adobe Acrobat DC is installed and provides a COM automation interface, scriptable via PowerShell (same pattern as the Excel COM automation already used for ER builds). At build time: convert each physical-receipt image to a page, overlay/position it on a copy of the stationary background per Step 4's placement rules, and assemble all pages (stationary-backed physical receipts + untouched full-page digital documents) into one output PDF in the Step 5 order. Exact COM/JS mechanics to be worked out when actually building the first packet — not pre-written here since this file is instructions, not implementation.
