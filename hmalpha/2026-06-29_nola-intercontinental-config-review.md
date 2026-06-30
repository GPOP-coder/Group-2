# HMAlpha — NOLA Intercontinental Config Review Call
**Date:** June 29, 2026
**Note:** Recording started ~3 minutes into call

---

## Participants
- Pete Castellano (PWS — trainer)
- Steve Carrell (Unifocus — config owner)
- Devin (HMAlpha)
- Nicole (HMAlpha — going onsite next week)
- Taylor (mentioned)

---

## Labor Standards — Reviewed on Call

### Front Desk
| Shift | Staffing | Driver |
|---|---|---|
| AM 7–3:30 | 1 person | Base |
| AM 7–3:30 | 2 people | 76+ departures |
| PM | 1 person | 1–75 departures |
| PM | 2 people | 76+ departures |
| Supervisor AM | 1/day, 7–3, 5 days/week | — |
| Supervisor PM | 1, 3–11:30 | — |
| Supervisor Overnight | 1 | — |
| Bell Attendant AM | 1 | Occupied rooms |
| Bell Attendant PM | 1, 3–11:30 | Occupied rooms |
| Bell Mid-shift | 1, 11–7 | Flex — brought in earlier as needed |
| PBX | 1 | 44+ occupied rooms; below = front desk handles |

- Guest service trainees: none configured
- Matthew (AGM) was very hands-on in setting these standards; Steve confident in the numbers — came from real discussion with management, not pure estimates
- Supervisor coverage means basically 2 people at desk every morning except Mon/Tue

### Housekeeping — Room Attendants
| Standard | Minutes |
|---|---|
| Staff minutes | 20 |
| Departures | 28 |
| Stayovers to clean | 17 |
| Stayovers not serviced | 40% |

- **Comparison to Nashville (Union Station):** Nashville = 15 min stayovers / 30 min departures; NOLA = 17 min stayovers / 28 min departures (slightly longer stayovers, slightly shorter departures)
- Shift: 9 to 7:30
- **Known system behavior:** Staff minutes + shift structure will generate 2 short shifts per day. Train housekeeping manager to expect this — it's not an error. They can manually blend to one 8-hour shift, but the system will still show 2 short shifts in the standard.

### Public Space Attendant
| Shift | Staffing | Driver |
|---|---|---|
| 7–3:30 | 1 | Base |
| 7–3:30 | 2 | 242+ occupied rooms (previous day) |
| 7–3:30 | 3 | 363+ occupied rooms (previous day) |
| 3–11:30 | 1 | Base |
| Overnight | 1 | Base |
| Overnight | 2 | 160+ occupied rooms |

### Housekeeping Supervisor
- 1 per 100 rooms based on previous day's occupied rooms
- Breakpoints at 100, 200, 300, etc. — "one for every hundred, which is industry average"

### Laundry Supervisor
- 1 person, 8–4:30, 5 days/week

### House Person
- Breakpoints: 85, 170, 255, 340, 425 (departures + stayovers to clean)
- 1 person per 85 rooms — also industry average

### Laundry Attendant
- 3 people at 88 rooms
- 4th at 200 rooms
- Below 88: rides — rarely gets that low

### F&B — Restaurant Servers ("Pete's" — see note below)
- Servers start at 5:30 AM; restaurant opens at 6:00 AM
- Increments: 45, then 20 — at 105 departures: 6 people
- **Issue flagged by Pete:** At 105 departures with 6 people × 6-hour shifts = 2,160 person-minutes ÷ 150 covers = 14.4 minutes/cover. For a buffet, that's too much labor.
- Restaurant closes at 11 PM; servers are scheduled to 12 (midnight) for a full 6-hour shift
- Steve's assessment: "No one's ever going to run that standard." 3 hours of opening labor for a small restaurant volume doesn't add up.
- F&B director was told this would raise red flags; Steve raised it in his recap — numbers are inflated
- Steve couldn't get them lower during configuration
- **Recommendation:** This will reveal itself in practice. Allow for natural correction over time.

---

## Key Issues / Action Items

### 1. PBX — BLSPD Mismatch
- Property only budgeted 1 FTE; system/standard produces ~2 people every day
- "God bless her" — sweetest person but the budget doesn't match the standard
- **Flag for training:** Devin to raise with property

