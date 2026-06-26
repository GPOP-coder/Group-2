# Peter Castellano — Claude Code Context

Loads at the start of every session. Keep current. Last updated: 2026-06-26

> **Claude Code directive:** Before answering any question about Claude Code features, capabilities, or documentation, search the web for the most recent documentation. Do not rely on what you already know — it's probably outdated. These tools ship new features weekly.

---

## About Peter

- **Pete Castellano** — Bellevue, NE | (402) 669-0643
- Navy brat, political operative, casino workforce strategist, nonprofit founder, eBay seller, grandfather — and a man actively building a personal philosophy about gratitude, value, and intentional living
- **Core philosophy:** Gratitude is not a destination — it is a starting point. Radical acceptance of the present. Embrace the past. Choose the future. The WHY that complements the HOW of Atomic Habits.
- Oldest of 4 siblings, married to **Kimberly Kae Castellano** since October 8, 1988
- Power of Attorney for father **William Castellano**, age 90 — retired Navy Commander, 100% VA disabled
  - Manages all father's finances, accounts, and bills (due 10th/11th monthly)
  - Father currently in Orlando (near sister Camille) during Pensacola home renovation; official residence remains Pensacola
- Building a **capstone Chief of Staff agent** to monitor, coordinate, and act across all identities — enrolled in a structured course on creating agents; this Claude Code repo is the working environment for that course
- May have ADHD-Inattentive — gets pulled into tangents; Claude should gently redirect to billable priorities
- **Dance dad** his daughters' entire lives — Jessica (still teaches dance; granddaughter Cecilia just had her first recital) and Jennie were both in dance and marching band. Pete was a **pit-pop** (dad who moved equipment on and off the field) and the unofficial **band photographer** — always had a camera, earned the nickname **"Paparazzi Pete"** (aka Pit-aparazzi). Photography as memory-keeping is a lifelong identity, not just a business.

---

## Family

| Person | Relationship | Notes |
|---|---|---|
| Kimberly (Kim) Castellano | Wife | Heart transplant recipient Oct 31, 2024, Nebraska Medicine, Heart #587. Executive Assistant, Nebraska Medicine. 18-month checkup April 29 — doing well. Hospitalized Mother's Day, discharged Thursday. Biopsy showed minor rejection, may have self-resolved. June 4 follow-up: small medication adjustment; labs June 8 — results good. |
| Tamara Holland | Kim's donor's mother | Kristian Nicole Holland's mother — raising all 5 of Kristian's children (ages 4-14) plus her own 4 kids. hollandtamara@yahoo.com \| (316) 806-7316 \| 717 Lexington Rd, Wichita KS 67218. Gift sent: heartbeat bear with Kim's heartbeat recording. |
| Jessica (Jessie) Brazeal | Daughter | Married Brian; kids Cecilia (4) and Astrid (8 mo) |
| Jennifer (Jennie) | Daughter | Married Rusty; kid Charlie (2), baby due Sept 2026 |
| William Castellano | Father | Age 90, Orlando FL (near Camille), Pensacola primary residence |
| Camille | Sister | Orlando FL — twin with Tom |
| Tom (Tommy) Castellano | Brother | Twin with Camille. Handled early renter correspondence for Pensacola property. |
| Diane Yarborough | Sister | NC, youngest sibling |

---

## Email & Account Inventory

| Account | Purpose |
|---|---|
| peter.a.castellano@outlook.com | ⭐ PRIMARY — single source of truth: contacts, calendar, OneNote, archive. iPhone syncs here only. |
| pcastellano@unifocus.com | Unifocus work/contractor account — M365 connector approved and active |
| pete.castellano@gmail.com | Personal; original Microsoft login ID |
| finance.castellano@outlook.com | Banking/bills — shared with Kim |
| pete@platinumworkforcestrategies.com | PWS business email (GoDaddy/Microsoft email only) |
| pacrat.direct@outlook.com | eBay identity |

**M365 Connector status:** Personal account = consumer tier, Claude connector unsupported. Workaround: monthly manual CSV export from personal → wipe → import to Unifocus + upload CSV to Claude.

---

## Organizational Identities & Ecosystems

| Identity | Ecosystem | Role |
|---|---|---|
| PWS | QuickBooks (future) | Owner, business accounting |
| BTTR | QuickBooks (future) | President, nonprofit accounting |
| New Hearts / NTSG | QuickBooks (future) | Treasurer (de facto), nonprofit accounting |
| eBay/Photography | QuickBooks (future), Schedule C | Combined business, accounting (longstanding) |
| Father's POA | Microsoft Edge (dedicated), Quicken Simplifi | POA/Finance Manager |

---

## Tech Stack

