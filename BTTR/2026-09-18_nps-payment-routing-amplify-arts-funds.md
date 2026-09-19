<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# NPS Payment Routing — "Amplify Arts Funds" Thread

**Thread subject:** Re: Amplify Arts funds (and Re: [EXTERNAL] Re: Amplify Arts funds)
**Participants:** Kevin McCarthy (NPS), Larry Foster (BTTR), Pete Castellano (BTTR President), Erika Torres (NPS Administrative Officer, looped in 9/18/26), plus cc's Mark Brohman, David Dover, Karen Bluvas, Michelle Foss

This is the email trail behind the **$2,450 NPS invoice** (`invoices/2026-09-18_NPS-invoice-2450-amplify-arts.md`) and explains — with actual confirmation, not speculation — why BTTR's ability to accept a credit card or PayPal became the blocking issue.

---

## Timeline

**9/16/26, 4:24 PM — Kevin McCarthy (NPS) makes the offer.** Lewis and Clark NHT will contribute **$2,450** toward the Amplify Arts sculpture work. Requirements stated directly: an invoice, a completed **Form 889** (DOI Covered Telecom Equipment or Services Representation — attached to his email), and — this is the key constraint — **"ability to pay with cc or paypal."** Needs to be paid **before the end of the month** (September 2026).

**9/17/26, 11:11 AM — Larry Foster flags the problem.** "Not sure BttR can take a credit card or PayPal." Proposes a workaround: route through **Papio-Missouri River NRD (P-MRNRD)** — an original Icons funder/partner and current BTTR board member org (see `board-roster.md`, John Winkler GM) — who may already be able to take CC/PayPal. NPS's grant/payment would go to P-MRNRD, who would complete Kevin's form and invoice NPS directly, then transfer the funds to BTTR through normal channels. Larry asks Kevin to confirm viability before reaching out to P-MRNRD.

**9/18/26, 8:50 AM — Kevin confirms the workaround is viable.** Checked with NPS's Administrative Officer: "paying P-MRNRD to transfer to BttR would work." Green light to pursue if needed.

**9/18/26, 3:54 PM — Larry updates Kevin.** Pete and Larry talked; **Pete is exploring other options** (the FNBO Clover/PayPal research — see `2026-09-18_fnbo-payment-processing-consultation.md`), and Larry will call the NRD as a fallback "so we have a fall back."

**9/18/26, 4:32 PM — Kevin loops in Erika Torres** (NPS Administrative Officer) for Form 889/invoice processing, gives his personal cell (562-760-7343) for weekend contact if a solution firms up.

**9/18/26, 4:48 PM — Pete attempts to send the invoice.** Replies to Kevin with the **889 form and invoice attached** (the invoice built this session — `invoices/2026-0918-NPS-invoice.docx`/`.pdf`/`.xlsx`). States: **"If we have until the end of the month, I am working with FNBO or PayPal to set up online credit card processing."** Adds Michelle Foss (BTTR VP), David Dover (BTTR Treasurer), Mark Brohman (BTTR Secretary), and Karen Bluvas (BTTR Asst. Treasurer) to the thread "for transparency and for cc processing ideas."

**9/18/26, 4:48 PM — Bounces back immediately. Message never delivered to anyone.** See "Send Failure" section below.

---

## Send Failure (9/18/26, 4:48 PM)

The 4:48 PM message **bounced for every single recipient** — Kevin McCarthy, Larry Foster, Erika Torres, Mark Brohman, David Dover, Karen Bluvas, Michelle Foss, and Pete's own gmail cc. None of them ever received the invoice or Form 889.

**Exchange error:** `Microsoft.Exchange.Data.Storage.SendAsDeniedException: "Can't send message... You do not have the permission to send the message on behalf of the specified user."` (`MapiExceptionSendAsDenied`, error `0x80070005`, EC `1244`). The message was rejected by Exchange's transport layer before it ever left Microsoft's servers — this is not a delivery delay or a recipient-side spam filter, it's an outright permission denial at send time.

**What this means:** the message was submitted trying to send "on behalf of" an underlying mailbox/identity object that Pete's account doesn't have Send-As rights for. This is the same identity string flagged earlier this session — `On Behalf Of /o=ExchangeLabs/ou=Exchange Administrative Group (FYDIBOHF23SPDLT)/cn=Recipients/cn=064658371c47490db3da69f01df1d7f5-pete.castel...` — which was initially (incorrectly) assessed as benign backend plumbing. The bounce proves it wasn't benign: something about how this message got composed/submitted routed it through an identity Pete's account can't actually send as, and Exchange blocked it outright.

