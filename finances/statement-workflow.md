<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Bank/Account Statement Workflow

Companion to `finances/receipt-workflow.md`, but for downloaded account statements rather than purchase receipts. Statements are archived into Pete's existing **institution-first** folder structure — not the year-first structure used for receipts — because that's already how both Pete's and William's finance folders are organized, and it's the right shape for statements (you look things up by account, not by month).

**Established 2026-08-23**, after deciding against automated bank login/Plaid integration for now (see [[project_statement_download_automation]]) in favor of Pete manually downloading statements and dropping them in a landing folder, same pattern as receipts.

---

## The two landing folders

| Person | Landing folder | Archive root |
|---|---|---|
| Pete | `Personal Finance\Statement Inbox\` | `OneDrive\Documents\Personal Finance\` |
| William / Janet (POA) | `Castellano Family Executor\WJC Statement Inbox\` | `OneDrive\Castellano Family Executor\` |

**The WJC Statement Inbox can hold statements for either William Castellano (WJC) or Janet Castellano (JLC)** — both people's accounts live under the same Castellano Family Executor archive root (see existing `NFCU WJC` vs. folders referencing JLC), so don't assume every statement dropped there is William's. Check the statement itself for whose name is on it before routing.

Both archive roots already contain institution-first folders (one per bank/card/loan/vehicle/topic) predating this workflow, and **both folders hold plenty of non-statement material already** — claims paperwork, POA/trust documents, applications, closing docs, insurance policies. Statements just need to coexist alongside that, not replace it or get separated out into their own filing system.

---

## Processing the inbox

1. **Check both Statement Inbox folders each session** (Pete's `Statement Inbox` and `WJC Statement Inbox`, same habit as the receipts check) for anything not yet filed.
2. **Identify the institution and statement period** from the file itself (open it if the filename isn't self-explanatory).
3. **Check `finances/statement-routing.md`** for an existing routing decision for that institution.
   - **Known institution:** file it straight into the recorded folder, using the recorded naming convention. No need to ask again.
   - **Unknown institution, or an institution whose existing folder has an inconsistent/no naming convention:** ask Pete where it goes, and if the existing folder naming looks inconsistent with the `YYYY-MM-DD Description.ext` convention, offer to standardize it going forward (**not** a silent rename of history — confirm with Pete first, and default to leaving old files alone unless he wants them cleaned up too).
4. **Record the decision** in `finances/statement-routing.md` — folder path + naming convention — so the next statement from that institution files automatically.
5. **Don't touch anything else already in the destination folder.** This workflow only adds statements; it doesn't reorganize the account folder's existing contents.

---

## Naming convention for new statements

Default for anything newly filed under this workflow: `YYYY-MM-DD Institution Statement.pdf` (or a more specific description if the institution has sub-accounts, e.g., `YYYY-MM-DD NFCU Trust Statement.pdf`). Existing files in a folder keep whatever convention they were already using unless Pete asks for a cleanup pass.

---

## Open items

- [ ] No statements have been processed through this workflow yet — `finances/statement-routing.md` is seeded only with folders that were already unambiguous (single `Statements` subfolder, no naming inconsistency to resolve). Everything else gets decided live as real statements come in.
