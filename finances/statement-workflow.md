<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Bank/Account Statement Workflow

Companion to `finances/receipt-workflow.md`, but for downloaded/scanned account statements rather than purchase receipts. Statements are archived into Pete's existing **institution-first** folder structure — not the year-first structure used for receipts — because that's already how these finance folders are organized, and it's the right shape for statements (you look things up by account, not by month).

**Established 2026-08-23**, after deciding against automated bank login/Plaid integration for now (see [[project_statement_download_automation]]) in favor of Pete downloading or scanning statements himself and dropping them in a landing folder, same pattern as receipts. **Consolidated to a single inbox 2026-08-24** — a separate `WJC Statement Inbox` existed briefly for William/Janet's material but was retired in favor of one universal inbox for everything.

**Scanned vs. downloaded doesn't matter.** Both land in the same Inbox and get processed identically — what matters is identifying the institution/entity/date from the file itself, not how it arrived. The only practical difference is that a scan may need closer visual reading (handwriting, image quality, crumpled originals) where a direct download is usually clean and text-searchable, but that's a reading-effort difference, not a workflow difference.

---

## One landing folder for everything

**`Personal Finance\Statement Inbox\`** is the single universal front door — Pete's own accounts, Kim's, William's/Janet's (the old Family Executor tree), the Trust, BTTR, and NTSG (New Hearts, Inc.) all funnel through here, regardless of where the file actually needs to end up.

The **destination is not necessarily anywhere near the inbox** — a statement dropped here might get filed under `OneDrive\Documents\Personal Finance\...`, `OneDrive\Castellano Family Executor\...`, or wherever else is correct for that entity. The inbox is purely a landing zone; identify who/what a statement is actually for before routing, don't assume based on where it was dropped.

**Entities with a confirmed destination:** Pete personally, William personally (WJC), the William J. Castellano Revocable Living Trust — separate legal entity from William's personal accounts, see `finances/statement-routing.md`.

**Entities without a confirmed destination yet — hold and flag, don't file or create a folder unasked:**
- **Kim** — a `Documents\Kim\` folder exists but isn't confirmed as the statements destination.
- **BTTR** — `Documents\BTTR\` exists (bylaws, meeting logs, grant applications, a `Taxes BTTR 2025` folder) but has no clear statements location.
- **NTSG (New Hearts, Inc.)** — `Documents\New Hearts Inc\` holds Treasurer's Reports and QuickBooks backups, no clear statements location.
- **Janet Castellano (JLC)** — distinct from William; check the name on the statement, don't assume William's just because it came through with his stuff. (Note: `OneDrive\Janet Castellano Records` exists but holds medical records, not financial — not the statements destination.)

Pete wants these designed deliberately, not reflexively the first time a statement shows up.

**Out of scope, leave alone (confirmed 2026-08-24):** several older, decades-old catch-all folders predate this system and are not part of it — `OneDrive\Scanner Inbox OneDrive\`, `OneDrive\Need to file\`, `Documents\Scans to file\`, `Documents\Scanned Documents\`, `Documents\Personal Finance old\`. Don't fold these in or try to process them as part of this workflow unless Pete explicitly asks for that as a separate project.

Every destination archive root already contains institution-first folders (one per bank/card/loan/vehicle/topic) predating this workflow, and **those folders hold plenty of non-statement material already** — claims paperwork, POA/trust documents, applications, closing docs, insurance policies. Statements just need to coexist alongside that, not replace it or get separated out into their own filing system.

---

## Processing the inbox

1. **Check the Statement Inbox each session** (same habit as the receipts check) for anything not yet filed.
2. **Identify the institution, entity/person, and statement period** from the file itself (open it if the filename isn't self-explanatory) — don't assume based on what else is in the batch.
   - **Revised 2026-08-24, after the first real batch: keep every scan, even ones that look like a duplicate of a download — do not discard scans as a default policy.** Real-world evidence overturned the original "download wins" assumption: the WJC USAA Visa scans in the first batch consistently carried handwritten payment-confirmation notes ("paid $X, [source], [date]") — the scan was doing real bookkeeping work, not just redundant backup. **Only delete a file when it's a byte-for-byte identical duplicate** (verify with a hash, don't guess from filenames or file size) — Pete would rather have a messy archive with duplicates than lose an annotated copy. When multiple non-identical copies of the same statement exist, file all of them with a `(2)`, `(3)`... suffix rather than picking one. **Deduplication is a deliberate future step, not something to solve inline** — Pete is more interested in completeness (having every statement) than tidiness right now; he may later ask, account by account, to review copies for cleanup.
   - **The filename date is the statement date (e.g., the closing date on a credit card statement), not the date it was scanned or downloaded.** These can differ — a batch of scans in this workflow had a 2-day gap between the real statement closing date and the date embedded in the original scan filename (the scanning date). Verify the actual date from the document content when there's any doubt, don't trust the source filename blindly.
3. **Check `finances/statement-routing.md`** for an existing routing decision for that institution/entity.
   - **Known and confirmed:** file it straight into the recorded folder, using the recorded naming convention. No need to ask again.
   - **Entity without a confirmed destination (Kim, BTTR, NTSG, or anything new):** hold it, flag it to Pete, don't create a folder or guess at a destination.
   - **Known entity, unknown institution, or inconsistent existing naming:** ask Pete where it goes, and if the existing folder naming looks inconsistent with the `YYYY-MM-DD Description.ext` convention, offer to standardize it going forward (**not** a silent rename of history — confirm with Pete first, and default to leaving old files alone unless he wants them cleaned up too).
4. **Record the decision** in `finances/statement-routing.md` — folder path + naming convention — so the next statement from that institution files automatically.
5. **Don't touch anything else already in the destination folder.** This workflow only adds statements; it doesn't reorganize the account folder's existing contents.

---

## Naming convention for new statements

**Pete's own documents:** `YYYY-MM-DD Institution Statement.pdf` (or a more specific description if the institution has sub-accounts, e.g., `YYYY-MM-DD NFCU Trust Statement.pdf`).

**William's (WJC) or Janet's (JLC) documents, decided 2026-08-24:** `YYYY-MM-DD WJC Institution Description.pdf` or `YYYY-MM-DD JLC Institution Description.pdf` — initials right after the date so whose document it is is visible at a glance, before the institution. "Description" is usually "Statement" or "Payment" but isn't fixed — treat each new document type as a learning opportunity and ask Pete what the description should be until a clear pattern is established, then use it consistently. Example: `2026-03-13 WJC NFCU Statement.pdf`, `2020-06-01 JLC USAA Payment.pdf`.

Existing files already in a folder keep whatever convention they were already using unless Pete asks for a cleanup pass — this convention only applies to what gets newly filed through this workflow.

---

## Gap analysis (future step, not this workflow)

Pete's actual end goal for the WJC/JLC accounts is a **complete** statement history per account so he can identify and go download whatever's missing. Filing accurately (correct dates, correct account) during inbox processing is what makes that possible later — but the gap analysis itself is a separate, deliberate, account-by-account step Pete will request explicitly (e.g., "check NFCU WJC for gaps since 2025") — don't run it proactively as part of routine inbox processing.

## Open items

- [x] **First real batch processed 2026-08-24** — 40 files (WJC USAA Visa 0149 statements 2022–2025, two Auto/Home insurance policy documents, a Homeowners insurance bill, Janet's 2021 E*TRADE statement, and an estate-related USAA rewards-correction letter). See `finances/statement-routing.md` for the resulting destinations and what was learned.
- [ ] Kim, BTTR, and NTSG statement destinations need a deliberate design conversation with Pete — not started yet.
