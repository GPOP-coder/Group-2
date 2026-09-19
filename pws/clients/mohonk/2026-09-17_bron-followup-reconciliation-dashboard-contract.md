<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Follow-Up Call: Reconciliation, Dashboard, Contract Status, November Planning — 9/17/26

**Context:** The Thursday follow-up locked on the 9/14/26 call (10 AM ET). Attendees: Bron Walis, Susanna Briggs, Pete; one other participant (Plaud diarized as Speaker 5, not identified by name).

**⚠️ Two items need Pete's direct action, flagged up front:**
1. **Contract/billable-hours authorization is genuinely unclear post-Ralph.** Bron: *"It just seems like we're coming close to using the hours."* Nobody has taken over Ralph's meticulous hour-tracking. Pete needs to close this out with Susanna Briggs before doing more work under the existing agreement — real risk of unauthorized/unbilled work otherwise. See "Contract & Billing Status" below.
2. **Send Bron a tentative agenda + dates email for the proposed November onsite visit.** Bron needs it in hand to get a decision from Lou (Mohonk ownership/finance) **by end of September.**

---

## Job Code Reconciliation — Continued from 9/14

**Overall status improved** — both the Reconcile and Hours-transfer reports "look a lot better," down to a smaller set of specific problem codes. Standing principle reaffirmed: fix Reconcile issues first, since that usually clears most Hours-transfer problems as a side effect. **ADP remains the confirmed source of truth.**

**Fixed live this session:**
- **"Beekeeper Software Assistant"** (code 29) — confirmed/added in Unifocus. Despite the name, has nothing to do with actual apiary work — just an odd job title in ADP.
- **Shiloh Pileggi's promotion** — ADP now shows "Massage Therapy and Body Trainer," but Unifocus still only had plain "Massage Therapist," causing reconcile errors. New job added under Spa > Body Treatments and assigned to her.

**Still open — Dining Room Main Host code mismatch:** TK Codes show one code (125000099); Reconcile shows two (125000099 **and** 125000095). ADP only has 125000099 — **125000095 doesn't exist in ADP at all**, yet hours keep arriving tagged with it. Working theory: a legacy artifact from when this job used to be split out as "Founders Host." **Don't delete the code before tracing why it's still showing up in the incoming hours file** — could be mis-punching, manual data-entry error, or a genuine legacy mapping still silently active somewhere upstream.

**Still open — Employee 111282 (Brett):** stuck in processing across Main Server, Founders Server, and Banquet Server assignments simultaneously. Hypothesis: punching under the wrong code. Need to confirm whether staff actually select from a dropdown at the clock or type codes manually, and whether a reference code sheet is posted (mentioned previously, not confirmed as actually in place).

