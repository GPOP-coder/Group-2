<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# US Monthly Consultant Meeting — 2026-09-16

**Sources:** Two independent AI summaries of the same meeting — TeamsMaestro (Teams-side notetaker, emailed to pcastellano@unifocus.com) and Plaud (Pete's own recorder, speaker-diarized but not named — Speaker 1/2/3/4). **Plaud is treated as primary below** — it's markedly more detailed and specific (real process steps, named examples, financial figures), consistent with it being a direct audio transcript rather than a generic Teams AI summary. Where TeamsMaestro adds something Plaud doesn't corroborate, it's flagged rather than silently merged in.

**Attendees (TeamsMaestro):** Akram Chahin, Alain Derderian, Itsaso Burgos, Pete Castellano, Daniel Rebeille-Borgella, John Grech, Sophie Ponce, Taylor Walton.
**Invited, didn't attend:** Daniel Guerrero, Elliott Welburn, Dina Abushokka, Shilpa Bhando, Stephen Carrell.

**Speaker mapping (inferred, not confirmed):** Plaud's "Speaker 1" is almost certainly **Alain Derderian** — both summaries independently place the same person on-site in Jackson Hole with Dina, then PTO in Dallas. Speaker 4 handles Scottsdale and is a likely audit-load candidate; not confidently identified (Akram or John Grech, unconfirmed).

**Note:** Ralph Varble (former CCO, resigned effective 8/31/26) is absent from both TeamsMaestro attendee lists — first monthly consultant meeting since his departure.

---

## ⚠️ Confirmed: Alain Derderian inherited most of Ralph's project pipeline

**This is new and material** — corrects the earlier "early signal" framing in the Unifocus contract review memory to a confirmed fact:

> "Project reassignment due to Ralph's departure: most moved to [Speaker 1/Alain] and Shilpa; Shilpa retains Jumeirah and any pending Rockbridge items (none active)."

So the split is: **Alain gets the bulk of Ralph's book; Shilpa keeps only Jumeirah + dormant Rockbridge.** TeamsMaestro's summary didn't mention this at all — it only showed Alain picking up HR/PTO-adjacent admin items, which understated how much actually transferred to him. Logged to the Unifocus contract review memory.

---

## Financial Figures (confidential — internal only, not for client-facing use)

- **Activated revenue, 2026:** $480,000 ARR + $217,000 one-time project/professional services fees.
- **Pending pipeline (actively managed):** $386,000 ARR + $165,000 one-time fees.
- Project stages updated to add "Training Scheduled" and "Training Initiated" — distinguishes confirmed vs. pending work for finance reporting, avoids mislabeling projects as stuck in configuration.
- **US TAPS work:** HM Alpha is the majority of it. Cross-utilization of consultants across regions: Taylor → Singapore, Akram and Itzaso → Saudi.

---

## Database Audits — Full Process (Plaud captured this in real detail; TeamsMaestro only had the headline)

**Process:**
1. Consultant completes implementation, notifies PM.
2. PM assigns an auditor.
3. Auditor reviews via a structured worksheet — summary page + detail tabs (property config, task scheduler, revenue centers, KBIs, mapping, labor structure/standards).
4. Auditor sends findings to consultant + PM with a due date.
5. Consultant fixes issues and confirms completion. **Auditors do not make the corrections themselves — the implementing consultant does.**

**Time expectations:** first audits up to half a day; typical hotels 1–2 hours; complex hotels up to half a day.

**Pitfalls/guidance called out:**
- Follow import steps precisely — wrong steps can corrupt the worksheet; use the implementation guide.
- Check revenue center units (e.g., restaurant set to "covers"), KBI mapping/numbering, forecast import intent.
- **Banquet mapping accuracy is critical** — real example cited: banquet breakfast covers mis-mapped to lunch.
- Labor standards: shift time must match standard time; naming consistency (case, abbreviations); shift order by start time; use master jobs/KBIs for multi-hotel clients (explicitly named: **H.M. Alpha, Rockbridge/MakeReady** — both Pete's active client groups); consistent KBI numbering/name formats; seasonality without gaps/overlaps; **variable standards recommended when more than 3 FTEs per shift**; step standards designed without gaps.
- **Some audits have already gone out with no consultant response** — explicit ask to check inboxes and respond.

**Status:** Every database will get an audit eventually. Assignments TBD; Speaker 4 (unconfirmed identity) likely to handle a large share as time allows. To be added to the consultant checklist: "Request PM audit" and "Complete audit corrections."

---

## Templates — Named and Specific (Plaud only)

Problem: properties have been cloned from already-manipulated versions, causing drift that's tedious to untangle back to the original KBI template. Proposal: build new clients from standardized bases, not arbitrary clones.

**Existing named templates** (exist but aren't consistently used — "resurrect and enforce"):
- Resort (Great Wolf Lodge)
- Full-service five-star
- "Box Marriott" (one restaurant + room service)
- Limited service with breakfast
- Select service, no F&B

**Enforcement plan:** template selection should happen at database creation (PM level) via Jira ticket specifying the template. Previously Ralph specified this manually. Alain to regroup with "Boss Casey" and Shilpa to make sure directors/PMs use the correct picker option going forward.

---

## New Software: "Clara"

- Aimed at **select-service, smaller properties** — not full-service or high-end brands initially (matches TeamsMaestro). Given Pete's current roster (Grand Hyatt Nashville, Marriott Del Mar, Mohonk, Westin La Paloma — all full-service) this likely doesn't touch his work directly yet.
- Team, including Alain, **doesn't have access yet** — still being obtained.
- Concerns raised about unclear use cases (a housekeeping-reassignment example was called out as unrealistic) — product team asked for clearer, property-type-specific scenarios.
- Even for larger/full-service clients, AI-generated custom reports could have value — an angle worth remembering if Clara or its reporting layer becomes relevant to any of Pete's properties later.

---

## Smartsheet Checklists

- Real project checklists exist (Nashville, Scottsdale named specifically) in the "HM Alpha" folder — most are still blank.
- Goal: PMs track progress via notes/attachments (e.g., attach weekly call scorecards — Scottsdale specifically called out).
- Smartsheet is a bridge tool — plan is to eventually migrate to a new PM/onboarding tool with client portals and per-task time tracking.
- Speaker 4 reported successful use on Scottsdale; accountability will be enforced going forward — team members must backfill and keep updating.

**Action for Pete:** if any of his HM Alpha/Makeready properties have a Smartsheet checklist already created, backfill it and keep it current going forward — this was called out as an enforced expectation, not optional.

---

## Other Items (Plaud only, not in TeamsMaestro)

- **Office gathering feedback:** ~30 people, T-shirts, lunch — well received; general team-culture note, no action needed.
- **Akram Chahin:** 7-year work anniversary; birthday on the 22nd.
- **Employee user mapping / mobile:** easy to forget when a client uses mobile scheduling — add to implementation checklist. A related drag-and-drop anomaly from ~8 months ago is now resolved but was never clearly documented.
- **AWS migration cross-property risk:** since the migration, having two properties open side-by-side in the same browser can misroute changes to whichever property refreshed most recently. **Best practice: use two separate browsers (e.g., Safari + Chrome/Edge) when working across properties, not two tabs in the same browser.** Directly relevant to Pete's own cross-property work (e.g., Baha Mar campus, HM Alpha multi-property sessions) — worth adopting.

---

## Discussed Before Pete Joined (TeamsMaestro-only — not a discrepancy, a coverage gap)

**Explanation (Pete, 9/16/26):** Not a TeamsMaestro hallucination. Pete isn't on Alain's/the consulting group's Outlook distribution list, so he often doesn't get a calendar invite to these meetings and joins late as a result — which happened here. TeamsMaestro is a Teams-side bot that captures the full meeting from the actual start; Plaud only records from whenever Pete's Surface Studio (where Plaud desktop is installed) actually joins and starts running. So these two topics were genuinely discussed — just before Pete arrived, meaning Plaud simply never heard them:

- **Woodland Hills PMS issue:** incorrect arrivals/departures data; a custom report was built as a workaround (Taylor Walton, action item). System only reports data at start/end of day.
- **Housekeeping policy variation:** LA County and Seattle both have strict square-footage-per-day housekeeping policies affecting operations — shift times and standard times must match or labor allocation is wrong. Relevant if any current/future PWS property sits in those jurisdictions.

**Takeaway for next time:** if this meeting ever lands on Pete's actual calendar (rather than him joining ad hoc), he'd likely catch the full meeting on Plaud too. **Pete asked Alain directly (9/16/26) to add him to the invite** — check whether the next monthly consultant meeting actually appears on his calendar.

## Other Discrepancy

- **Comp-day system name conflict:** TeamsMaestro says comp days are managed through "Paylocity and Zoho." Plaud says current process is via something transcribed as "Zello" (likely a mishearing — possibly "Zoho" itself, or a different tool entirely), with a goal to move it into Paylocity directly with a request/expiry flow, pending HR confirmation. Treat the target system as **Paylocity** (both agree on that); the current/legacy system name is unconfirmed. This one's a genuine transcription ambiguity, not a coverage gap.

---

## Action Items

| Item | Owner |
|---|---|
| Create custom report for Woodland Hills PMS *(discussed before Pete/Plaud joined — see above)* | Taylor Walton |
| Update/backfill Smartsheet checklists (Nashville, Scottsdale, etc.); attach scorecards | All consultants (Pete included) |
| Confirm HR-approved comp-day wording; assess Paylocity request/expiry feasibility | Alain Derderian / HR |
| Schedule Clara demos, secure hands-on access | Alain Derderian (team-wide) |
| Ensure database audits are conducted and corrections made; check inbox for pending audit summaries | John Grech, All consultants |
| Review/enforce database templates at creation via Jira picker | Alain Derderian, John Grech, "Boss Casey," Shilpa |
| Add employee user mapping (mobile) to implementation checklist | All consultants |
| Use two separate browsers when working cross-property post-AWS-migration | All consultants |

**Pete's direct action items:** Smartsheet checklist backfill/upkeep (general, ongoing); eventual database audit participation (not yet assigned a specific property/date); adopt two-browser practice for any cross-property work (Baha Mar campus especially).

---

## Related Files

- [Unifocus KB](kb.md)
- [Unifocus Contract Review](../foundations/07-unifocus-contract-rewrite-2026.md) — for Ralph's departure and leadership-transition tracking

---

*© Peter A. Castellano. All rights reserved.*
