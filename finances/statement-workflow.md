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
   - **A scan and a download of the same statement (same institution/entity/period) are one document, not two** — same principle as the photo+scan rule in the `receipt-packet` skill. Unlike receipts, don't treat this as a toss-up: **the downloaded PDF is the authoritative digital original and is preferred by default** — a scan is just a re-imaging of a printout of that same data, with no upside except when it's genuinely the only copy available (old/closed accounts with no online access) or it carries something the digital version doesn't (handwritten notes, annotations). Archive the download, discard the scan — unless the scan has extra handwritten content worth preserving, in which case flag it to Pete rather than silently discarding.
3. **Check `finances/statement-routing.md`** for an existing routing decision for that institution/entity.
   - **Known and confirmed:** file it straight into the recorded folder, using the recorded naming convention. No need to ask again.
   - **Entity without a confirmed destination (Kim, BTTR, NTSG, or anything new):** hold it, flag it to Pete, don't create a folder or guess at a destination.
   - **Known entity, unknown institution, or inconsistent existing naming:** ask Pete where it goes, and if the existing folder naming looks inconsistent with the `YYYY-MM-DD Description.ext` convention, offer to standardize it going forward (**not** a silent rename of history — confirm with Pete first, and default to leaving old files alone unless he wants them cleaned up too).
4. **Record the decision** in `finances/statement-routing.md` — folder path + naming convention — so the next statement from that institution files automatically.
5. **Don't touch anything else already in the destination folder.** This workflow only adds statements; it doesn't reorganize the account folder's existing contents.

---

## Naming convention for new statements

Default for anything newly filed under this workflow: `YYYY-MM-DD Institution Statement.pdf` (or a more specific description if the institution has sub-accounts, e.g., `YYYY-MM-DD NFCU Trust Statement.pdf`). Existing files in a folder keep whatever convention they were already using unless Pete asks for a cleanup pass.

---

## Open items

- [ ] No statements have been processed through this workflow yet — `finances/statement-routing.md` is seeded only with folders that were already unambiguous (single `Statements` subfolder, no naming inconsistency to resolve). Everything else gets decided live as real statements come in.
- [ ] Kim, BTTR, and NTSG statement destinations need a deliberate design conversation with Pete — not started yet.