**Still open — Service Bartender/Founders combo coding:** codes like 15200000020 and 153000002 don't cleanly exist in ADP or exist as duplicates. Real discussion of **"server host"**-style combo codes: used to post hours to the function actually worked (e.g., host) while paying the employee's home rate — a workaround for budgeting accuracy. **Pete's suggestion, worth remembering as a reusable idea:** if ADP can support an employee holding multiple job codes without changing their pay rate, that could eliminate the need for these combo codes entirely. **Open question, not yet answered:** does Mohonk's ADP version actually support that. **Resolved during/right after the call (per Susanna's 9/17/26 formal recap to Bron):** both active ADP codes for Founders Service Bartender were added to the Unifocus TK and reconciliation mappings — both now feed the same Unifocus job. No longer waiting on James for this specific item.

**Root-cause thread:** "Aisha" reportedly enters a lot of manual transfers, plausibly contributing to miscoding via redundant/similar-looking codes. Near-term: map redundant codes to the same destination rather than deleting them outright. Longer-term: real ADP-side cleanup needed, with training/guidance for Aisha.

## Spa Department Structure

Current split (Body Treatments, Salon, etc.) creates recurring reconcile complexity — proposal to consolidate into a single Spa department. **Deliberately deferred:** the Spa Director goes on maternity leave in about a month, so any real restructuring is realistically 3–4 months out.

## Dashboard Accuracy — New Topic, Real Concerns Raised

- **Weekly dashboard can show large, misleading variances mid-week** — actual vs. standard hours looks broken before the week's actually complete.
- **Root cause, several layers:** F&B/dining room labor performance is incomplete without daily covers (not currently fed daily); some roles (head host, host) show standard hours driven by room KBIs/occupancy rather than covers, which can look wrong even when it's technically correct; accounting delays mean weekend data (Fri–Sun) isn't entered until Tuesday, so **last week's report may not be fully validated until Tuesday ~2:00 PM** — a real mismatch between what the dashboard shows live and what's actually trustworthy.
- **Correction/context, per Pete (9/18/26):** this isn't really a defect to chase down — it's the expected baseline. Pete has always taught clients that the in-week dashboard view **can** be looked at, but is **never fully reliable**, even for properties uploading volumes daily, because actuals/volumes/standards refresh on different schedules within the week. **It will never be accurate for Mohonk specifically, since they only upload volumes (covers) once a week rather than daily** — daily covers would narrow the gap, not close it. See `pws/unifocus/kb.md` § Dashboard / In-Week Data Reliability. That said, the trust concern Bron/Susanna raised is still real and worth taking seriously — if managers see implausible numbers repeatedly without understanding why, they'll stop trusting the tool even once a given week's data is actually fine.
- **Suggested fix, not yet built:** default the dashboard to show **last week's validated data on login**, rather than the live current week, to avoid managers acting on incomplete numbers.
- **Daily covers feed requested** to fix this at the root — dependency on other Unifocus teams, no committed timeline, "on the list" but not expected imminently. Even once daily covers exist, miscover discrepancies will still need their own resolution process.
- **Dashboard can be turned off globally**, and most widgets can be managed individually — **except Labor Performance, which is always on.** Open Shifts and Coverage widgets are considered more trustworthy since they're schedule-driven, not actuals-driven.
- **Proposed next step:** a 20-minute call with **Chris** (a Unifocus product developer) to walk through the dashboard concerns directly with product. Susanna to help arrange.
- Also flagged: **pending employee time-off requests sitting for months** on the dashboard — turns out Mohonk doesn't actually process time-off requests through Unifocus at all (approved time off comes from ADP); some employees have been mistakenly submitting through the Unifocus app anyway. Attempting to deny old requests threw an Ajax error; approving them instead appeared to clear the queue without affecting ADP. Needs a documented process so employees stop submitting through the wrong system.

## "Ask Clara" — New Unifocus AI Feature

Briefly discussed — a newly-rolled-out AI assistant layer. Unifocus doesn't provide a full HR system (Time & Attendance, scheduling, interfaces, plus hotel-ops tools like guest complaints/preventive maintenance/inventory — that's the actual product scope, worth remembering as a clean one-line description for future client conversations). Enabling Ask Clara for a single-property client like Mohonk was flagged as possibly premature/risky. Vendor to send more information; adoption decision deferred pending review.

## Update, 9/18/26 — Susanna's Separate Call with Bron Answers Part of This

Susanna Briggs had her own call with Bron (Mohonk Dir. of IT) the same day, recapped by email to Kris Ballew/Priyanka Kalia/Shilpa Bhando, cc Pete. Two major new facts:

