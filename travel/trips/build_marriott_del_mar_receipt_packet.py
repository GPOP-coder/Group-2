"""
Build Marriott Del Mar, San Diego Trip Receipt Packet.

All 5 ER line items are digital/full-page PDFs (no physical receipts this
trip - everything was flights and Uber, no printed slips). Digital PDFs get
inserted as-is, unmodified, in the same order as the ER's chronological
line items.

Note: the return flight is split into two ER lines - the reimbursable
$392.40 original fare, and a $0.00 documentation-only line for the $57.00
change fee (paid personally, shown to confirm the return flight actually
happened on 9/12). Both get their own source page here, matching the ER.
"""

from pathlib import Path
from pypdf import PdfReader, PdfWriter

ARCHIVE = Path(r"C:\Users\peter\OneDrive\Documents\Personal Finance\Receipts\2026")
OUT_DIR = Path(r"C:\Users\peter\OneDrive\Documents\Platinum Workforce Strategies\Unifocus Contractor\2026-09-12 Sandiego Marriott DM")
OUTPUT = OUT_DIR / "2026-09-07_2026-09-12-marriott-del-mar-receipt-packet.pdf"

# Ordered source list - matches the ER's chronological line order.
SOURCES = [
    ("2026-09-07 Southwest OMA-SAN AHUTML.pdf", "Air Fare - OMA-SAN (AHUTML), $336.40"),
    ("2026-09-07 Uber SAN Airport to Marriott Del Mar.pdf", "Uber - SAN Airport to Marriott Del Mar, $68.83"),
    ("2026-09-12 Uber Marriott Del Mar to SAN Airport.pdf", "Uber - Marriott Del Mar to SAN Airport, $62.95"),
    ("2026-09-11 Southwest SAN-OMA BEIJHG original booking superseded.pdf", "Air Fare - SAN-OMA (BEIJHG), $392.40 reimbursable fare"),
    ("2026-09-12 Southwest SAN-OMA BEIJHG change fee.pdf", "Air Fare - SW change fee, $57.00, $0.00 on ER (personal, documentation only)"),
    ("2026-09-12 Uber OMA Airport to Home Bellevue.pdf", "Uber - OMA Airport to Home (Bellevue), $32.94"),
]


def main():
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    final = PdfWriter()

    missing = []
    for fname, label in SOURCES:
        fpath = ARCHIVE / fname
        if not fpath.exists():
            missing.append(str(fpath))
            print(f"MISSING: {fpath}")
            continue

        reader = PdfReader(str(fpath))
        for p in reader.pages:
            final.add_page(p)
        print(f"Inserted (digital, {len(reader.pages)}p): {label}")

    with open(OUTPUT, "wb") as f:
        final.write(f)

    print(f"\nSaved: {OUTPUT}")
    print(f"Total pages: {len(final.pages)}")
    if missing:
        print(f"MISSING SOURCES ({len(missing)}): {missing}")


if __name__ == "__main__":
    main()
