# Flight Credits Ledger
*Pete & Kim Castellano — All Airlines, All Travel*
*Purpose: Track original form of payment behind every credit so card balances are reduced accurately. Credits are not free money.*

Last updated: 2026-06-11

---

## EVENT TYPES

| Code | Meaning |
|------|---------|
| Cancelled-voluntary | Traveler cancelled; credit issued |
| Cancelled-involuntary | Airline cancelled; credit issued |
| Changed-voluntary | Traveler changed flight; fare difference became credit |
| Changed-involuntary | Airline schedule change; traveler opted for credit |
| Bumped-voluntary | Gave up seat at gate; credit issued |
| Bumped-involuntary | Denied boarding; compensation issued |
| Transferred-in | Received from another person |
| Transferred-out | Sent to another person |
| Applied-full | Entire credit used on one booking |
| Applied-partial | Portion used; remainder stays active |
| Goodwill | Airline-issued for delay, service issue, etc. |
| Promo | Promotional credit from airline marketing |
| Expired | Credit lost at expiration |

---

## CREDITS

One row per credit. Update Status as credits are used or expire.

| Credit ID | Airline Ref # | Airline | Traveler | Original Amount | Earned Date | Expiration | Source Card | Status | Notes |
|-----------|--------------|---------|----------|----------------|-------------|------------|-------------|--------|-------|
| SW-2026-001 | AEF9KY | Southwest | Pete | $442.20 | 2/12/2026 | Aug 2026* | None — all credits | Exhausted | Transferable Flight Credit™ from AEF9KY cancellation 2/12/26. Entire $442.20 built from 5 prior SW flight credits — NO card was ever charged in this chain. Original AEF9KY: OMA→STL→FLL ($345.20 = $260.18 credit + $85.02 credit); changed 2/5/26 to PSP→DEN→FLL ($97 increase = $62.50 + $30.00 + $4.50 credits). PSP origin = PWS context (post-Rosewood Miramar, Feb 15–20); FLL = likely MHBR trip. *Aug 2026 expiry derives from oldest upstream credit — confirm. Applied AU84MN (PNS-OMA, 6/1/26). Count as cash on Pensacola expense report — real travel value, note "SW Travel Credits, no card charge." |
| SW-2026-002 | BHK5DP | Southwest | Pete (from Kim) | $159.31 | Unknown | TBD* | TBD (Kim's card) | Active | Transferred from Kimberly Castellano 6/7/26. *Expires 12 months from Kim's original booking date of BHK5DP — check that date. No re-transfer permitted. |
| SW-2026-003 | BHK5DP | Southwest | Pete (from Kim) | $30.00 | Unknown | TBD* | TBD (Kim's card) | Exhausted | Transferred from Kimberly Castellano 6/7/26. Applied in full to C8R96Z (OMA-MCO, 6/14/26) same day. |
| SW-2026-005 | TBD | Southwest | Pete | $95.00 | Unknown | Unknown | TBD | Exhausted | Applied in full to C8R96Z (OMA-MCO, 6/14/26). Source unknown — check SW account → Travel Funds. Not from Kim transfers (those are BHK5DP/BAISG6). Likely a prior Pete cancellation or change. |
| SW-2026-006 | TBD | Southwest | Pete | $353.40 | Unknown | Unknown | TBD | Exhausted | Applied in full to C8R96Z (OMA-MCO, 6/14/26). Source unknown — substantial amount, likely a full one-way fare from a prior cancellation. Check SW account → Travel Funds. |
| SW-2026-004 | BAISG6 | Southwest | Pete (from Kim) | $0.30 | Unknown | TBD* | TBD (Kim's card) | Active | Transferred from Kimberly Castellano 6/7/26. Different source booking from BHK5DP — likely tax/fees residual. *Expires 12 months from Kim's original BAISG6 booking date. No re-transfer permitted. |
| AA-2026-001 | 0014476535565 | American | Pete | $272.10 | 11/14/2025 | 10/9/2026* | -2674 | Exhausted | Leftover from JCJDPX MIA→OMA (11/21/25): credit 0014473459973 ($450.18) applied to $410.48 ticket → $39.70 leftover. Then NFITMK chain created this credit. Traces to OMA↔SBA roundtrip cancelled 10/9/25, originally on -2674. *Expiry per Pete's spreadsheet shown as 11/14/2025 but used 6/7/26 — confirm actual date. |
| AA-2026-002 | 0014476552009 | American | Pete | $39.70 | 11/14/2025 | 10/9/2026 | -2674 | Exhausted | Leftover from JCJDPX MIA→OMA (11/21/25): credit 0014473459973 ($450.18, from FPPAGE cancellation) → $410.48 ticket → $39.70 leftover. Original purchase FPPAGE OMA→SBA 10/4/25 on -2674. |
| DL-2026-001 | 0060219253395 | Delta | Pete | $145.40 | 1/22/2026 | 5/19/2026 | Unknown | Exhausted | Earned from HPHG4N OMA→SBA booking (Rosewood Miramar trip, 1/22/26): credit 0060668046239 ($700) paid $554.60 ticket → $145.40 leftover. Traces to DL-PRE-001 voluntary OMA bump 5/19/25 — all downstream credits inherit that 1-year expiry. Applied to H543QZ (MCO-ATL-PNS, 5/17/26) — used 2 days before expiry. |
| DL-PRE-001 | 0060668046239 | Delta | Pete | $700.00 | 5/19/2025 | 5/19/2026 | AX -1011 (ESS corporate) | Exhausted | ESS corporate trip OMA→PHL (G0MCBF, $1,237.04 on AX -1011). Both outbound legs cancelled by Delta morning of 5/19/25. Pete accepted alternate routing via Lyft OMA→MCI, then DL1613 MCI→MSP — MSP→PHL (DL2703) then also cancelled. Delta issued $700 VOL compensation to Pete's personal SkyMiles for agreeing to the Lyft/alternate routing ordeal. Credit was personal (issued to Pete, not ESS). Applied in full to HPHG4N OMA→SBA 1/22/26 ($554.60) → $145.40 leftover became DL-2026-001. |
| DL-2026-002 | 0060219672547 | Delta | Pete | $113.40 | 2/2/2026 | 5/19/2026 | Unknown | Expired — call to reinstate | Earned from HPHG4N rebooking (2/2/26): old ticket 0062398929100 ($554.60 credit) applied to $441.20 ticket → $113.40 leftover. Expired 5/19/2026. Call Delta before next booking to request reinstatement. |
| DL-2026-EXCH-001 | TBD | Delta | Pete | $227.30 | Unknown | — | -0733 | Exhausted | Original Delta ticket purchased on -0733 at an earlier date. Exchanged for H543QZ (MCO-ATL-PNS, 5/17/26); value applied to new ticket. $43.50 exchange price difference charged to -0733 on 5/17/26. Source booking and original purchase date TBD — check -0733 statement history. |

---

## ACTIVITY

One row per event. Every earn, transfer, application, or expiration gets a row.

| Date | Credit ID | Event Type | Amount | From / To | Linked Booking | Confirmation / Ticket # | Card (balance portion) | Balance After | Notes |
|------|-----------|------------|--------|-----------|----------------|------------------------|----------------------|---------------|-------|
| 12/3/2025 | SW-PRE-AZXXWK | (Purchased) | $260.18 | — | SW OMA-BNA-MIA (AZXXWK) | #5262110053113 | -2674 ($40.71) + SW credit ($219.47) | $260.18 | OMA→Nashville→Miami, Dec 15, 2025. Likely PWS/MHBR trip. $40.71 on Visa -2674; $219.47 from prior SW credit (unknown — search from:southwest 219.47). |
| 12/15/2025 | SW-PRE-AZXXWK | Cancelled-voluntary | $260.18 | → Flight Credit | SW OMA-MIA AZXXWK | AZXXWK / #5262110053113 | — | $260.18 | Cancelled day-of. $260.18 Transferable FC issued under AZXXWK. Becomes Credit A in AEF9KY chain. |
| 2/5/2026 | SW-PRE-AZXXWK + 4 other credits | Applied to AEF9KY | $345.20 + $97.00 | → AEF9KY | SW OMA-STL-FLL → PSP-DEN-FLL | #5262128582464 / #5262128587658 | None (all credits) | $442.20 | Credit A ($260.18 AZXXWK) + Credit B ($85.02 unknown) → original #5262128582464 ($345.20). Credits C/D/E ($62.50+$30.00+$4.50 unknown) → change to #5262128587658. |
| 2/12/2026 | SW-2026-001 | Cancelled-voluntary | $442.20 | → Flight Credit | SW AEF9KY PSP-FLL | AEF9KY / #5262128587658 | — | $442.20 | Full ticket cancelled. Refunded as Transferable Flight Credit™ $442.20 under AEF9KY. $0 non-transferable credit. |
| Unknown | SW-2026-002 | (Earned — TBD) | $159.31 | Kim | BHK5DP | BHK5DP | TBD (Kim's card) | $159.31 | Kim's original booking — cancelled. Date TBD. |
| 6/7/2026 | SW-2026-002 | Transferred-in | $159.31 | Kim → Pete | — | BHK5DP | — | $159.31 | Kim transferred to Pete via SW. No re-transfer permitted. |
| Unknown | SW-2026-003 | (Earned — TBD) | $30.00 | Kim | BHK5DP | BHK5DP | TBD (Kim's card) | $30.00 | Same source booking as SW-2026-002. Two separate credits from one cancellation. |
| 6/7/2026 | SW-2026-003 | Transferred-in | $30.00 | Kim → Pete | — | BHK5DP | — | $30.00 | Kim transferred to Pete via SW. No re-transfer permitted. |
| 6/7/2026 | SW-2026-003 | Applied-full | $30.00 | — | SW OMA-MCO | C8R96Z | — | $0.00 | Applied same day as transfer. Personal trip — Orlando (Camille's house / Father's Day). |
| Unknown | SW-2026-005 | (Earned — TBD) | $95.00 | — | TBD | TBD | TBD | $95.00 | Source unknown. Not from Kim transfers. Check SW Travel Funds for originating booking. |
| 6/7/2026 | SW-2026-005 | Applied-full | $95.00 | — | SW OMA-MCO | C8R96Z | — | $0.00 | Applied to C8R96Z. No card charge — entire ticket paid with credits. |
| Unknown | SW-2026-006 | (Earned — TBD) | $353.40 | — | TBD | TBD | TBD | $353.40 | Source unknown. Likely a full one-way fare from a prior Pete cancellation. Check SW Travel Funds. |
| 6/7/2026 | SW-2026-006 | Applied-full | $353.40 | — | SW OMA-MCO | C8R96Z | — | $0.00 | Applied to C8R96Z. No card charge — entire ticket paid with credits. Ticket # 5262167372484. Total ticket $478.40. Personal trip (Orlando, Camille's house / Father's Day). |
| Unknown | SW-2026-004 | (Earned — TBD) | $0.30 | Kim | BAISG6 | BAISG6 | TBD (Kim's card) | $0.30 | Different booking from BHK5DP. Likely tax/fees residual. |
| 6/7/2026 | SW-2026-004 | Transferred-in | $0.30 | Kim → Pete | — | BAISG6 | — | $0.30 | Kim transferred to Pete via SW. No re-transfer permitted. |
| 6/1/2026 | SW-2026-001 | Applied-full | $442.20 | — | SW PNS-BNA-STL-OMA | AU84MN | -2674 ($51.30 balance) | $0.00 | Pensacola renovation trip return. Total ticket: $493.50. Card -2674 charged $51.30 only. |
| Unknown | DL-2026-EXCH-001 | (Purchased — TBD) | $227.30 | — | TBD | TBD | -0733 | $227.30 | Original ticket purchased on -0733. Date and booking TBD — check -0733 statement history. |
| 5/17/2026 | DL-2026-EXCH-001 | Changed-voluntary | $227.30 | — | DL MCO-ATL-PNS | H543QZ | -0733 ($43.50 exchange diff) | $0.00 | Original ticket exchanged for H543QZ. Value applied to new ticket. $43.50 price difference charged to -0733 on same date. |
| Unknown | AA-2026-001 | (Earned — TBD) | $272.10 | — | TBD | 0014476535565 | TBD | $272.10 | Full credit number now known. Source booking and source card TBD. Look up in AA account. |
| 6/7/2026 | AA-2026-001 | Applied-full | $272.10 | — | AA OMA-ORD-EWR | GFLPYC | -2674 ($146.40 balance) | $0.00 | Mohonk business trip (PWS / Mohonk change order). Ticket # 0012349569454. Total $458.20. |
| Unknown | AA-2026-002 | (Earned — TBD) | $39.70 | — | TBD | 0014476552009 | TBD | $39.70 | Full credit number now known. Source booking and source card TBD. Look up in AA account. |
| 6/7/2026 | AA-2026-002 | Applied-full | $39.70 | — | AA OMA-ORD-EWR | GFLPYC | — | $0.00 | Applied alongside AA-2026-001. Card -2674 charged $146.40 for remaining balance. Business expense — Mohonk. |
| 5/19/2025 | DL-PRE-001 | Bumped-voluntary | $700.00 | Delta → Pete | OMA→PHL (G0MCBF) | 0060668046239 | AX -1011 (ESS corp) | $700.00 | ESS corporate trip (Election Systems & Software). DL4110 OMA→DTW and DL2189 DTW→PHL both cancelled by Delta ~5:53 AM. Delta offered alternate routing: Lyft OMA→MCI, then DL1613 MCI→MSP, then DL2703 MSP→PHL. Pete accepted. DL2703 MSP→PHL also cancelled ~9:48 AM. $700 VOL credit issued to Pete's personal SkyMiles as compensation for taking the Lyft/alternate routing. Original ticket on ESS corporate AX -1011; credit issued personally to Pete. |
| Unknown | DL-2026-001 | (Earned — TBD) | $145.40 | — | TBD | TBD | TBD | $145.40 | Origin unknown. Ref: 0060219253395. Look up in Delta account → eCredits. |
| 5/17/2026 | DL-2026-001 | Applied-full | $145.40 | — | DL MCO-ATL-PNS | H543QZ | — | $0.00 | Applied alongside DL-2026-EXCH-001 to H543QZ. Total ticket $416.20 = $227.30 (prior -0733) + $145.40 (eCredit) + $43.50 (new -0733 charge). Expense report shows $416.20 total — source detail lives here. |

---

## OPEN ITEMS

- [x] **SW-2026-001 source event confirmed** — Earned 2/12/26 from AEF9KY cancellation (PSP→FLL, ticket #5262128587658). Transferable Flight Credit™.
- [x] **SW-2026-001 source confirmed** — Entire $442.20 built from 5 prior SW flight credits; no card ever charged in this chain. Original booking OMA→STL→FLL changed to PSP→DEN→FLL (same day, 2/5/26), then cancelled 2/12/26.
- [x] **SW-2026-001 chain fully investigated (6/12/26)** — Only confirmed card charge in entire $442.20 chain: **$40.71 on Visa -2674** (AZXXWK booking, 12/3/25). Remaining $401.49 traces through: $219.47 + $85.02 (in AEF9KY original ticket) + $62.50 + $30.00 + $4.50 (in AEF9KY change) — all prior SW credits, no email match found for any of them. Declared end of traceable chain. For expense reporting: count $442.20 as cash; note $40.71 attributable to -2674, remainder from accumulated SW credits.
- [ ] **Card Visa -2785** — Appears once: AQIVFM (NAS→OMA, booked 7/10/25, cancelled 8/13/25, full $480.11 cash refund). Identify this card.
- [x] **SW-2026-001 expense report treatment** — Count $442.20 as cash on Pensacola expense report. Note: "SW Travel Credits — no direct card charge." PWS business context (MHBR trip that was cancelled) supports counting as real travel value.
- [ ] **DL-2026-001** — Look up in Delta account → My Account → eCredits, ref 0060219253395. Identify originating booking and source card. Add Earned event row.
- [ ] **DL-2026-EXCH-001** — Look up original -0733 statement history for the Delta ticket that was exchanged. Identify original booking date and ticket number. Update Credit ID.
- [ ] **Reimbursement math** — Once SW-2026-001 and DL-2026-001 source cards are confirmed, finalize per-card transfer amounts from Dad's NFCU trust account. H543QZ total reimbursable is $416.20, distributed across -0733 (prior charge + exchange diff) and whichever card sourced the eCredit.
- [ ] **SW-2026-002 / SW-2026-003** — Find Kim's original booking date for BHK5DP to determine expiration (12 months from booking, not from cancel/transfer). Identify which card Kim used.
- [ ] **SW-2026-004** — Find Kim's original booking date for BAISG6. $0.30 residual — low priority.
- [ ] **C8R96Z — entire ticket paid with credits ($478.40 — no card charge).** Three sources: SW-2026-003 ($30.00, confirmed), SW-2026-005 ($95.00, unknown), SW-2026-006 ($353.40, unknown). Check SW account → My Account → Travel Funds to identify the two unknown sources and trace to original card purchases.
- [x] **AA-2026-001 (0014476535565, $272.10)** — Source confirmed: -2674. Chain: OMA-SBA roundtrip cancelled 10/9/25 on -2674 → NFITMK exchange chain → credit 0014476535565.
- [x] **AA-2026-002 (0014476552009, $39.70)** — Source confirmed: -2674. FPPAGE OMA-SBA cancelled 10/9/25 on -2674 → credit 0014473459973 → JCJDPX MIA-OMA leftover.
- [x] **DL-PRE-001 fully traced** — ESS corporate trip OMA→PHL (G0MCBF, YPJLVB), 5/19/25. Both outbound legs cancelled; Pete took Lyft to MCI for alternate route; MSP→PHL also cancelled. $700 VOL issued to Pete's personal SkyMiles. Source: AX -1011 (ESS corporate Amex). Physical voucher confirmed 6/11/26.
- [x] **DL-2026-001 source card** — Traces through HPHG4N to DL-PRE-001 (ESS corp AX -1011). Credit was personal to Pete — not subject to ESS reimbursement.
- [ ] **Card AX -1011** — Appears once (DL-PRE-001 / GOMCBF / YPJLVB, May 2025). Likely ESS company card or Amex GBT billing account — not Pete's personal card. Flag if it appears again in any future document. No personal balance adjustment needed on this chain.
- [ ] **Card Visa -2785** — Appears once: AQIVFM (NAS→OMA, booked 7/10/25, cancelled 8/13/25, full $480.11 cash refund). Identify this card — not yet in Pete's known personal card inventory (-2674, -0733, -3563).
- [ ] **DL-PRE-001 → H543QZ expense report treatment** — The $145.40 eCredit (DL-2026-001) applied to H543QZ (MCO-ATL-PNS, Pensacola trip) traces to Delta's VOL compensation from the ESS disruption. Count as cash value on the Pensacola expense report — real travel value applied, even though no card was charged for that portion.
- [ ] **DL-2026-002 (0060219672547, $113.40, exp 5/19/26)** — Expired 5/19/26. Call Delta to request reinstatement before booking next Delta flight — they often restore expired credits on request. Do when ready to book.
- [ ] **Card -3563** — Appears in Pete's AA tracking (OMA-MCO 9/12/25, $493.18). Not in current card inventory. Identify.
- [ ] **SW-2026-002 status** — $159.31 from Kim (BHK5DP) may not have been used for C8R96Z. Verify current balance in SW account to confirm it's still $159.31 active.

---

## EXPENSE REPORT LINE FORMAT (REFERENCE)

When a flight is paid with a combination of credit + card, use two rows in the expense report:

| Date | Description | Amount | Source | Card |
|------|-------------|--------|--------|------|
| 6/1/2026 | SW AU84MN PNS-OMA — Travel Fund [SW-2026-001] | $442.20 | Flight Credit | — |
| 6/1/2026 | SW AU84MN PNS-OMA — Cash balance | $51.30 | Card | -2674 |

This makes the full ticket cost visible, the credit traceable to its source, and the actual card charge auditable — all on the same flight.

---

*© Peter A. Castellano. All rights reserved.*