**1. The contract question has a real answer, and it needs reconciling immediately.** Susanna: *"We have a signed CO for 10k from 7 months ago which was for future work with a consultant spread out over 4-5 months. We charged $500 per day and IDK how many days Pete has already used up, so we may need to charge again."* $10,000 ÷ $500/day = **20 days total under this CO.** Signed ~February 2026 for a 4–5 month window that has already elapsed (it's now September) — meaning **the CO is almost certainly exhausted on time even if not on dollars, and needs a fresh authorization before any further work (including the proposed November onsite) proceeds.** **Correction, per Pete (9/18/26): the $10k CO is Unifocus's own commercial arrangement with Mohonk — what Unifocus charges/committed to the client — and is independent of what Pete bills Unifocus for his own contractor time.** Pete's Clockify hours and Unifocus invoices continue on their normal, separate track regardless of this CO's status; the CO's exhaustion is not a cap on Pete's own billing. **Ralph was reportedly aware this specific engagement could run break-even or worse for Unifocus** — the scope of cleanup work (see below) was always going to be hard to contain inside a $10k client-facing budget.

**Context Pete added directly:** he "rescued a client and cleaned up the messes made by multiple consultants who implemented here" — i.e. the real reason this account has run over a modest original CO is prior implementation quality, not scope creep on Pete's part. Worth keeping as rate-justification evidence (see `project_unifocus_contract_review` memory).

**What the 146.78 hrs / 18.35 days (Feb 1–Sep 18, 2026, per Clockify) actually is:** informational context for the Susanna conversation — roughly how much delivery has happened against what Unifocus sold Mohonk for $10k — not a personal billing constraint. **The open question is a Unifocus business decision: does Unifocus want to formally authorize/fund a new CO for continued (and November onsite) scope, given their own margin exposure on this account** — not whether Pete has "run out" of anything.

**2. Real relationship history, previously unknown to Susanna:** Bron told her Mohonk had *"a really hard time with T&A and ultimately fired us from that platform."* Susanna wasn't aware of this; Ralph had apparently warned her Mohonk is "complicated and like to do things their way." Worth remembering as context for how this account is handled going forward — Mohonk currently only has Unifocus's Planning & Scheduling module, not Time & Attendance, and that's not an oversight, it's the result of a past falling-out.

**Also from Bron's call with Susanna — independent confirmation and new specifics on the dashboard issue already logged above:**
- F&B showed **roughly 1,000+ actual hours against only 77 standard hours** — an implausible variance directly caused by daily covers not feeding in (Bron confirmed to Susanna they only enter covers weekly or later, not daily — matches what was already found).
- **New detail: salaried labor distorts the variance too** — salaried roles carry standard hours but no actual hours, contributing roughly **550 hours of variance on a single Monday.**
- Bron's own framing, worth keeping verbatim for how seriously he takes this: *"Unifocus is supposed to be the source of truth; if users log in and immediately see incomplete or implausible numbers, they will conclude the whole system is still broken and stop relying on it."* He used the phrase **"loss of confidence"** directly.
- He's leaving the dashboard on for now pending Kris's feedback, but is genuinely inclined to disable it if nothing changes.
- **New idea from Bron, worth remembering:** scheduled-hours variance may be more useful for day-to-day monitoring than standard-hours variance, since scheduled hours are already available and don't depend on delayed volume data the way standard hours do.

**Separately: Clara demo interest.** Bron asked about Clara after Susanna mentioned it; Mohonk (P&S-only) may be a good fit. He wants a **demo next week** — Susanna asked Kris Ballew to lead it since she ran out of time to show it live. Not currently a Pete action item, just worth tracking since it's the same account.

## Update, 9/18/26 — Kris Ballew (Product Management) Responds to Susanna's Recap

Kris Ballew (Unifocus Product Management, Workforce Management) replied directly to Susanna's 9/17/26 recap email, cc Priyanka Kalia, Shilpa Bhando, Thomas Vincent, Pete.

**On Claira/Ask Clara for Mohonk — pushes back on including Mohonk in phase 1.** Kris's view: Mohonk's forecasting needs are complex enough that their use cases should be tested first, before including them as an early adopter, though he's open to a different call. **No demo confirmation yet** — this is Product's read, separate from Bron's stated interest; the demo Susanna offered to arrange may need to be reconciled against this pushback first.

**On the dashboard/Home Screen accuracy concerns — this is the real find, and it independently confirms the standing teaching point already logged above (and in `pws/unifocus/kb.md` § Dashboard / In-Week Data Reliability), this time from Unifocus's own Product Management, not just Pete's read:**
- **Actual Hours and Standard Hours aren't calculated on the Home Screen** — it only displays values calculated elsewhere in the system. Kris's diagnostic ask: if the client says the numbers look wrong, do the *same* values also look wrong in the Labor Effectiveness Report and Weekly Labor Summary? If they match there, it's not a bug — it's the client not knowing when the data is actually settled. If they don't match, that's a real bug/data issue needing a Support ticket with the specific examples.
- **Refresh timing is configurable, not broken** — Standard Hours run on a system task that can be scheduled to run multiple times a day. Actuals from third-party timekeeping (i.e., ADP, Mohonk's exact setup) **cannot show in real time** — Kris explicitly frames this as a reason to use Unifocus's own Timekeeping product instead, which Mohonk doesn't have (see the T&A "fired" history above).
- **Kris's core framing, worth keeping verbatim — this is Unifocus Product directly stating the same rule Pete has taught clients for years:** *"The Home Screen is intended to help managers review the previous day's performance. The current day is still in progress... If managers are opening the Home Screen before that point, we should set the same expectation we would for someone running the Labor Effectiveness Report or Weekly Labor Summary too early."* The Home Screen doesn't introduce a new workflow or new calculations — it just surfaces the same reports managers already ran manually, on the landing page.

**Action item, per Kris: Susanna needs to open a Support ticket with Bron's specific examples** (the 1,000+ vs. 77 hours F&B variance, the 550-hour Monday salaried gap) so Unifocus Support can determine whether these are genuinely bugs or just the client checking before the data settles. Kris is taking the broader feedback back to his team to consider real Home Screen improvements — not a rejection of Bron/Susanna's concern, just a request to separate "is this a bug" from "is this expected timing."

**Why this matters beyond Mohonk:** this is exactly the internal-communication gap Pete flagged 9/18/26 (see `pws/unifocus/kb.md` § Dashboard / In-Week Data Reliability, "Internal gap" note) — Product Management clearly *does* understand and can articulate the in-week data-timing limitation clearly when asked directly, which means the gap is specifically that this understanding isn't proactively reaching consultants/clients before confusion happens, not that Unifocus doesn't know its own system's behavior.

## Contract & Billing Status — Real Gap, Needs Closing

**Bron didn't know Ralph had left Unifocus until Pete told him on this call** — not something Mohonk had been informed of. Once told, Bron's genuine concern: *"Do you know that Ralph is gone? ... His job was split up amongst a lot of people... I'm not sure who is handling billing and keeping track of [hours]. He was meticulous about keeping track of whatever we promised and at what rate, and have we used it all up yet."*

**New fact:** Ralph is now working for a company Bron/Pete referred to as **"SETI HR"** (building an HR system), described as connected to **"the Hamans"** — transcription quality on both names is uncertain, worth confirming if it ever matters. Not urgent, just logged in case it resurfaces.

**The real risk:** neither Bron nor Pete currently knows how many hours/what scope remains authorized under Mohonk's existing agreement. Pete already gave Susanna Briggs (his main Unifocus contact) a heads-up that Mohonk wants to schedule something in November, specifically **to avoid a "that wasn't authorized under the contract" situation** after the fact. **This is still open — Pete needs to actually resolve the question with Susanna, not just have flagged it.** Bron separately noted that if more hours are needed, approval likely comes from **Lou**, though paperwork may be required.

## November Onsite — Being Planned, Not Yet Confirmed

- Bron wants Pete back onsite **for a week in November.**
- **Decision needed from Lou by end of September** — Bron will use Pete's email (once sent) to have that conversation.
- **Pete's action item: send Bron a tentative agenda + proposed dates.**
- Possible complication: **a new data analyst hire** (reporting to Lou or Bron, under Finance — role is technical: databases, AI, interfaces) may affect timing. Lou may want to wait until that person is hired before committing to the November visit. Hundreds of remote applicants already in, but scope/reporting line still being finalized as of this call. If the hire happens in time, suggested training approach: a half-day remote session first, then a full 2-day onsite session later (deliberately not overwhelming a brand-new hire all at once).
- **A shorter pre-November call proposed** — first or second week of October, ~30 minutes — to firm up standards work and lock the November plan once Lou's decision is in.
- Pete's own availability: **vacation week of 9/21** (Disney cruise, already on the books), then **Nashville the following week** (described to Bron loosely as "a conference" — this is actually the Grand Hyatt Nashville training week, 9/28–10/2) — limited availability across both weeks, reachable but may be slow to respond.

---

## Open Items

- [ ] **Pete: resolve contract/hours-authorization status with Susanna Briggs before committing to more Mohonk work.**
- [ ] **Pete: send Bron a tentative November onsite agenda + dates** — needed before end of September for Lou's decision.
- [ ] Investigate why code 125000095 (not in ADP) keeps appearing in the incoming hours file for Dining Room Main Host.
- [ ] Validate actual clock-in process (dropdown vs. manual entry) and whether a job-code reference sheet is actually posted.
- [x] Service Bartender/Founders combo-coding — both ADP codes now mapped to the same Unifocus job, confirmed in Susanna's 9/17/26 formal recap.
- [ ] Determine whether Mohonk's ADP version supports multi-role employees at a single constant pay rate (would let combo codes be retired).
- [ ] Review Aisha's manual-transfer process for training/guidance opportunities.
- [ ] Spa department consolidation — real proposal, deliberately deferred 3–4 months for the Spa Director's maternity leave.
- [ ] Validate dashboard figures for 9/14 and 9/15 at the department level.
- [ ] **Susanna to open a Support ticket with Bron's specific dashboard examples (1,000+ vs. 77 F&B hours, 550-hour Monday salaried gap)** — per Kris Ballew 9/18/26, needed to determine bug vs. expected-timing before further escalation.
- [ ] Schedule the 20-minute product call with Chris re: dashboard accuracy/usability — still relevant even after Kris's reply, since Kris's explanation is about expectation-setting, not a fix.
- [ ] Decide whether to keep the dashboard enabled globally, or manage per-widget, pending the product conversation.
- [ ] Daily covers feed — no owner/timeline yet from the dependent Unifocus teams.
- [ ] Document the correct process so employees stop submitting time-off requests through the Unifocus app (should come from ADP).
- [ ] **Ask Clara / Claira phase-1 fit — Kris Ballew pushed back 9/18/26** (wants Mohonk's complex forecasting use cases tested before early-adopter inclusion). Reconcile against Bron's stated demo interest and Susanna's offer to arrange one with Kris — unclear if the demo is still happening given this pushback.
- [ ] Schedule the ~30-minute pre-November call, first or second week of October.
- [ ] Pete: review his own notes for any remaining labor-standards items from the James Danks thread that got dropped when the team's attention shifted mid-visit.

---

## Related Files

- [Mohonk Client KB](kb.md)
- [9/14/26 — Bron ADP Job Code Reconciliation Call](2026-09-14_bron-adp-job-code-reconciliation-call.md)

---

*© Peter A. Castellano. All rights reserved.*
