<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Mohonk — Post-Meeting Debrief: Lou, Then Bron (After the F&B Labor Meeting)

**Date:** August 5, 2026
**Location:** Mohonk Mountain House — Office 16
**Context:** **Corrected 8/6/26, twice.** Tom Smiley left quietly during the F&B labor meeting itself, before Patrice did — he is **not** present for anything in this file. Part 1 below (items 1–3) is Pete and Lou alone, ending when **Lou leaves the room**. Pete is then alone briefly before **Bron Walis** comes in — everything from Part 2 onward (items 4–7, including the contract economics, ADP history, and the direct-client question) is Pete and Bron, not Lou. An earlier draft attributed Part 1 to Tom and all of Part 2 to Lou; both were wrong, corrected here based on the source transcript's explicit scene markers ("Lou leaves the room... I am alone for a while... Bron Returns, comes into the room"). (Tom's genuine, directly-quoted origin story and endorsement — Eric Gullickson, the no-layoffs commitment, the "software vs. leadership" line — happened earlier the same day during the *Rooms* labor meeting and is correctly captured in [2026-08-05_labor-meeting-rooms-ceo-session.md](2026-08-05_labor-meeting-rooms-ceo-session.md#8-tom-smiley--ceo-background-origin-story-and-endorsement) — unaffected by either correction.) **This material is separated from the day-to-day F&B standards notes because it's fundamentally about the relationship and the business, not operational configuration.**

## Participants
- **Pete Castellano** (PWS) — throughout
- **Lou Petruzzelli** (budget authority) — Part 1 only (items 1–3), then leaves
- **Bron Walis** (IT Director) — Part 2 only (items 4–7), joins after Lou leaves
- **Tom Smiley** (CEO) — not present in this file; referenced in the third person only, at the very start ("Tom likes this... he likes the rhythm")

---

# Part 1 — Lou (before he leaves)

## 1. Lou's Reflection — Project History and Why Pete's Engagement Mattered
- Opens with Lou relaying Tom's reaction to the session just finished: *"Tom likes this... he loves this... he likes the rhythm and he likes the path we're on."* Third-party confirmation of Tom's satisfaction, not a direct Tom quote.
- **Lou's own acknowledgment: bringing Pete in has "very much accelerated" the whole labor-standards project.** Lou was candid that earlier in the year the team was genuinely frustrated with where things stood, compounded by Tom being personally pulled away from the project for a stretch ("his life was turned upside down... it got him kind of down").
- **Lou's read on the actual blocker at the time: James specifically.** *"Our main problem is James. We gotta get the right person for James."* — Lou's diagnosis was that success hinged on finding a consultant who could actually connect with James, more than a general implementation/technical problem. A direct, budget-authority-level confirmation that Pete's relationship-building and personal engagement style — not just configuration work — is viewed as the decisive factor in recent momentum.
- **Direct comparison to prior Unifocus personnel, named specifically (Lou's own assessment):**
  - **John Grech** (Unifocus — already a known contact in this KB): "brilliant," thinks like a GM, has "a super corporate mind," very effective at pushing back and saying no to requests, but "not nice about it necessarily."
  - **A prior on-site consultant, "Rob"** — Lou mentions him here in passing; his fuller account of Rob actually comes later, in Part 2 with Bron (item 5 below) — worth noting Lou and Bron independently converged on the same nickname ("salty") for the same person.

## 2. Pete's Philosophy, Offered to Lou — Landed Well
- **Core framing: this is "influence work," not authority-based control.** Pete traced this back to an early-career lesson from his first boss: *"You need to learn how to do a better job of influencing people rather than using your authority to get things done."*
- **Pete's still-developing football analogy, offered live:** finance/operations-support roles (like the labor-standards function itself) are like the **down-marker/chain-gang crew on a football sideline** — they don't call the plays or run them, but their job is to give accurate information about exactly where things stand so the people who *do* call plays can make good decisions.
- **Lou responded enthusiastically and connected it to his own finance role and a generational observation** — the analogy fits naturally, since Lou identifies as the "finance person" side of the classic GM/finance leadership partnership he goes on to describe: hotel GM leadership style has shifted over his career from an older "authoritative/dictatorial" GM-and-finance-partner model toward a more collaborative, operationally-embedded model. Lou explicitly identifies with and prefers the latter: *"My mindset has really always been... more operational because you get more done. I could be more effective if I'm at everyone's level."*

## 3. Lou's Framing for the Ongoing Relationship — Including a Concrete Future-Visit Idea
- Confirmed openness to Pete remaining an ongoing resource ("available for infinity... as far as I need"), but **explicitly not for full extended on-site stretches** — Lou's stated preference is smaller "little bites" (Teams meetings) over another full visit.
- **He immediately softened that, though, specifically because of the results Pete's one-on-one style is producing with individual staff:** *"The interaction that you're having with the individuals is very positive... and that acts as a multiplier."*
- **Concrete idea floated for a future on-site trigger:** a dedicated visit built around a hard, property-wide **"everyone must be on mobile / everyone must be scheduling natively in Unifocus, no exceptions, starting now"** rollout push. Lou's framing, building on Pete's suggestion: *"Make one big kick to get everyone on mobile... I'll be here to help you... you want a print schedule? Go see Pete."* **This is a real, concrete future-scope possibility worth tracking**, not just a vague "come back sometime."
- **Lou leaves the room here.** Pete is alone briefly, checking email, before Bron comes in.

---

# Part 2 — Bron (after Lou leaves)

## 4. James's Standards Progress & a New Technical Finding — Covers-Timing Root Cause, Independently Reconfirmed
- Pete updates Bron on the James/dining-room range changes worked earlier — standards have already run at least once and are "falling into line a little better" per reports Pete pulled.
- Pete had emailed Susanna Briggs earlier the same day illustrating that Standard Hours generation at 2:00 PM was ingesting the 8 AM cover upload **from the prior week**, not the current week. **Bron** confirmed this is expected/known given Mohonk's actual process: covers aren't entered in real time — accounting batches them in later, sometimes slipping from Tuesday into Wednesday if whoever normally enters them is out.
- **This is the same root-cause mechanism already fully diagnosed in the standing [UNIFOCUS-252999 "Standard Hours Not Generating Thursday–Sunday" ticket](kb.md#-standard-hours-not-generating--thursday-through-sunday-recurring)** (revenueimport stored procedure timing vs. late covers) — a valuable **independent reconfirmation** of the same root cause, surfacing again in a different context (F&B covers generally, not just the weekend generation gap).
- **New idea from Bron, not previously in this KB — a concrete proposed fix:** automate the daily covers file send. Currently manual: an accounting person creates an end-of-shift "check" in Micros summarizing covers by type, which feeds Mohonk's (badly outdated) daily sales report, which could in theory feed DataVision automatically. Currently blocked because **Unifocus's cover-naming convention doesn't line up with Mohonk's daily sales report naming.** Bron's proposal: since Micros data for the prior day is final by ~7 PM and won't change further, **the file could realistically be sent as early as 1:00 AM** instead of the current 8:00 AM — giving Unifocus's automated processes a full extra window to pick up and use the data before the 8:00 AM cutoff already identified as the root cause of the recurring Thu–Sun gap. **A genuinely new, concrete resolution path** — distinct from the previously-discussed "retime the generation run instead" approach — worth raising with Monali/Susanna directly.

## 5. Bron's Extended Debrief — Contract Economics, Technical History, and Real Talk

### Unifocus contract economics — a genuinely new, hard data point
- **Current annual contract cost: ~$25,000/year** (Mohonk switched to annual billing at some point).
- **Year 1 implementation costs were "obviously" much higher** — Bron candidly estimated Mohonk spent **more on consulting work than the base first-year contract cost**, on top of it, over the life of the relationship.
- **Explicitly framed as an intentional, ownership-backed decision, not reluctant overspend:** *"This is something that Tom and Eric... they like it, all in on it. So whatever we got to do."* Mohonk has never declined to fund a consulting engagement Unifocus recommended, on the logic that a consultant is "the fastest way of going point A to point B."
- **Worth flagging for Pete's own Unifocus rate-justification work** (`pws/foundations/07-unifocus-contract-rewrite-2026.md`) as real market/pricing context — the closest thing to a hard client-side total-cost-of-ownership anchor documented anywhere in this KB, even though it's not directly about Pete's own rate.

### Real implementation friction, disclosed candidly
- **The original rollout was delayed ~4 months specifically due to the ADP interface** not working — despite Unifocus's sales process characterizing that integration as low-risk/routine. Bron: *"It really made it seem like it's not gonna be a big deal at all... but not the same version of ADP we have... everybody's different... it was a nightmare."* Fits naturally with Bron's role — he directly confirms elsewhere in this same conversation that interface/integration work is specifically his domain ("the actual programming of Unifocus hasn't fallen on me that much, it's fallen more on Casey... but just paying the interfaces, getting all the interfaces working... some stuff").
- **Bron's own stated (unconfirmed) opinion:** *"I think ADP has a motivation to slow us down."* — recorded here as Bron's candid speculation, not a confirmed fact; sensitive enough to handle carefully if ever referenced elsewhere.
- **Confirmed: Mohonk will keep using ADP for payroll regardless** — Unifocus's scope is explicitly time & attendance only; ADP remains the system of record for employees. The existing Employee Reconcile interface will eventually be joined by a distinct payroll-export interface once schedules start flowing back into ADP (see [2026-08-05_labor-meeting-fb.md, item 5](2026-08-05_labor-meeting-fb.md#5-employee-schedule-analysis-report--individual-drill-down-fb-example)).
- **Named critique — accrual/PTO-balance feature was oversold:** Bron stated directly that Mohonk was oversold on Unifocus's ability to calculate vacation/PTO accrual balances — *"we're not accounting software"* — and that the underlying math is very difficult without complete source data, which Mohonk doesn't have at the required level of completeness. A specific, named example of scope-creep during the original sales process, distinct from the ADP delay.
- **The "Rob" history, fuller detail from Bron:** a pre-Unifocus (or early-implementation-era) on-site consultant, before Bron's own time at the property in some capacity. Engagement model was "leave-behind" software recommendations, delivered in a blunt, "no-nonsense" style that put staff "on edge the whole time" — including reportedly calling people stupid. Bron personally coined the nickname **"salty"** for him, which independently stuck enough that Lou used the same word earlier in Part 1 of this same conversation (see item 1 above) — a small but genuine confirmation that both were describing the same person the same way.

### Competitive landscape — Bron's genuine assessment
- **Bron's aspirational wish:** a true all-in-one HR/payroll/time-and-attendance/labor-management platform, which he doesn't believe currently exists at the needed sophistication.
- **Named and dismissed alternatives:** **UKG** (has some of the pieces, but different — implied not as capable specifically on labor-standards/scheduling depth); **Actabl** (does labor-effectiveness/accounting-side analytics, explicitly does NOT do scheduling); **Hotschedules** (scheduling only, no labor-standards depth).
- **Overall assessment:** most competing systems are "very rudimentary" specifically on the labor-standards-building/flexibility side — which Bron considers "the magic" — and Mohonk currently believes it has the best available combination for its needs, provided the point-solutions (Unifocus + ADP + others) keep talking to each other adequately.
- **Retrospective, 2.5 years in — genuine, unvarnished sentiment:** relieved that Unifocus is "not gonna be an ongoing major project" anymore after this long, but candidly: *"Some of the things you're still having problems with still astound me."* Worth preserving verbatim — authentic client feedback, not curated praise, useful ground-truth if Ralph Varble or Unifocus leadership ever want it.

### James — a specific, transferable management technique
- Bron flagged James's email volume humorously but genuinely: *"You send him an email... it's just like never ending. It's a novel."*
- **Pete's technique, shared directly with Bron:** explicitly say "no" to some of James's ambitious multi-part requests rather than trying to accommodate everything, then establish the boundary clearly once — after which James accepts it without relitigating repeatedly. A specific, transferable people-management insight about James in particular.

## 6. Business Development Signal — Direct Client Relationship Floated (Bron, not Lou)
- During a lighter, personal-interest tangent (Bron describing his own discovery of AI-assisted coding — automating a file-format conversion despite no formal programming background — and Pete demoing his own personal Chief-of-Staff agent setup to Bron: Clockify integration, invoicing automation, book-project research), **Bron asked directly whether Mohonk should route future engagements through Pete directly rather than exclusively through Unifocus.**
- **Pete confirmed he already has an existing carve-out arrangement with Unifocus for direct client relationships**, though this specific property wasn't formally named in the current carve-out list — he noted he could add it to his next Unifocus contract renewal.
- **Confirmed Unifocus is generally fine with this arrangement:** they view consulting as a client-retention function, not their own revenue center — their focus is **ARR (annual recurring revenue)** from the core subscription, not consulting margin. Riverside (Unifocus's ownership) is described as having "bigger fish to fry" than policing this.
- **This is a meaningful, concrete business-development opening** — a real signal from Mohonk's IT Director to formalize a direct PWS client relationship, alongside or instead of the Unifocus-routed one. Directly relevant to Pete's PWS-growth goal ("more direct client relationships") already tracked in CLAUDE.md, and to the ongoing Unifocus contract rewrite work in `pws/foundations/07-unifocus-contract-rewrite-2026.md`.

## 7. Closing Context — Non-Action-Item
- Pete had a 5:00 PM commitment helping with KBI mapping work for a different, unnamed client engagement — used it as an example of a recurring PWS-wide pattern: **micro-KBI needs often aren't apparent until well after initial configuration**, requiring a later "scramble" and rework. A generalizable methodology observation, not a Mohonk-specific action item.
- The visit closed on strong personal rapport with Bron (dinner plans, hiking trail recommendations, informal conversation about Mohonk's guest demographics and hospitality-industry awards processes) — consistent with the pattern already noted elsewhere in this KB (e.g., the John Lockyer relationship note in CLAUDE.md). Not documented in detail here; purely relationship-warmth context, no action items.

---

## Open / Unresolved
- **Automate the daily covers file (Bron's 1:00 AM send idea)** — a new, concrete proposed fix for the standing UNIFOCUS-252999 root cause; not yet raised with Monali/Susanna as a formal proposal.
- **Add Mohonk to Pete's Unifocus direct-client carve-out list** at the next contract renewal — a real, live opportunity raised by Bron, not yet formalized.
- **Future "everyone on mobile / everyone on Unifocus" onsite visit** — a concrete idea from Lou (Part 1), not scheduled.
- **Cover-naming convention mismatch** between Unifocus and Mohonk's outdated daily sales report — blocking full automation of the covers feed, not yet resolved.

---

*© Peter A. Castellano. All rights reserved.*
