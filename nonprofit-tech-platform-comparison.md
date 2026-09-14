<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Microsoft 365 vs. Google Workspace for Nonprofits — Comparison

**Researched:** 2026-07-31, for BTTR (Back to the River, Inc.) and NTSG (New Hearts, Inc. dba Nebraska Transplant Support Group) — neither org currently has its own dedicated email/productivity platform.

**Bottom line recommendation:** Microsoft 365 for Nonprofits (Business Basic, free tier) for both BTTR and NTSG — not because Google's offer is worse on paper (it's actually more generous in raw numbers), but because it keeps both orgs inside the ecosystem Pete already runs daily (Outlook, Teams, OneDrive), and matches the existing Claude Chief-of-Staff connector pattern (M365 connector is pre-registered by Microsoft/Anthropic and already working for the Unifocus tenant — adding BTTR/NTSG tenants would likely follow the same low-friction path). See "Why this leans Microsoft" below before deciding.

---

## Eligibility (both require nonprofit verification via TechSoup)

| | Microsoft 365 Nonprofit | Google Workspace for Nonprofits |
|---|---|---|
| Verification | TechSoup validates nonprofit status | TechSoup validates nonprofit status (2–14 business days) |
| Excluded orgs | Religious institutions, government agencies, political organizations | Government entities, hospitals/healthcare, schools/universities (philanthropic arms may qualify) |
| Structure requirement | 501(c)(3) (standard) | Must hold **own** 501(c)(3) status, or a group exemption with proven affiliation — fiscally sponsored orgs without their own 501(c)(3) are **not** eligible |