### 2. F&B Server Standard — Too High
- Standard won't be run as configured; restaurant hours don't support it
- Steve recommends allowing it to reveal itself; property will self-correct
- Future direction: Move toward **run rate standard** (minutes per cover / productivity-based) rather than shift-break-point scheduling standard
- Pete's framework: Pick a start time, use minutes per cover, allow overscheduling, watch actual vs. standard closely
- **Flow standard** discussed as future possibility (15-minute increments) — but too expensive/complex for where HMAlpha is now; "you're not even close to being there yet"

### 3. Rooms Forecast — Garbage In / Negative Departures
- Import is coming from ProfitSword
- Revenue managers only update **occupied rooms** forecast on 1st and 15th of each month
- **No one is forecasting arrivals or guests** — those are coming in from budget/actuals, not live forecast
- Result: Negative departures in the import; numbers don't work
- **Who needs to fix it:** Maya (Director of Rooms) — needs to update arrivals and guests in ProfitSword
- Pete showed Maya how to do this onsite; she hasn't used it since
- Devin had call with Mary Grace (EVP Sales) yesterday; Mary Grace meeting with revenue managers today to assess bandwidth for doing this portfolio-wide
- Pete's recommendation: Revenue managers should own arrivals + guests — they are the masters of those numbers. Best case: also engage the Executive Housekeeper (often the best person at forecasting departures/stayovers from experience)
- **Action: Devin → get revenue managers (or Maya) actively forecasting arrivals and guests in ProfitSword**

### 4. Granular Banquet Data — Delphi Integration
- Currently receiving only total lunch / total dinner from Delphi (not granular by event type)
- Property wants to switch to granular — system is set up for it, just needs the Delphi feed
- Triana (HMAlpha) working with Duff on report parameters in Delphi; email sent to Manali today for confirmation
- Until integration is live: manual daily send from Delphi → HMAlpha team → property
- HMAlpha team getting Delphi access (Devin already submitted IHG brand-level request)
- Plan: Make screenshot how-to for DOS team to run and send the report daily
- Nicole may be able to work with DOS onsite next week to get it set up
- **Action: Devin/Triana → confirm with Manali; get Delphi access; set up manual send process**

### 5. BEO Dummy File Strategy (Pete's recommendation)
- Can't map event types in Unifocus until you've seen them at least once in an import
- **Strategy:** Extract all event types from their Delphi file, create a dummy BEO file with every combination, import it once with Manali, map everything, then delete the dummy records
- One-time import "lights up" all mapping options permanently
- Pete shared this with Nicole previously; flagging for Devin to know
- **Action: Pete + Manali → execute dummy file import after Delphi access is confirmed**

### 6. Pre-Training Email to Property
- Steve has not yet sent the introductory email to the property
- Should go to: GM, DOF, and HR
- **Action: Steve → send ASAP**

### 7. Pete's Hotel Reservation — NOLA
- Pete does not have a hotel reservation for next week yet
- **Action: Steve → send Pete reservation info; Pete arriving Monday**

---

## Training Schedule — Next Week (NOLA Intercontinental)
- **Nicole:** Late Thursday flight out; arriving Thursday night; onsite Friday+
- **Pete:** Arriving Monday; late Thursday flight out (can push to Friday if needed)
- Format: 1 admin day + 2 manager days; 13 managers (same structure as Nashville)
- Steve and Ralph going to Nashville (The Joseph / Highgate — separate engagement, not Pete's)

---

## Side Notes
- **"Pete's" restaurant:** The Intercontinental NOLA has a restaurant called "Pete's." Group made jokes about renaming it after training. Pete said: "I got more. Just wait."
- **"You're special like everybody else"** — Pete's standard line when a property insists they're different. Contest: how many minutes before a property says it. Record: 6 minutes. Union Station "felt different because we're a hotel with a restaurant. No one's ever done that before."
- **Crawl before you walk before you run** — Pete's phrase; also used by Devin
- Cross-portfolio configuration comparison: No reporting in Unifocus for comparing standards (minutes/cover, etc.) across properties. Pete recommends keeping an external record. "More about results, not configuration."
- Steve note on show notes: When Steve or Devin disagrees with a standard, they leave a note in the system for future consultants explaining why.