**Not yet root-caused.** Possible contributing factors, none confirmed: a stale/misconfigured account profile in desktop Outlook, an alias or delegate permission that's out of sync, or the message somehow being composed/threaded through a cached identity object tied to the original NPS/Larry Foster email chain rather than Pete's own clean "compose new" identity.

**Immediate fix:** resend from outlook.com in a browser (bypassing the desktop Outlook profile entirely) to rule out a local/cached identity problem. If that also fails, this needs Microsoft support or a fresh look at the account's Send-As permissions — same general territory as the already-tracked Surface/Yoga M365 auth issues in `CLAUDE.md`, though this is a distinct symptom (explicit permission denial vs. login failure) and not yet confirmed to share a root cause.

**New data point, 9/18/26 evening:** Pete found the same NDR sitting in a personal-account inbox he referred to as "peter.a.castellano@gmail.com" — not an address on file (his accounts are `peter.a.castellano@outlook.com` primary and the separate `pete.castellano@gmail.com`). **Not yet clarified which one, or whether the NDR is there because that mailbox was cc'd on the original send (mundane) vs. the NDR being routed somewhere other than the actual sending mailbox (a real clue, possibly a forwarding rule or account entanglement).** Doesn't change the resend plan, but worth pinning down if the SendAsDeniedException recurs on retry.

---

## What this resolves from earlier this session

Pete had speculated (9/18/26, before seeing this full thread) that the $2,450 might be locked to a credit-card/PayPal-only path because of some unusual NPS funding source — a credit card refund or leftover program surplus. **That's not it.** Kevin's original 9/16/26 email is plain: NPS simply requires an invoice + Form 889 + **the ability to pay by credit card or PayPal**, full stop — this is evidently just how this particular federal disbursement has to move, not a special/unusual funding source. Updating `2026-09-18_fnbo-payment-processing-consultation.md` to reflect this.

---

## Two parallel tracks, right now

1. **Pete's track (primary, per his own email):** Get BTTR itself set up to accept CC/PayPal directly — FNBO Clover vs. PayPal, per the 9/18/26 consultation call. Deadline pressure: end of September.
2. **Larry's fallback track:** Call P-MRNRD, see if they'll agree to be the pass-through payee (NPS confirmed workable on their end 9/18/26 AM).

Both are live simultaneously — whichever resolves first is likely what gets used, since the end-of-month deadline doesn't leave much room to wait on one before trying the other.

---

## Open Items

- [ ] **Resend the 4:48 PM message — it bounced and never reached anyone.** Try outlook.com in a browser first. See "Send Failure" above.
- [ ] Root-cause the SendAsDeniedException if it recurs on resend — not yet understood why Pete's account tried to send "on behalf of" an identity it doesn't have rights to.
- [ ] **Deadline: NPS wants this paid by end of September 2026.** Real time pressure on both tracks, now with the added delay of the failed send.
- [ ] Pete: continue FNBO Clover vs. PayPal evaluation (see `2026-09-18_fnbo-payment-processing-consultation.md`) — need a decision or at minimum a working acceptance mechanism before month-end.
- [ ] Larry: call P-MRNRD as the fallback if Pete's track isn't ready in time.
- [ ] Confirm the **Form 889** Pete attached is fully complete and correct — not independently verified here; DOI Covered Telecom Equipment representation form, likely a standard one-time federal vendor requirement.
- [ ] **Kevin McCarthy's office phone number is inconsistent across his own emails** (402-661-1824 on 9/16 vs. 402-251-6719 on 9/17–9/18) — not reconciled, flagged in `contacts.md`.
- [ ] **David Dover's email showed oddly in the cc line** — "david@lifespanco.com <dover.david@gmail.com>" — likely an Outlook autocomplete display-text artifact; his confirmed address per `David_Dover_Profile.md` is `dover.david@gmail.com`, which is what's in the angle brackets (the actually-used address). Worth a quick glance at Sent Items to confirm the message actually reached him, but not treated as a real second address.

---

## Related Files

- [NPS Invoice — $2,450 (Amplify Arts / Monument Restoration)](invoices/2026-09-18_NPS-invoice-2450-amplify-arts.md)
- [FNBO Payment Processing Consultation](2026-09-18_fnbo-payment-processing-consultation.md)
- `board-roster.md` (P-MRNRD / John Winkler; Michelle Foss, Mark Brohman, David Dover, Karen Bluvas as BTTR officers)

---

*© Peter A. Castellano. All rights reserved.*