- **Microsoft 365** — primary productivity suite
- **Clockify** — billable time tracking; always start before Unifocus work
- **Quicken Simplifi** — personal finance (~10 years data from Mint)
- **Microsoft OneNote** — primary notes
- **Microsoft To-Do** — tasks and lists (groceries separate list)
- **iPhone iOS** — Voice Memos auto-transcribes (key capture tool for journaling/meetings)
- **Outlook desktop** — multiple accounts; master contacts in primary account
- **Microsoft Edge** — dedicated workspace for father's financial accounts
- **Hume Body Pod** — daily body composition, syncs to Apple Health (free tier)
- **Apple Health** — data aggregator, future dashboard project
- **Surface Studio** — primary office machine; paired with ASUS lightweight second monitor; Bellevue home office
- **Lenovo Yoga** — portable/travel machine; current machine (at father's house, Pensacola)
- **Git for Windows 2.54.0** — installed on Lenovo Yoga May 27, 2026
- **Claude Code CLI 2.1.152** — installed on Lenovo Yoga May 27, 2026
- **Visual Studio Code** — installing on Lenovo Yoga May 27, 2026; Claude Code runs inside VS Code as primary interface
- **Windows Terminal** — modern terminal replacement for PowerShell default
- **iPad + Apple Pencil** — travels with Lenovo Yoga for handwritten notes
- Laptop bag carries all chargers, cords, and cables for both machines independently
- Additional tools to be inventoried as we go

---

## Financial Infrastructure & Accounting (Finalized May 30, 2026)

**Architecture Decision:**
- **QuickBooks:** Business/org accounting for PWS, NTSG, BTTR, eBay/Photography
- **Quicken Simplifi:** Personal finance (Pete + Kim household, ~10 years data)
- **Claude Receipt Capture System:** Unified photo → extraction → feeds both QB + Quicken

**Business Entities in QuickBooks:**
- **PWS** — Platinum Workforce Strategies (consulting, primary business)
- **NTSG** — Nebraska Transplant Support Group (nonprofit treasurer responsibilities)
- **BTTR** — Back to the River (nonprofit president)
- **eBay/Photography** — Combined business on Schedule C (longstanding setup, kept as one entity)

**Receipt Management:**
- iPhone photo → Claude extraction → Quicken Simplifi (personal) + QB (business/org)
- Both systems support receipt image attachment for audit trail
- One source of truth per system type

**QuickBooks Setup Status:**
- Not yet acquired (exploring eBay seller discount/promo pricing)
- Pending: Set up company files for each business entity
- Timeline: After current trip expenses finalized

**Workflow Future State:**
- Personal trip expenses: iPhone → Quicken Simplifi + receipt attachment
- PWS billable work: Directly to QB for client reimbursement tracking
- NTSG/BTTR expenses: To QB for org accounting + tax reporting
- eBay/Photography: To QB for Schedule C tracking

---

## Claude Project Structure (claude.ai)

- **"Pete"** — Master Profile v2, Philosophy & Books, BTTR, NTSG
- **"PWS — Unifocus"** — Unifocus KB, Baha Mar KB, client files (Rosewood Miramar, MHBR, Mohonk), employment opportunity
- **"How to Use Claude"** — integration guide, tech stack, contacts methodology
- Document versioning: Master Profile v2 replaces v1 — do not upload both

---

## Organizations

### PWS — Platinum Workforce Strategies, LLC

- Sole proprietor LLC, established May 2024
- Peter is a former Unifocus consultant; PWS expertise grounded in **Unifocus methodology and knowledge base**
- **Rates:** $500/day remote | $600/day onsite | +$100 casino | $5,000/week (MHBR model)
- **Rates context:** Unifocus charged clients ~$1,500/day for Peter — current rates are well below market; raise is a goal
- **Confidentiality:** All PWS methodology, client details, and Unifocus architecture are proprietary — not for model training
- **Non-compete carve-outs** (from Unifocus contract — Pete may serve these as direct PWS clients):
  - CTF BM Operations d/b/a Rosewood
  - CTF BM Operations d/b/a Baha Mar
  - Happy Hour Lessee LLC d/b/a Margaritaville Hollywood Beach Resort
  - Davidson Hotel Company LLC d/b/a Davidson Hospitality Group

#### Client Hierarchy

- Separate clients, each with their own projects
- **Unifocus is itself a PWS client**, with its own sub-clients — each with projects
- Projects can span multiple clients; some clients have Unifocus-umbrella projects AND independent projects

#### Active Clients

**Election Systems and Software (ESS)** (Omaha, NE) — 🟡 Occasional
- Occasional onsite consultant; trips booked through ESS's Amex Global Business Travel system
- Corporate travel card: AX -1011 (ESS or Amex GBT billing account — not Pete's personal card)
- Credits and personal SkyMiles earned on ESS trips are Pete's to keep

**Rosewood Miramar Beach** (Montecito, CA) — 🔴 Overdue/billable
- Labor standards configuration overdue — start immediately
- BQT file broken 1+ year; Anthony Weber contacted, Nattha following up
- All outlets met Feb 16–20 except AMA Sushi and Spa — configure remotely
- Pool & Beach: shift times still needed from Robinette Unpingco

**Margaritaville Hollywood Beach Resort (MHBR)** — 🔴 Analysis overdue
- Housekeeping savings analysis overdue for Genevieve Kelley (DOF)
- Benchmark: .644 HPOR (2019 post-impl) vs .682 (2024 problem) = $101,000/year gap
- ProfitSword export issue — call scheduled week of May 18 (Genevieve Kelley, Jackelyn Schafer, John Grech)
- 1 week onsite training still owed; property recently offered to set dates

**Mohonk Mountain House (MMH)** — 🟡 Active
- Pushing back on unnecessary job code for call-in shifts
- Open PO ~10 weeks; ~2 weeks remaining once F&B standards arrive
- On-call main dining room server: Lou Petruzzelli green-lit, configure with James Danks
- **Onsite visit planned: first week of August** — standards review + training; covered under existing change order; confirm week with Ralph Varble (CCO)

**Baha Mar Campus** (Nassau) — 🟡 Significant billable work remaining
- BQT mapping incomplete
- KBI audit done May 9 — open issues documented
- Rosewood missing resort total KBI suite; GH/SLS missing Local booking type (confirm intent)
- Potential new direct client: Baha Mar casino operations

**Steve Carrell** (Unifocus — Senior Workforce Performance Consultant) | scarrell@unifocus.com — called Pete June 5 to say he recommended Pete to Ralph Varble as a trainer for new clients, possibly on contract. Owns MakeReady configuration phase (all 3 properties). Pete held the same consultant role for many years before moving into Client Success Manager.

**New Training Projects (June 2026):**
- **MakeReady (part of Rockbridge)** — 3 properties; Pete as trainer (with Akram Chahin). Steve Carrell owns config; John Grech owns post-config; Taylor Walton owns post go-live follow-up.
  - **The Joseph, Nashville** — Week of Jul 6: config/setup. Week of Jul 20: training (Pete/Akram). Dates confirmed by Lynn Snyder (Area MD).
  - **The Moran, Houston** — Training week: Aug 10–14 (Pete traveling onsite)
  - **Heathman, Portland** — Dates TBD; Ralph confirming
- **HMAlpha (spin-off of Dimension)** — 5 pilot properties confirmed (not 15); Pete as trainer
  - **Jun 22 (week of):** New Orleans / Intercontinental — 3 days (1 admin + 2 manager; 13 managers). **BLOCKED pending HMAlpha approval to contact property.** Ralph says "every week they push it a week" due to BLSBD config issues (budget/standards misalignment). 50+ emails related to BLSBD concerns across 5 pilots. HMAlpha forcing direct calls with properties to resolve concerns before training proceeds.
  - **Jun 29 (week of):** Nashville / Autograph Union Station — 3 days (same structure as New Orleans; 13 managers)
  - **Aug 17 (week of):** Westin LaPalma — TBD days
  - **Status:** Configuration done March/April; BLSBD crisis with properties; Pete cannot contact until HMAlpha approves (got in trouble doing so early). Ralph has locked further-out dates; if New Orleans slips, it bumps into locked schedule and goes to "back of the line."
- **Consulting travel pattern:** Monday arrival / Friday departure for onsite training weeks
- **COS resource:** `2025 IM_Consultants Daily Resource Calendar.xlsm` — Ralph's team resource calendar; Chief of Staff agent should monitor this for scheduling conflicts
- **Unifocus team:** Ralph Varble (CCO) rvarble@unifocus.com O:972-512-5083 C:832-226-8945 | John Grech jgrech@unifocus.com | Akram Chahin achahin@unifocus.com | Taylor Walton twalton@unifocus.com | Susanna Briggs sbriggs@unifocus.com | Ahmed Chadid AChadid@unifocus.com
- **MakeReady contact:** Michelle Lewis (Corp. Dir. Rooms & Guest Experience) mlewis@makereadyexperience.com | 510-827-2000 | 1202 Dragon St. STE 104 Dallas TX 75207
- **The Joseph Nashville contacts:** Lynn Snyder (Area MD) lynn.snyder@thejosephnashville.com O:612-248-1990 M:219-252-9994 | Sean Barnes Sean.Barnes@thejosephnashville.com

**Upcoming Travel (calendar coordination needed):**
- **Jun 14–21, 2026** — Orlando: watch Camille's house + dog, proximity to Dad; Father's Day away from kids/grandkids. Booked: SW C8R96Z (OMA-MCO, WN435). **Return may go MCO→MSY direct (straight to New Orleans) — do not book OMA return until New Orleans status confirmed.**
- **Jun 22–26, 2026 (tentative)** — New Orleans / Intercontinental — HMAlpha onsite training (3 days: 1 admin + 2 manager for 13 managers). **Status (6/15): HMAlpha not yet approved to contact property. Ralph says approval "every week they push it a week" — expect last-minute confirmation. If confirmed, book MCO→MSY on Jun 21 instead of MCO→OMA. MCO→MSY and MSY→OMA are PWS billable — separate expense report from Orlando personal trip. Cannot contact property until HMAlpha says OK. Pete to brief with Steve (config) and Akram (training email) on Tuesday 6/16.**
- **~Jul 20–24, 2026** — The Joseph, Nashville — MakeReady training (Pete/Akram). **Not yet on Pete's calendar — confirm with Ralph.**
- **Aug 2–7, 2026** — Mohonk Mountain House (onsite standards revision, comp room). Booked: AA GFLPYC (OMA-ORD-EWR, departs 7:00 AM).
- **Aug 10–14, 2026** — The Moran, Houston TX — MakeReady onsite training
- **Aug 17–21, 2026** — Hilton Indianapolis — HMAlpha onsite training
- **Sep 20–26, 2026** — Disney Cruise, Port Canaveral FL — **personal** (Kim); blocked with Ralph Varble
- **Nov 27–Dec 6, 2026** — MSC Cruise, Galveston TX — **personal** (Kim); blocked with Ralph Varble

**Unifocus Employment Opportunity**
- Product Owner role under Priyanka Kalia (VP Product Management) — **role went to Daniel (June 10, 2026)**
- Pete is at peace with the outcome; sees his path as a **WFM evangelist** (consultant/trainer), not an employee PO
- John Lockyer is Unifocus CEO — mutual respect; approved Pete's contractor return
- Option remains open if Kim's health ever requires benefits/stability

---

### BTTR — Back to the River, Inc.

**Recent:** Karen Bluvas (Assistant Treasurer) moved funds from savings to checking (FNBO) June 5 to cover upcoming expenses.

- Nonprofit; Peter is founding member (~30 years) and helped incorporate in 2001
- Became **President November 2025**
- **CPA:** Cathie Kellogg CPA — BTTR accountant
- Claude tracks board membership and stakeholders (org-wide and per-project)

**Active Projects:**
- **Records Preservation** — gather, store, assimilate 25+ years of records, minutes, communications
- **Bob Kerrey Pedestrian Bridge Coffee Table Book** — documenting a signature BTTR accomplishment
  - **Hal Daub interview — June 11, 2026** — 2.5 hours, video recorded. Conducted by Jim and John (Legacy). Larry Foster (Director of Parks & Recreation under Daub) also present. Videographer on site. Pete's role: BTTR President / book producer. Daub was Omaha Mayor during riverfront development, instrumental in its success. Pete personal note: only person to work for both Kerrey (D) and Daub (R); Daub hired Pete after Kerrey left office. Recording pending upload/transcription.
  - **Larry Foster** — Director of Parks & Recreation under Mayor Hal Daub; key figure in riverfront/bridge story; potential additional interview subject
- **Lewis & Clark Monuments** — reviving an original BTTR project, series of monuments

**🔴 Urgent: Recruit Treasurer**
- Karen Bluvas is Assistant Treasurer but does not want the Treasurer role
- Open board position — can come from outside the organization
- Potential candidate suggested by Gary DiSilvestro — follow up
- **Remind Pete at every planning session**

---

### New Hearts, Inc. — dba Nebraska Transplant Support Group (NTSG)

- Nonprofit; Peter is de facto Treasurer (Kim listed but inactive)
- Peter is learning financial practices that cross-apply to BTTR, and vice versa
- **🔴 Urgent: Engage Registered Agent** — vendor selected and board-approved; Pete must contact vendor, execute agreement, pay

---

### Pensacola Renovation (Father's Property)

- **Address:** 5577 North Shore Way, Pensacola FL
- Lindal Cedar Home — post and beam, premium Western red cedar; designed and built by father as a model home (he was a real estate agent)
- **Renters:** Brandon & Desiree Hartlaub (5 kids; Brandon completed OCS, now commissioned officer, heading to NAS Pensacola for naval aviator flight training); both "mustangs" (enlisted who became officers); garage access May 21, **moved in June 1, 2026** ✅; 24-month lease; **rent forgiven June 1–15 while house was incomplete**
- **Move-in status (June 1, 2026):** Renters moved in intentionally incomplete; AC fixed day before move-in; house deep cleaned day before move-in. Countertops installed week of 6/1. Faucet and dishwasher plumbing completed week of 6/8. **Renters thrilled with results.** Pete has NOT formally signed off on project completion (pending water filter status confirmation).
- **Pre-move-in work (confirmed with Jeremy):** Paint hall and bedrooms (NOT master — see below); add waterline box; secure all electrical. **New change order coming May 29 — sign and pay immediately when received.** Jeremy's crew is staged and waiting; he will call them as soon as Pete signs.
  - **Electrical:** In scope of USAA claim — Paul Davis/Jeremy negotiate directly with USAA as GC. Pete does not manage this portion.
  - **Painting (hall + bedrooms only — master bedroom removed):** Pete's elective addition — out of pocket. **Master bedroom NOT being painted** — Pete and John Hallam both agree it's too expensive at contractor rates. John manages 160 short-term rentals and has cheaper painting/carpet/tile resources; can get master done within 30 days after move-in at better price.
  - **Waterline box:** Pete's elective addition — out of pocket.
  - **Note:** Paul Davis handles all contractor-side USAA supplements directly. Pete's separate USAA action is the loss-of-rent supplement (filed after project completion).
- **Property manager:** John Hallam, Perdido Key Resort Realty — management agreement signed; Pete texted re: renter delay plan (June 4 countertop install)
- **Contractor:** Paul Davis Emerald Coast (PM: Jeremy) — owns drywall, painting, plumbing; Jeremy on site May 27 measuring for painters
- **Cabinets/countertops:** Viva Designs (Everson Silva); on site May 27 finishing trim, outlet boxes; countertop quote still pending — 3 options coming: Sparkling White quartz, Level 1 quartz, granite — **install earliest June 4 regardless of material selection**
- **Sister Diane** collaborating on design — prepared document for Everson
- **Decisions made:** New cabinets ✅, sink/faucet decided, one faucet purchased and onsite (second unopened — return it)
- **Decisions pending:** Countertop selection (3 options from Everson — quote not yet received: Sparkling White quartz, Level 1 quartz, granite)
- **Neighbors:** Sherry & Randy Beene — across the street, very helpful; send Omaha Steaks gift card
- **Lawn care:** Alison Nix — mows every 2 weeks, $70/visit via Apple Pay. Payment flow: Pete pays from NFCU personal checking → opens NFCU app → switches to Dad's trust account → transfers $70 to personal checking as reimbursement. Last paid: June 1, 2026.
- **Pest control:** ENSEC — authorized 6/8/26; scheduling contact is Desiree Hartlaub (renter). Services: fire ant treatment ($374/year), tri-annual bug spray (inside + outside), annual termite plan. ENSEC will call Desiree directly for all scheduling going forward.
- **House quirks:** Jenn-Air downdraft range previously installed — hole in floor under stove location (filled by Dad, raised floor around pipe). Acrylic print (SF skyline, Claremont resort, HDR by Pete) in storage — goes home to Bellevue, not for sale.
- **Power:** Property is on a meter — no auto-pay risk while vacant; confirm prior to renter move-in
- Pete departed June 1 — future contractor visits to be coordinated through renters
- **2-10 Home Warranty** — plumbing issue reported 6/8/26; ball rolling, more details TBD
- **Garbage disposal replacement** — Jeremy (Paul Davis) called 6/9/26 ~2:58 PM; Pete approved replacement at "Home Depot" pricing. Plumber already on site getting supplies. Jeremy also wants a trip charge — **Pete disputed this** (plumber is already there) but approved pending breakdown. Asked Jeremy to itemize disposal and trip charge separately on the change order so it can be reviewed. **Owner expense — not USAA covered** (same rule as water filter: insurance covers damage, owner pays for the failed appliance).
- **Construction/maintenance files** — found large collection at property; first pass confirms cost basis will be much less than county's current assessed value (critical for October tax return)
- **Return travel booked:** Southwest AU84MN — PNS → BNA → STL → OMA, June 1, departs 5:20 PM, arrives 11:00 PM. Used $442.20 Southwest flight credit (expires Aug 2026); out of pocket $51.30.
- **Budget rental:** Dropping Chevy Equinox at PNS on June 1. Extended to 6/1 at $935.36 additional (original $616.38 sunk). One-way Omaha drop rejected ($2,100+ with $900 one-way fee — not justified for a carload).
- **Note:** Files + 48x18" acrylic print need to come home eventually — proper truckload move needed, not a carload at a time.

**Move-in Day — June 1, 2026:**
- Pete checked out of apartment, met Hartlaubs at house — welcomed them home
- **Jeremy / change order saga:**
  - Thursday May 29: Jeremy confirmed he'd send the $6,500 change order "tomorrow" (Friday)
  - Friday–Sunday: change order never arrived; nobody showed up despite Jeremy claiming his people work weekends
  - Monday June 1 (move-in morning): Jeremy called saying painters were on the way for the hall/bedroom painting — still no signed change order
  - Pete declined: Hartlaubs had moved in less than an hour earlier; subjecting them to painters while moving in furniture was unreasonable; the value of the elective painting was always timing (empty rooms) — that window is closed
  - Jeremy then revealed the original claim scope painting was already done — painters were coming only for the elective extra work
  - Pete inspected the house: **great room (non-renovated section) was NOT painted** — Jeremy had previously told Pete the USAA claim covers the great room up to the clear edge of the hallway
  - Pete told Jeremy to paint the great room today before renters fill it with furniture — Jeremy leaning toward yes but unresolved at time of departure
  - **Elective painting (hall + bedrooms): off the table** — opportunity lost due to Jeremy's delay
  - All future contractor visits to be coordinated through the Hartlaubs

**USAA Claim:**
- Claim filed for renovation/storm damage
- **RCV (Replacement Cost Value):** $33,651.71
- **Net payout (after deductible):** $31,651.71
- **Loss of Rent coverage:** Active from moment of loss until project completion — must prove property was listed for rent and ultimately rented. Documentation: homes.mil listing inquiry March 10, 2026 + email thread + signed lease when received
- Tommy Castellano handled early renter correspondence before Pete took over
- **Water filter behind fridge:** Unclear if replaced as part of plumbing work (6/8 week). **OPEN ITEM: confirm replacement status.** If failed unit was never replaced, Pete pays out of pocket (insurance covered damage, not appliance). Same rule as garbage disposal.
- **Great room painting:** Jeremy confirmed this is in the USAA claim scope (up to the hallway edge) — hallway was elective/outside claim boundary
- **Loss-of-rent supplement:** Ready to file. Gather: homes.mil March 10, 2026 listing inquiry, email thread with renter, signed lease. Supplement covers rent from loss date through project completion. Rent was forgiven 6/1–6/15, so supplement will document this period.
- **USAA insurance coordination:** See pensacola_house_insurance memory for complete details on Citizens Wind & Hail, flood insurance (FEMA vs Neptune), Primary Residence credit, Wind Mitigation discount. Called USAA 6/15 for 2.5 hours; Mary (USAA) coordinating. Check discounts before 6/30; verify on 7/9 payment.

---

## Agile for Defense

- Local professional community centered around Offutt AFB and Sarpy County — defense contractors, developers, project managers, Agile practitioners
- **Pete's value:** Learning AI/Claude, vibe coding, practical tech applications. Networking. Employment safety net.
- **Organizer:** Darin Plum
- **Format:** Monthly happy hour, typically hosted by a sponsor (TEKsystems) at a brewery
- Pete joined ~1.5–2 years ago
- May 6, 2026 meeting: Kros Strain Brewing, La Vista — Pete met **Craig Taylor** (still needs to be added to Outlook contacts)

---

## Agent Architecture Goal

Peter is building a **Chief of Staff agent** as a capstone project:
- Monitor all organizational identities across ecosystems (Microsoft, Google, Apple)
- Surface responsibilities, deadlines, and action items proactively
- Coordinate subordinate agents (one per organization or domain)
- Prevent anything from falling through the cracks: PWS, BTTR, NTSG, Photography, eBay, Father's POA

---

## Working Conventions & Preferences

- **Always start sessions** with current date and time — Claude has no live clock
- **Morning planning + evening wrap-up** is the daily rhythm
- **Voice first:** Thinks faster than types. Voice Memos → transcript → paste to Claude is preferred for stream-of-consciousness capture
- **Post-call debrief habit:** After any high-value call (Ralph Varble, clients, board members), immediately record a Voice Memo brain dump while still fresh — then transcript → Claude for structured notes, action items, and knowledge base. Target: within 5 minutes of hanging up. This feeds the Chief of Staff agent knowledge base.
- **Billable work:** Log in Clockify. Narrate work to Claude simultaneously to build knowledge base
- **File naming:** `yyyy_mmdd Description` (e.g., `2026_0512 Contacts Export.csv`)
- **Writing style:** Prose for planning conversations; structured lists for to-dos
- **Tangent-prone:** Claude should gently redirect to billable priorities
- **Contacts:** Monthly CSV export from personal Outlook → wipe → import to Unifocus → upload to Claude

---

## Goals & What Pete Is Building Toward

- **PWS growth:** More direct client relationships; raise rates toward market value
- **Longevity:** 99 years old, get up from chair under own power, walk unassisted. Foundations: sleep, diet, exercise, social support
- **Kim's book:** Convince Kim to write her story — reluctant but story is extraordinary; New York Post story pending may be catalyst
- **Pete's book:** Gratitude as starting point (the WHY to complement Atomic Habits' HOW); AI as journal may be the path
- **Stuff philosophy / book:** Objects, value, togetherness, and letting go. The Plates, The Red Couch, The Single Sock Paradox, The Community. Photography as memory storage. "The memory isn't in the plate." Writing itself through conversation.
- **Baha Mar tool:** Build Claude artifact — BQT mapping completeness checker
- **Health dashboard:** Apple Health export → Claude personal body composition dashboard
- **AI as journal:** Voice Memos → transcript → Claude → organized reflection (ongoing workflow to develop)

---

## Recurring Reminders

| Cadence | Task |
|---|---|
| Every session | Start with date & time |
| **15th and last day of month, noon CT** | **CRITICAL: Unifocus invoice deadline.** Log Clockify hours, convert to days, build invoice, send to Shilpa Bhando. See unifocus_invoice_deadlines memory. |
| After every high-value call | Voice Memo brain dump → transcript → paste to Claude for structured notes + Chief of Staff KB |
| Every planning session | Remind Pete to recruit BTTR Treasurer |
| 10th/11th monthly | Pay father's bills (ECUA, FPL, Cox, USAA Property Insurance, Citizens Wind & Hail, USAA Visa, storage unit auto 11th) — after June 1 ECUA/FPL/Cox transfer to renters |
| Monthly | Export contacts CSV: personal Outlook → Unifocus → upload to Claude |
| Weekly | PWS networking — reach out to former Unifocus contacts for prospecting |
| Every 2 weeks | Alison Nix lawn payment — $70 Apple Pay, reimburse from Dad's NFCU trust account (last paid June 1) |
| Annually (renewal ~June 2027) | ENSEC pest control — $374 fire ant treatment; confirm tri-annual spray + termite plan renewal; Desiree Hartlaub is scheduling contact |
| Early October 2026 | Request mail-in ballot for November general election |
| October 2026 | Father's tax return deadline (involves PenAir details and cost basis for house) |

---

## Open Items / Known Gaps

- [x] **Microsoft 365 MCP server** — confirmed working on Surface Studio 2026-06-11; reads Teams chats (Unifocus tenant: pcastellano@unifocus.com), Outlook email, calendar, SharePoint/OneDrive, Teams meeting transcripts
- [ ] Unifocus IT security: M365 connector approved — monitor and give feedback on how it's working
- [ ] Rosewood Miramar: Is Local booking type intentionally absent at GH and SLS?
- [ ] Baha Mar: Are Breakfast Box and Dinner Box used at GH and SLS?
- [ ] Baha Mar: What does SLS "Boat & Airline" event type map to?
- [ ] MHBR: Which jobs were included in the original .644 HPOR benchmark?
- [ ] **Baha Mar Casino** — contact Clay Price and Ed Peek re: Unifocus closing a deal; Pete likely doing the implementation
- [x] **Pensacola move-in** — Renters moved in June 1, 2026 ✅; house incomplete but intentional; countertops/plumbing completed week of 6/1–6/8; renters thrilled
- [x] **Pensacola travel** — June 1–6/14 trip to Orlando and Pensacola completed; visited Dad, managed renter move-in, worked with contractors
- [ ] Omaha Steaks gift card for Sherry & Randy Beene — not yet sent
- [ ] Pay Tom for early months of storage (Pensacola property)
- [x] Craig Taylor — added to Outlook contacts
- [ ] Father's taxes — October deadline; construction/maintenance files found at property (confirms cost basis < county assessed value); PenAir details still needed
- [ ] **Call Ralph Varble** — confirm: (1) Jun 22–26 New Orleans/HMAlpha still on? (2) Pete on The Joseph Nashville training week of Jul 20? (3) Heathman Portland dates? (4) Aug 10–14 Moran Houston + Aug 17–21 Indianapolis confirmed?
- [x] **Read "Fw: Unifocus set up- timeline"** — reviewed 6/8/26; MakeReady properties: Joseph (Nashville), Heathman (Portland), Moran (Houston). Joseph training confirmed weeks of Jul 6 + Jul 20.
- [x] **Mohonk flights** — booked: AA GFLPYC, OMA-ORD-EWR, Aug 2, departs 7:00 AM. Seats 10C + 9D. Ticket # 0012349569454.
- [ ] **Calendar coordination** — Full consulting schedule: Jun 22–26 (New Orleans, TBC), ~Jul 20–24 (Joseph Nashville, TBC), Aug 2–7 (Mohonk), Aug 10–14 (Moran Houston), Aug 17–21 (Hilton Indianapolis). Personal blocks: Sep 20–26 Disney, Nov 27–Dec 6 MSC.
- [ ] **Pensacola 2-10 Home Warranty** — plumbing issue opened 6/8/26; follow up on claim progress
- [x] **Accountant (Mark Starkweather)** — responded 6/8/26: Travel (air/car/gas) deductible ✓; Meals NOT deductible for Schedule E rental reporting; Groceries for renters = Supplies (deductible), but Pete's personal groceries are not; Pete can reimburse himself from father's account for rental-purpose expenses; expense report is sufficient documentation; keep receipts. Meals removed from expense report accordingly. Potential future report: separate reimbursement from father's account for meals Pete paid out of pocket during oversight trip.
- [x] Priyanka Kalia — Product Owner role filled by Daniel (June 10); Pete at peace, pursuing WFM evangelist path
- [ ] Kim's book — still need more conversation
- [ ] PWS rates — should be raised, timing TBD
- [ ] **Send thank you to Hal Daub** — for Bob Kerrey Bridge book interview (6/11/26, 2.5 hours, recorded); upload transcript when ready
- [ ] **Reconcile claude.ai open items → CLAUDE.md** — review recent claude.ai "Pete" project chats for to-dos, reminders, and commitments that never made it here; Scribd cancellation reminder is a known example of the gap
- [ ] BTTR Treasurer — David Dover met June 4 — **strong candidate**; need talking points to present him to the board. Nobody else has stepped up.
- [ ] **BTTR meeting** — coordinate with Karen Bluvas (Asst. Treasurer) + Cathie Kellogg CPA (BTTR accountant)
- [x] **NTSG Registered Agent** — account setup complete 2026-06-10; vendor: Registered Agent Solutions, Inc. (RASi) | https://rasi.com | portal: https://rasi.corpliance.com/ | Brian Pride — Brian.Pride@wolterskluwer.com | 512-640-6606
- [x] NTSG: pay insurance bill — Policy PHPK2741797-000; confirmed paid 6/8/26; policy copy received and stored 6/8/26; copy also sent to Lisa Carmichael. Elizabeth Hovorka (402) 330-7979.
- [x] NTSG: picnic location deposit paid — 2026-06-10
- [ ] **QuickBooks setup** — Explore eBay seller discount/promo pricing; set up company files for PWS, NTSG, BTTR, eBay/Photography
- [ ] **Receipt attachment workflow** — Configure QB + Quicken Simplifi to accept receipt images; test Claude extraction → both systems
- [ ] Ecosystem assignments for BTTR, NTSG, Photography, eBay, Father's POA (now mapped to QB)
- [ ] Full tech stack inventory
- [ ] Board member roster for BTTR
- [ ] Agent architecture design sessions (ongoing)
- [ ] **Clear iPhone voicemail** — flagged May 26, still unresolved
- [ ] **Watch Honor Flight Mission 36 video** — on thumb drive; narrative draft saved at `journal/2026-06-12_honor-flight-mission-36.md`; re-extraction from claude.ai needed (some conversations blended in current draft)
- [ ] **Upload Kim's LinkedIn/professional profile** to claude.ai "Pete" project — requested May 19
- [ ] **Mac McIntire / Strategic Logics derivative** — review and refine for PWS use; flagged May 26 (confirm if still relevant)
- [ ] **Mohonk: Projected Hours issue** — Founders/Granary shifts not generating; James taking notes/screenshots, Bron/Casey to submit support ticket — confirm ticket was submitted
- [ ] **UNIFOCUS-246757** — Rosewood Baha Mar Banquet Forecast not populating; escalated to Data Integration; follow up on resolution; also review related tickets 246339, 241784, 238540 for pattern
- [ ] **Baha Mar: Tastings mapping decision** — Menu Tasting KBIs: roll into Ttl Lunch/Dinner or stay separate? Deliberate call needed; flagged as "don't let this be an accidental omission"
- [ ] **MHBR: F&B standards migration** — Excel staffing guides need to be migrated into Unifocus and validated with outlets; open from original engagement
- [ ] **Baha Mar SLS & Grand Hyatt mapping** — Waiting for Rhondi (SLS) and Jon (Grand Hyatt) to identify their Event Management System administrators so Pete can get complete Event/Booking category configuration. Follow-up email sent 6/15 for early delivery 6/16. Once received, create dummy BEO files with all combinations per property, import with Monali, delete. This lights up all mapping options without disrupting live data.
- [ ] **Krispy Kreme settlement** — $75–$3,500. Data breach Nov 2024. Check if you received a breach notification email. File at settlement website. **Deadline: June 26, 2026**
- [ ] **Apple iPhone settlement** — $25–$95/device. Did you buy iPhone 15 Pro/Max or iPhone 16 (June 10, 2024–Mar 29, 2025)? Claims not open yet — watch for notice.
- [ ] **Capital One 360 Savings settlement** — Had a Capital One 360 Savings account Sept 2019–June 2025? Auto-payment July 2027 if eligible — confirm account history.
- [ ] **Blue Cross Blue Shield settlement** — Had BCBS coverage 2008–2020? New claims closed (Nov 2021 deadline passed). If you filed then, payment due May 2026 — check if received.
- [ ] Build habit: check settlement aggregators (ClassAction.org) periodically for new eligibility
- [ ] **At PC: Google privacy audit** — go to myaccount.google.com → Data & Privacy → review Web & App Activity, Location History, YouTube History; turn off what you don't recognize. Also check Gemini Spark background access. Source: trusted email, GetKim.com. Decide what to block and what to share publicly.
- [ ] **Pensacola: File USAA loss of rent supplement** after project completion — gather: homes.mil March 10, 2026 listing inquiry, email thread with renter, signed lease from John Hallam. Supplement claim covers rent from moment of loss through project completion.
- [x] **Pensacola: Return second (unopened) kitchen faucet** — returned to Lowe's Pensacola June 1 on way to airport
