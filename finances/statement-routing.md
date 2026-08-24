<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Statement Routing Table

Reference for `finances/statement-workflow.md` — where each institution's statements go and what naming convention to use. Everything routes through the single `Personal Finance\Statement Inbox\` (see workflow doc — consolidated 2026-08-24, the destination is often in a different OneDrive tree than the inbox itself). Updated live as real statements get processed. Institutions not yet listed here haven't been asked about yet — ask Pete the first time one shows up, then add it. Sections below are grouped by destination archive root, not by inbox.

**Organizing principle, decided 2026-08-24: route by legal/tax entity, not by account or product type.** A bank issuing one combined statement across multiple accounts (e.g., NFCU checking + savings on one PDF) stays as a single file — don't split it apart. A separate statement for a different product under the same membership (e.g., a Certificate of Deposit statement arriving on its own) is filed as its own dated file in the *same* entity's `Statements` folder, not split into a further per-product subfolder. The only thing that forces a genuinely separate folder is a **different legal entity** — the William J. Castellano Revocable Living Trust has its own tax identity and must never be mixed with William's personal accounts or anyone else's, regardless of which bank both are at.

---

## Pete's — destination root `Personal Finance\`

| Institution | Destination folder | Naming convention | Notes |
|---|---|---|---|
| NFCU (all Pete's personal accounts, incl. any CDs) | `Personal Finance\NFCU\Statements\` | `YYYY-MM-DD_STMSSCM.pdf` (bank's own export name, kept as-is) | Already has 2021–present statements filed this way; folder unambiguous, no need to ask. Combined-account statements stay as one file; a separate CD statement for the same month is just another dated file in this same folder — no per-account subfolder. |
| Newrez (mortgage) | `Personal Finance\Newrez\Statements\` | TBD — check existing files before first new one | Folder exists; naming convention not yet confirmed. |
| USSFCU | `Personal Finance\USSFCU\Statements\` | TBD | Folder exists but currently empty — confirm convention when first statement arrives. |

**Not yet routed — ask when first statement for these arrives:** Bank of America (`BOA YYYY_MMDD.pdf` legacy naming — offer to standardize?), FNBO Checking / FNBO PWS Checking / FNBO VISA (`YYYY_MMDD FNB.pdf` legacy naming, three separate folders — confirm which account is which), Discover (stale, last file 2013 — confirm account still active), Ameritrade, Target Card, CitiCard, Venmo, PayPal, Wells Fargo (multiple sub-accounts: WF Active Cash Visa, WF PMA 5060, Wells Fargo Student Loan).

**🔴 Hold, don't file — no destination confirmed yet (as of 2026-08-24):**
- **Kim** — `Documents\Kim\` exists but isn't confirmed as the statements destination. Ask before filing anything of hers.
- **BTTR** — `Documents\BTTR\` exists (bylaws, meeting logs, grant applications, a `Taxes BTTR 2025` folder) but has no clear statements location. Pete wants to design this deliberately, not have a folder created reflexively — flag any BTTR statement to him rather than filing it or creating a new folder.
- **NTSG (New Hearts, Inc.)** — same situation: `Documents\New Hearts Inc\` holds Treasurer's Reports and QuickBooks backups, no clear statements location. Same hold-and-flag rule as BTTR.

---

## William's / Janet's (POA) — destination root `Castellano Family Executor\`

**Statements for either William Castellano (WJC) or Janet Castellano (JLC) both land in the main inbox and route here** — check the name on each statement, don't assume it's William's.

| Institution | Destination folder | Naming convention | Notes |
|---|---|---|---|
| NFCU Trust (**William J. Castellano Revocable Living Trust — separate legal entity, never mix with WJC personal**) | `Castellano Family Executor\NFCU\NFCU Trust\Statements\` | TBD — check existing files | Folder exists, unambiguous destination. Any CD statement under the Trust's membership also goes here, as its own file — not William's personal folder. |
| NFCU WJC (William personally) | `Castellano Family Executor\NFCU\NFCU WJC\Statements\` | TBD — check existing files | Folder exists, unambiguous destination. Any CD statement under William's personal membership also goes here, as its own file. |
| USAA Visa 0149 | `Castellano Family Executor\USAA\Visa 0149\Statements\` | TBD — check existing files | Folder exists, unambiguous destination. |

**Not yet routed:** American Century / American Century Brokerage Dad, AFBA, Advent, Fisher, eTrade, Victory Capital USAA Mutual, USAA Home Auto Insurance (policy, not a bank statement — confirm this belongs here at all), DFAS, PenAir.
