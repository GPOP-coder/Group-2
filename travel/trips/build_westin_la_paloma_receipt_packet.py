"""
Build Westin La Paloma Trip Receipt Packet.

Physical receipts get composited onto the Unifocus letterhead stationary
(centered, full size when it fits, rotated for a natural "taped on" look).
Digital/full-page PDFs get inserted as-is, unmodified.
Everything assembled in the same order as the ER's chronological line items.
"""

import io
from pathlib import Path
from PIL import Image
from pypdf import PdfReader, PdfWriter, Transformation

ARCHIVE = Path(r"C:\Users\peter\OneDrive\Documents\Personal Finance\Receipts\2026")
STATIONARY = Path(r"C:\Users\peter\Documents\Group-2\pws\billing\templates\unifocus-letterhead-stationary.pdf")
OUT_DIR = Path(r"C:\Users\peter\OneDrive\Documents\Platinum Workforce Strategies\HM Alpha\Westin La Paloma")
OUTPUT = OUT_DIR / "2026-08-16_2026-08-21-westin-la-paloma-receipt-packet.pdf"

# Ordered source list - matches the ER's chronological line order.
# ("digital", filename) -> insert all pages as-is
# ("physical", filename, rotation_degrees) -> composite onto stationary
SOURCES = [
    ("digital", "2026-08-16 Southwest Trip Confirmation BQR3JN Westin La Paloma.pdf"),
    ("physical", "2026-08-16 Marczyks DIA Westin La Paloma.jpeg", -3),
    ("digital", "2026-08-16 Uber TUS Airport to Westin La Paloma.pdf"),
    ("digital", "2026-08-21 Uber Westin La Paloma to TUS Airport.pdf"),
    ("physical", "2026-08-21 Marczyks DIA Westin La Paloma.jpeg", 4),
    ("digital", "2026-08-21 Southwest Trip Confirmation A9QZXC Westin La Paloma.pdf"),
]

# Letterhead has a header logo in the top ~15% and a footer band in the
# bottom ~13% (per the Mohonk build) - receipts must stay within the safe
# zone between them, not the full page.
TOP_MARGIN_FRACTION = 0.15
BOTTOM_MARGIN_FRACTION = 0.13
MAX_WIDTH_FRACTION = 0.88
SAFE_ZONE_FILL = 0.92  # use up to 92% of the safe zone itself


def image_to_pdf_page(image_path: Path):
    """Load a JPEG and return a single-page pypdf page sized to the image, at 72dpi coordinate space."""
    img = Image.open(image_path)
    img = img.convert("RGB")
    buf = io.BytesIO()
    # Save at 72 dpi so PDF point size == pixel size (simplifies transform math)
    img.save(buf, format="PDF", resolution=72.0)
    buf.seek(0)
    reader = PdfReader(buf)
    return reader.pages[0], img.width, img.height


def build_composite_page(stationary_page_template, image_path: Path, rotation: float):
    """Return a fresh stationary page with the receipt image centered, scaled to fit, and rotated on top."""
    # Fresh copy of the stationary page each time (pages are mutated by merge)
    writer = PdfWriter()
    writer.add_page(stationary_page_template)
    page = writer.pages[0]
    page_w = float(page.mediabox.width)
    page_h = float(page.mediabox.height)

    img_page, img_w, img_h = image_to_pdf_page(image_path)

    # Safe zone excludes the header logo (top) and footer band (bottom).
    safe_top = page_h * (1 - TOP_MARGIN_FRACTION)
    safe_bottom = page_h * BOTTOM_MARGIN_FRACTION
    safe_height = safe_top - safe_bottom
    safe_center_y = (safe_top + safe_bottom) / 2

    # Scale to fit within the safe zone, preserving aspect ratio.
    # "Full size if it fits" -> only scale down when the image exceeds that box.
    max_w = page_w * MAX_WIDTH_FRACTION
    max_h = safe_height * SAFE_ZONE_FILL
    scale = min(max_w / img_w, max_h / img_h, 1.0)

    scaled_w = img_w * scale
    scaled_h = img_h * scale

    import math
    rad = math.radians(rotation)
    rot_w = abs(scaled_w * math.cos(rad)) + abs(scaled_h * math.sin(rad))
    rot_h = abs(scaled_w * math.sin(rad)) + abs(scaled_h * math.cos(rad))

    # After scale+rotate around origin, the image's rotated bbox
    # top-left is at some offset; shift so that rotated bbox is centered on page.
    corners = [(0, 0), (scaled_w, 0), (0, scaled_h), (scaled_w, scaled_h)]
    rc = []
    for cx, cy in corners:
        rx = cx * math.cos(rad) - cy * math.sin(rad)
        ry = cx * math.sin(rad) + cy * math.cos(rad)
        rc.append((rx, ry))
    min_x = min(p[0] for p in rc)
    min_y = min(p[1] for p in rc)

    tx = (page_w - rot_w) / 2 - min_x
    ty = safe_center_y - rot_h / 2 - min_y

    transform = Transformation().scale(scale, scale).rotate(rotation).translate(tx, ty)

    page.merge_transformed_page(img_page, transform)
    return page


def main():
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    stationary_reader = PdfReader(str(STATIONARY))
    final = PdfWriter()

    missing = []
    for entry in SOURCES:
        kind = entry[0]
        fname = entry[1]
        fpath = ARCHIVE / fname
        if not fpath.exists():
            missing.append(fname)
            print(f"MISSING: {fname}")
            continue

        if kind == "digital":
            reader = PdfReader(str(fpath))
            for p in reader.pages:
                final.add_page(p)
            print(f"Inserted (digital, {len(reader.pages)}p): {fname}")
        else:
            rotation = entry[2]
            template_page = stationary_reader.pages[0]
            composite = build_composite_page(template_page, fpath, rotation)
            final.add_page(composite)
            print(f"Composited (physical): {fname}")

    with open(OUTPUT, "wb") as f:
        final.write(f)

    print(f"\nSaved: {OUTPUT}")
    print(f"Total pages: {len(final.pages)}")
    if missing:
        print(f"MISSING SOURCES ({len(missing)}): {missing}")


if __name__ == "__main__":
    main()