**Action needed either way:** confirm both BTTR (Inc., ~30 years, incorporated 2001) and New Hearts, Inc. (dba NTSG) hold their own standalone 501(c)(3) status, not fiscal sponsorship — this is a hard eligibility gate for Google specifically, and standard practice for Microsoft too. (Nothing on file suggests either is fiscally sponsored — both read as standalone incorporated nonprofits — but worth confirming with each org's paperwork before applying.)

---

## Free-tier comparison

| | Microsoft 365 Business Basic (Nonprofit, free) | Google Workspace for Nonprofits (free, Business Starter-equivalent) |
|---|---|---|
| Cost | Free | Free |
| User cap | Up to 300 licenses | Up to 2,000 user accounts |
| Storage | 1 TB OneDrive **per user** | 100 TB **pooled** across the whole org (Gmail, Drive, Photos) |
| Core apps | Web/mobile Word, Excel, PowerPoint; Teams; business email | Gmail (custom domain), Drive, Docs, Sheets, Slides |
| Meetings | Teams | Google Meet, up to 100 participants |
| Extras | — | Gemini, NotebookLM (AI tools) included |
| Desktop apps | **Not included** at this free tier (web/mobile only) | N/A (Google's suite is web-native by design) |

For orgs the size of BTTR or NTSG (a handful of board members, not hundreds of staff), both the 300-user and 2,000-user caps are moot, and both storage pools (1TB/user vs. 100TB pooled) vastly exceed realistic need even accounting for BTTR's 25+ years of records-preservation scanning project. The practical difference is smaller than the raw numbers suggest.

---

## First-level paid plan comparison (verified directly from Microsoft's and Google's own nonprofit pricing pages, 2026-07-31)

| | Microsoft 365 Business Standard (Nonprofit) | Google Workspace Business Standard (Nonprofit) |
|---|---|---|
| Price (annual billing) | **$3.36/user/month** | **$3.50/user/month** |
| Price (monthly billing) | — | $4.20/user/month |
| Discount vs. commercial | ~75% off | 75%+ off |
| Storage | 1 TB/user (OneDrive) + 100 GB mailbox + 50 GB archive | 2 TB/user (dedicated, not pooled — differs from the free tier's shared 100TB pool) |
| What it adds over free tier | **Desktop** Word/Excel/PowerPoint/Outlook (free tier is web/mobile only) — plus Clipchamp, Loop, Bookings, Planner, Forms | More per-user storage; Meet stays at 150 participants (same as free) |
| Security | Basic spam/malware filtering (advanced security is the next tier up, Business Premium at $5.50/user/month) | Not itemized at this tier on Google's page |

**Practically identical price** (14 cents apart). The meaningful difference is *what* the paid jump buys: Microsoft's paid tier is where you gain actual desktop Office apps (a real functional upgrade); Google's paid jump is mostly more per-user storage, which neither BTTR nor NTSG is near needing even on the free tier. This reinforces the Microsoft recommendation above — the first paid rung is a wash on price, and Microsoft's version of "what you get for paying" is more useful for how these orgs actually work.

## Higher paid tiers (for reference, unlikely relevant at BTTR/NTSG's scale)

| | Microsoft 365 Business Premium (Nonprofit) | Google Business Plus (Nonprofit) |
|---|---|---|
| Price | **$5.50/user/month** (75% off) | **$6.16/user/month** annual, $7.40 monthly (72%+ off) |
| Adds | Intune device management, advanced threat protection, Microsoft Purview data discovery | 5 TB/user storage, Meet up to 500 participants |

Note: Microsoft retired the free 10-user Business Premium grant and Office 365 E1 grant in July 2025 (existing grants roll off at renewal, not all at once) — the current nonprofit "free" tier is Business Basic, not Premium.

---

## Why this leans Microsoft (Pete's actual situation, not a generic recommendation)

1. **Ecosystem familiarity.** Pete already runs Outlook, Teams, OneDrive, and SharePoint daily across two other identities (Unifocus tenant, personal Outlook). Standing up BTTR/NTSG on the same platform means zero new tools to learn, and day-to-day habits (file organization, calendar conventions, email search) transfer directly.
2. **Claude connector path.** The M365 MCP connector already works for the Unifocus tenant using Microsoft's pre-registered app — Pete just authorizes it per tenant. A Google Workspace connector requires standing up Pete's **own** OAuth app in Google Cloud (see `reference_google_workspace_mcp_setup` — more setup, previously deferred as "no time now"). Choosing Microsoft for BTTR/NTSG avoids adding that complexity for two more accounts on top of the personal Gmail connector Pete's already deferred.
3. **Consistent with the stated Google preference.** Pete's already said he doesn't want to add "another calendar" in the Google ecosystem (see calendar-integration conversation, 2026-07-31) — extending that same logic, adding two more Google Workspace tenants (BTTR + NTSG) would mean three more places using Google conventions (Drive instead of OneDrive/SharePoint, Gmail instead of Outlook, Google Calendar instead of Outlook Calendar) that don't match the rest of Pete's daily workflow.
4. **Where Google actually wins:** raw storage (100TB pooled vs. 1TB/user) and included AI tools (Gemini, NotebookLM) are real advantages if either org's needs ever scale up significantly — but neither is a binding constraint at BTTR/NTSG's current size.

**When Google would make more sense instead:** if BTTR or NTSG ever brought on a co-lead or admin who already lives in Google Workspace day-to-day, or if the records-preservation project's storage needs somehow blew past what OneDrive/SharePoint comfortably handles (unlikely at 1TB/user for a few users).

---

## Open action items

- [ ] Confirm BTTR (Inc.) and New Hearts, Inc. (dba NTSG) each hold standalone 501(c)(3) status (not fiscal sponsorship) — required for Google eligibility, good practice to confirm regardless
- [ ] If proceeding with Microsoft: apply via Microsoft's nonprofit portal (validated through TechSoup) for each org separately — they're distinct legal entities, so distinct tenants
- [ ] Decide whether BTTR and NTSG get separate M365 tenants or whether any shared administration makes sense (they're unrelated orgs, so separate tenants is the default assumption)
- [ ] Once a tenant exists for either org, revisit whether/how to extend the Claude M365 connector to it (same low-friction pattern as the Unifocus tenant)

---

**Sources (verify before acting — nonprofit tech offers change year to year):**
- [Microsoft 365 Nonprofit Solutions](https://www.microsoft.com/en-us/nonprofits/microsoft-365)
- [Microsoft 365 Business Basic (Nonprofit) Plan & Pricing 2026 — Medha Cloud](https://medhacloud.com/tools/m365-license-comparison/plans/microsoft-365-nonprofit-business-basic)
- [Microsoft 365 Business Premium (Nonprofit) Plan & Pricing 2026 — Medha Cloud](https://medhacloud.com/tools/m365-license-comparison/plans/microsoft-365-nonprofit-business-premium)
- [Microsoft 365 Nonprofit Licensing: The Complete Guide 2026 — Microsoft Negotiations](https://microsoftnegotiations.com/blog/microsoft-365-nonprofit-licensing)
- [Google for Nonprofits — Workspace offerings](https://www.google.com/nonprofits/offerings/workspace/)
- [Google Workspace Offers for Nonprofits — comparison](https://www.google.com/nonprofits/workspace/compare/)
- [Google Workspace for Nonprofits: A Comprehensive Guide — CharityCharge](https://www.charitycharge.com/nonprofit-resources/google-workspace-for-nonprofits/)
- [Free Google Workspace for Nonprofits: Complete Guide 2026 — Savings Grove](https://savingsgrove.com/blogs/guides/free-google-workspace-for-nonprofits)

---

*© Peter A. Castellano. All rights reserved.*
