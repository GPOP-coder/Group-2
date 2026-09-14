<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Photography Storage Strategy

**Drafted:** 2026-07-30. Triggered by Google account hitting 94% of 200 GB (188.91 GB used, 164.81 GB of it Google Photos).

**Context:** See [`photography-philosophy.md`](photography-philosophy.md) — photos are Pete's external memory system, "hundreds of thousands of pictures," not disposable stuff (same lens as [[stuff_philosophy_receipts]]). This strategy treats the archive as something to protect, not something to prune down. Brand: Pacific Aperture, Flickr pac402 (234.2K photos posted).

**Constraints established 2026-07-30:**
- Capture source today is **mostly iPhone** (Canon 7D/film gear used less, but not retired — see [`photography-gear.md`](photography-gear.md))
- **Cloud-only** — no NAS, no external drive management. Optimize for low-maintenance, not maximum control.
- **All storage has historically been deducted on Schedule C** (eBay/Photography combined entity) — so there's no need to split business vs. personal photos for storage/cost-tracking purposes. One unified archive is fine; the deduction already covers it regardless of content mix.

---

## Current State (as observed 7/30/26)

| Location | Role today | Size |
|---|---|---|
| Google Photos (pete.castellano@gmail.com) | Primary iPhone backup destination | 164.81 GB |
| Gmail (same account) | Email | 23.72 GB |
| Google Drive (same account) | Misc files | 0.37 GB |
| Flickr (pac402) | Public portfolio | 234.2K photos posted (separate service, own storage/limits) |

**Open question — needs Pete to confirm, not assumed here:** Is iCloud Photos also turned on for the iPhone? If Google Photos is the *only* copy of the phone's camera roll, there is currently **zero redundancy** — a lost/hacked/suspended Google account would mean the archive is gone. If iCloud is also syncing, there's already an incidental second copy and the urgency changes. **This is the single most important fact to confirm before anything else here.**

---

## Recommended Architecture

**Principle:** photos are irreplaceable — treat this as a real backup problem, not a storage-capacity problem. Capacity is the symptom; the actual question is "how many independent copies exist, and what would take out more than one at once?" A single Google account is one login, one billing method, one company's outage away from being a single point of failure.

**Cloud-only version of the classic "multiple independent copies" rule: at least two copies, in two different companies' systems, so no single account lockout/breach/billing lapse takes out the whole archive.**

### 1. Solve the immediate capacity crisis
Upgrade to **Google One 2 TB ($9.99/mo or $99.99/yr)**. At $9.99/month this buys roughly 10x current headroom — years of runway at iPhone-photo volume before this becomes a recurring fire drill. Fully Schedule-C deductible per existing practice. This is the fast, low-effort fix; cleanup (emptying Photos of true junk — screenshots, blurry duplicates) can still happen over time but shouldn't be the thing solving the crisis under time pressure.

### 2. Establish a genuine second copy
Two low-effort ways to get there without adding hardware:
- **If iCloud Photos is already on:** you likely already have this — just confirm it's actually enabled and not just "Optimize iPhone Storage" with nothing backing up. iCloud is billed separately from Google (Apple), so it satisfies the "different company" rule already.
- **If not:** turn on iCloud Photos (iCloud storage tiers are cheap — 200 GB is normally ~$2.99/mo, likely already sized close to what's needed) so the phone is backing up to *two* independent cloud providers automatically, with zero ongoing manual effort. This is the lowest-maintenance way to get real redundancy — it just runs in the background exactly like Google Photos already does.

### 3. Flickr's role — portfolio, not backup
Flickr (pac402) should stay what it already is: the curated public-facing home for Pacific Aperture work, not a backup mechanism. It only holds what Pete chooses to post, not the full raw camera roll, so it doesn't substitute for #2 above — but it's worth keeping in the picture as the "if the archive is a library, Flickr is the display shelf" layer.

### 4. Future: film/negative archive
When the Epson V850 (flatbed scanner, SilverFast SE Plus, still on the watch-for-a-deal list) is eventually acquired, scanned negatives/slides feed into the **same Google Photos archive** — no separate system needed. This plan's architecture already accommodates that; no action needed until the scanner itself is acquired.

---

## Action Items

- [ ] **Confirm iCloud Photos status on the iPhone** — this determines whether redundancy already exists or needs to be turned on
- [ ] **Upgrade to Google One 2 TB** ($9.99/mo or $99.99/yr) — solves the 94%-full crisis with long runway
- [ ] If iCloud isn't already on: enable it, sized to the archive (~200 GB tier likely sufficient to start, watch for it filling too over time)
- [ ] Empty Gmail Trash/Spam as a free quick win regardless (see prior conversation, no dependency on the above)
- [ ] Optional, lower priority: run Google Photos' own "Manage storage" tool to clear true junk (blurry shots, screenshots, duplicates) — not urgent once 2TB is in place, but keeps the archive itself cleaner over time

---

## Why cloud-only, no NAS (decision recorded 7/30/26)

Pete explicitly chose to stay cloud-only rather than add a NAS or external-drive-managed archive — prioritizing low ongoing maintenance over maximum control, consistent with staying focused on billable/priority work rather than infrastructure upkeep. If this changes later (e.g., archive grows large enough that cloud costs become material, or a NAS purchase happens for other reasons), revisit this section.

---

*© Peter A. Castellano. All rights reserved.*
