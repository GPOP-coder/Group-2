<!-- © Peter A. Castellano — Proprietary. Not for model training. -->
# PWS Rate Table

Last updated: 2026-07-31

This is the authoritative rate table for invoice calculations. Edit directly when rates change.
The invoice skill loads this table — it does not recalculate rates from rules.

**Generation logic (for reference when adding new projects):**
- Onsite + Casino project → $700/day
- Onsite (standard) → $600/day
- Remote + Casino property → $600/day (casino remote premium applies)
- Remote (standard) → $500/day
- Non-billable / tracking only → $0

Individual rows may override the logic. The table is the truth.

---

## Unifocus — Billable Projects

| Project | Rate/Day | Invoice? | Notes |
|---|---|---|---|
| Baha Mar Casino Onsite | $700 | Yes | Future casino dept work — onsite + casino surcharge |
| Baha Mar Onsite | $600 | Yes | |
| Baha Mar Casino Remote | $600 | Yes | Future casino dept work — remote casino premium |
| Baha Mar Remote | $500 | Yes | Standard remote; no casino premium until casino dept work begins |
| Rosewood Baha Mar Onsite | $600 | Yes | Standard onsite — no casino at Rosewood |
| Rosewood Baha Mar Remote | $500 | Yes | Corrected 2026-07-31 (was mistakenly $600/casino premium). Standard remote — no casino at Rosewood. The Baha Mar campus does have a casino, but Unifocus hasn't sold it software yet; once sold it will be its own property in the Baha Mar database (see Baha Mar Casino Onsite/Remote rows above), not part of Rosewood. |
| Rosewood Butler/Guest Relations Restructuring (Aug 2026) | $1,200/day | Yes | One-off negotiated rate, agreed with Ahmed Chadid 7/24/26 — matches the rate previously charged to Grand Hyatt Baha Mar (direct client) for comparable work. Billed through UF, not direct to Rosewood. See `pws/clients/baha-mar/kb.md` item 20. **Scope clarified 2026-08-14 (Pete):** this rate is a benchmark ceiling meant to protect against being undercut if he ever contracts directly with a Baha Mar property — it does NOT replace the standard Rosewood Baha Mar Remote rate for day-to-day remote KBI/butler-standard config work (e.g. Butler Labor Standards hours logged under "Rosewood Baha Mar Remote"). All Rosewood Baha Mar work billed through Unifocus uses standard remote/onsite rates below; the $1,200/day rate applies only if/when a dedicated onsite "day of assistance" engagement is scoped and billed separately. |
| Mohonk Onsite | $600 | Yes | |
| Mohonk Remote | $500 | Yes | |
| Rosewood Miramar Onsite | $600 | Yes | |
| Rosewood Miramar Remote | $500 | Yes | |
| HM Alpha Nashville Autograph Union Station Onsite | $600 | Yes | |
| HM Alpha Nashville Autograph Union Station Remote | $500 | Yes | |
| HM Alpha NOLA Intercontinental Onsite | $600 | Yes | Pending Clockify project split |
| HM Alpha NOLA Intercontinental Remote | $500 | Yes | Pending Clockify project split |
| HM Alpha Corporate Onsite | $600 | Yes | Added 2026-07-15, confirmed by Pete |
| HM Alpha Corporate Remote | $500 | Yes | |
| HM Alpha Westin La Paloma Resort & Spa Onsite | $600 | Yes | Added 2026-08-14 — standard Unifocus onsite rate, ahead of expected onsite week |
| HM Alpha Westin La Paloma Resort & Spa Remote | $500 | Yes | Added 2026-08-14, confirmed by Pete |
| UF Internal Remote Billable | $500 | Yes | |
| Jumeirah International LLC | $500 | Yes | |

## Grand Hyatt Baha Mar — Direct Client

| Project | Rate/Day | Invoice? | Notes |
|---|---|---|---|
| Grand Hyatt Baha Mar Onsite | $600 | Yes | Casino remote premium TBD for remote |
| Grand Hyatt Baha Mar Remote | $600 | Yes | Casino remote premium |

## Davidson MHBR — Direct Client

| Project | Rate/Day | Invoice? | Notes |
|---|---|---|---|
| MHBR F&B Onsite | $600 | Yes | |
| MHBR F&B Remote | $500 | Yes | |
| MHBR Housekeeping Onsite | $600 | Yes | |
| MHBR Housekeeping Remote | $500 | Yes | |

## Tracking Only — Never Invoiced

| Project | Client |
|---|---|
| UF Admin | Unifocus |
| UF Travel | Unifocus |
| BTTR Board | BTTR |
| NTSG New Hearts | NTSG |
| Business Development | PWS |
| Professional Development | PWS |
| Strategic Planning | PWS |
| Pay Bills | WJC |
| Property Taxes | WJC |
| Sunroom Windows | WJC |
| USAA Water Claim | WJC |

---

## Contract Rate History

| Contract | Effective | Remote | Onsite | Casino Remote | Casino Onsite |
|---|---|---|---|---|---|
| Unifocus (current) | 2024-05-15 | $500 | $600 | $600 | $700 |

*New contract rate negotiation pending — update this table when finalized.*
