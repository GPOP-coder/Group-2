<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — John Grech Weekly Follow-Up Call #1

**Date:** August 27, 2026, 12:00 PM–~1:19 PM (started ~90 min, transcript captured through 1:18:49)
**Attendees:** John Grech (Unifocus), Peggy Taylor (DOF), Charles James (joined partway), Pete Castellano (joined ~1:05:14, having gotten tied up elsewhere). **Pete missed roughly the first 65 minutes live** — this write-up is built from the transcript, not memory.

**Format:** First of 4 scheduled coaching/QA calls Unifocus runs post-implementation. John does homework beforehand, reviews the property against a timeline-based scorecard (2 pts = yes, 1 pt = partial, 0 = not done, scored out of 100), sends a synopsis card after each call. **Rotation:** this week and next week = John; week 3 = John is on-site at Hilton Scottsdale, so someone else (likely Taylor Walton, per the follow-up email) covers; week 4 = John returns.

Continues into `2026-08-27_john-grech-followup-call-and-bqt-handoff.md` (the email thread that followed, including the BQT KBI Mapping handoff to Pete).

---

## Scorecard review (first ~50 min, John + Peggy/Charles only)

- **Planning period auto-roll** — confirmed working, system correctly rolled to Aug 29–Sept 4. Easy 2 points.
- **Rooms forecast** — imported from ProfitSword, reviewed 8/21 by R. Newman (confirmed via audit trail — arrivals/guests edited, departures correctly left alone since they're calculated).
- **Banquet forecast** — imported from CI. Someone (unnamed) edited "Local Reception Heavy" on the 1st from 0 to 50 the day before this call — a good catch, since CI imports aren't always correct. John: "kudos for that."
- **Revenue Center Forecast (dining outlets)** — auto-runs Friday, suggests forecast off ~13 weeks of history, ran 8/21 as scheduled. Peggy/Charles had looked at it but confirmed (via audit log — no edits since Friday) they had **not** hit "generate," which John flagged as important: hitting that button wipes out any manual edits already in the forecast. Good habit reinforced, no incident this time.

## Spa schedules not generating — root cause found live

- Peggy: Spa was the one department with **zero projected hours / no schedule generated** after Friday's automated run — she manually pushed it through, didn't do the same for other departments (turned out others were fine on the schedule-generation side, separate issue below with Paychex).
- John checked Task Scheduler → Generate Schedules task → **Spa was not checked in the department filter**, likely because Spa was added to the property as a department *after* this task was originally configured. Fixed live by checking the box.
- John also configured a failure-notification alert on the task going forward, and asked Peggy to flag him directly (rather than opening a ticket immediately) if any department's schedule fails to generate again, so he can loop in support with more context.

## Paychex wiping today/tomorrow's schedules — root cause + fix

- Peggy: schedules imported into Paychex yesterday (8/26, published ~5:45 PM for the 8/29–9/4 period) **wiped out the existing Paychex schedules for today and tomorrow**, leaving staff unable to punch in.
- **Root cause (Pete, once he joined):** Unifocus publishes a rolling 14-day window to Paychex every time a publish happens, and that same publish also sends an erase instruction for those dates. Since the *current* week (ending before 8/29) had never itself been published in Unifocus — this was WLP's first live week, more of a practice period — Paychex had schedules for today/tomorrow that existed **only in Paychex**, with nothing in Unifocus to protect them. The erase instruction wiped them with nothing to replace them.
- Pete had already flagged this exact risk in an email before it happened, recommending Peggy hold the publish until Saturday 8/22 specifically to dodge this collision — **Peggy had missed that email** and published on the normal cadence instead.
- **Fix Peggy applied on her own, independently correct:** disabled the "enforce schedules in Paychex" option, which stops the requirement (and the wipe risk) going forward. Pete confirmed this matches what his note would have recommended. **Resolved, no further action needed** — this was Peggy solving it before Pete even got a chance to weigh in live.
- Ongoing mechanic for reference: schedules export to Paychex 3x/day — 10 AM, 3 PM, 8 PM Eastern (7 AM, noon, 5 PM Arizona time).

## Missing actual-hours punches — several jobs investigated

Using the Employee Reconcile / Hours Transfer error emails (Peggy screen-shared hers since Employee Maintenance was down for everyone — see Access Outage below):

- **Banquet Server, Room Service Server** — zero worked hours despite people actually working. Root cause under active investigation when Pete joined (see TK/Reconcile code section below).
- **Kitchen utility/prep cook, PCA-3800-4782** — job code missing from labor structure entirely (contract labor in Stewarding/Kitchen). John added it live.
- **Banquet Bartender** — "job code not found" error traced to a **double space** between "Bartender" and "Banquet" in the code as it exists in Paychex/the import. John added a corrected duplicate entry live; won't know if it actually clears the error until the next day's report — **instructed Peggy to check tomorrow and report back if it's still failing.**
- **Employee ending "562"** — a distinct "home job not found" error for one specific employee. Noted for follow-up once Employee Maintenance access is restored (see below) — not resolved on this call.
- **Secondary job codes** (e.g., employee 26300465, secondary job "Beverage/F&B Assistant Manager") — John's understanding is there's an existing, separate ticket open with Paychex specifically to clear secondary-job duplication; these can be ignored for now, unlike primary "job not found" errors which are usually fixable on Unifocus's end.

## TK/Reconcile code root cause — Pete's explanation, partially resolved

- Pete's read: codes import from Paychex formatted as `PropertyCode-JobCode-JobTitleText`, and **every time someone edits anything in Paychex, the title-text portion can drift** (extra dash, period, or space), breaking the exact-match Unifocus needs between its TK/Reconcile code tables and what Paychex sends. TK and Reconcile codes are supposed to mirror each other but don't always in practice.
- **Background:** Pete requested access to these emails via ticket **UNIFOCUS-260442** (8/21/26), resolved same day by Nguon Zhong — explains his comment on the call that he'd "just started getting the hours import error e-mail last week."
- Worked through the Hours Transfer Results and Reconcile Employee Results emails live with John:
  - The suspected-missing work-records code **PCA-2005-2560** (contract room attendant) turned out to actually **already be present** in the TK codes table — so that specific "missing code" theory was wrong; something else is causing that one's error. **Needs a ticket to Monali** to dig further (interface/mapping side, not something visible from the property side).
  - Found, incidentally, that whoever originally built the labor structure had **also** put that same work-records code into the Reconcile Employees table, which it shouldn't be — Pete confirmed it's harmless/inert ("not doing anything"), but John flagged he should delete it for cleanliness. **Contrast noted:** a different (unnamed) property actually does intentionally bring individual work-records employees into Reconcile — not the pattern WLP should follow.
- Call ended (Peggy/Charles had a hard-stop finance meeting at 1:18) before this thread was fully resolved for the remaining jobs (Banquet Server, Room Service Server specifically). John offered to keep walking Pete through his full notes after Peggy left; Pete agreed to help but noted he'd already "hit a wall" trying to fix some of these live and can't fix all of them alone.

## Access outage — Employee Maintenance down property-wide

Both John and Peggy (and Pete, when he tried) were locked out of Employee Maintenance for the entire call — each had already opened separate tickets that morning. This blocked checking several specific employee records (the "562" error, employee 26300465's secondary job) that otherwise would have been resolved live. A related "Ajax error" also affected Housekeeping/Laundry scheduling access — Director of Housekeeping hit the same issue the day before; John opened a ticket for that too.

## Standards/coverage audit (Labor Effectiveness Report walkthrough)

Quick pass through actual-vs-standard by department, mostly confirming things are working, with a few flags:
- **Bar back** — no punches found going back 5 weeks of data. Tentative call: add it to the labor structure anyway, pending confirmation on whether bussers are actually covering bar-back duties informally.
- **Banquet Supervisor** — no dedicated person in the role currently; unclear who's covering (name garbled in transcript, possibly "Yesenia"). Flagged for confirmation, not resolved.
- **Spa Retail** — showing zero hours; should have punches. Reception and retail roles are merging (the standalone "attendant" role being phased out) — worth re-checking once that transition settles.
- **Spa Supervisor** — currently on leave, returns 9/8/26. Expected zero hours until then, not a system issue.
- **Laundry Supervisor** — confirmed should have punches; John saw the same access-outage error there as everyone else, couldn't fully verify.

## ⭐ Banquet Captain standard — real misconfiguration found and demonstrated live

- Symptom raised by Peggy: Banquet Captain has a standard, but the report shows **no allowed/projected hours at all**, even though actual worked-hour punches for the Banquet Captain are coming through fine (confirmed live — Tuesday's captain worked ~21 hours).
- **Root cause:** the standard's driver KBI is "Banquet Captains Needed" (forecast side) / "Banquet Captains Used" (actuals side) — **this KBI does not come from the CI/ProfitSword import at all.** It requires a human to manually type in a number, every day, on both sides:
  - **Forecast side** (Labor Planning → Enter Input Forecast): how many captains you expect to need that day.
  - **Actuals side** (Enter Actual KBIs): how many captains were actually used, after the fact.
  - If nobody does this manual entry, the standard has nothing to calculate against and generates zero hours — completely independent of whether real people actually worked and got punched in.
- John demonstrated live: backfilled the forecast for 8/29–9/2 based on the already-published schedule (4, 1, 2, 1 captains across those days), which correctly generated 5 shifts / 20 hours off a standard of "1 captain per 10 covers."
- **Floated but not decided:** switching the driver KBI to something that *does* auto-populate from CI, like **Total Banquet Covers**, so this manual-entry dependency goes away entirely. Not committed to — worth Pete's own follow-up judgment on whether that's the right call structurally (ties into the same banquet-mapping work John handed Pete in the follow-up email).
- **Access confirmed:** the banquet manager does have permission to enter both the forecast and actual KBI numbers — so once someone owns doing this daily/weekly, the mechanism itself works.

---

## Follow-up: John's Week 1 Scorecard — 100% (email 8/28/26, 8:34 AM)

Sent to Jannett Sanora, Charles James, Peggy Taylor, Fabrizio Poli — cc Devon Peters, Nicole Mendez, Taylor Walton, Pete, Alain Derderian, Ralph Varble. **Week 1 score: 100%.**

- ✅ **Laundry Supervisor, Spa Retail, Casa 71 Barback, Banquet Supervisor, Banquet Server & Room Service Server hours not importing** — missing job codes identified and corrected, hours re-imported, confirmed via attached LER. **Resolves the Banquet Server/Room Service Server thread left open at the end of the call**, and reframes "Banquet Supervisor" — it wasn't a staffing/coverage gap as it looked live on the call, it was the same missing-job-code issue as the others. Also confirms bar back should be in the labor structure (Casa 71 Barback named explicitly) and Spa Retail hours are fixed.
- 🆕 **Housekeeping Manager unable to access the Laundry Schedule** — new finding, not raised on the call itself. Ticket **UNIFOCUS-261117** (John).
- **Property-wide Employee Maintenance outage** — ticket **UNIFOCUS-261118**, opened by both Peggy and John. Still blocks the "...562" home-job error and employee 26300465's secondary job code from being checked.
- ✅ **Spa auto-schedule fix confirmed resolved** — matches the live Task Scheduler fix John made during the call.

**Official scorecard document** (attached to the email — "Property Weekly Guidance Call Score Sheet," 28/28 = 100%) adds a couple of precise details beyond the summary bullets:
- **Scheduling item 9/10 comment** ties the Laundry-not-scheduled issue directly to the Ajax access error: "Laundry not scheduled. Manager getting Ajax error on the Laundry Department. Schedules for the current week were erased from Paychex due to the setup of the interface. **This only occurs in the first week when the schedule is usually blank. This will no longer occur** as the hotel is scheduling in Unifocus." — a simpler restatement of the same root cause Pete explained live (14-day rolling publish window erasing anything not itself published in Unifocus), confirming it's a one-time first-week issue, not an ongoing risk. Directly explains why Laundry specifically went unscheduled: the manager couldn't even get into the department to schedule it.
- **Item 15 (Employee Maintenance / Reconcile Errors):** scored Yes/2 — zero Reconcile Errors as of the scorecard, confirming the missing-job-code fixes actually cleared the errors, not just re-imported hours.
- **Item 16 (Mobile App):** N/A — WLP uses the **Paychex mobile app**, not Unifocus's own, so this item doesn't apply to them.
- Import cadence confirmed: actual KBIs import daily at 10 PM UTC / 3 PM Arizona; contract labor hours/dollars import daily at 2:25 PM UTC.

**Not mentioned in the scorecard (still genuinely open):**
- Banquet Bartender double-space job-code fix — not explicitly named in the corrected list above, so unconfirmed whether it actually cleared.
- Monali ticket for PCA-2005-2560's import-side error — not raised.
- Banquet Captain standard KBI-driver decision (manual Needed/Used vs. auto CI value) — Pete's own call, untouched by this email.
- The BQT KBI Mapping handoff itself — separate, ongoing task.

---

## Open items — current status after the 8/28/26 scorecard

- [ ] **Monali ticket:** PCA-2005-2560 shows correctly in TK codes but is still erroring somewhere on the import/mapping side — needs interface-team investigation.
- [ ] **Cleanup (low urgency):** remove work-records code 2560 from the Reconcile Employees table where it doesn't belong (harmless as-is, but should be cleaned up).
- [ ] **Confirm Banquet Bartender double-space fix actually cleared** — not confirmed by the scorecard list; still worth checking directly.
- [ ] **Employee "...562" home-job error** and **employee 26300465 secondary job code** — blocked on UNIFOCUS-261118 (Employee Maintenance access).
- [x] ~~Banquet Server / Room Service Server missing hours~~ — resolved per 8/28/26 scorecard.
- [ ] **Decide whether to change the Banquet Captain standard's driver KBI** from manual Needed/Used entry to an auto-populated CI value like Total Banquet Covers — Pete's call, ties into the broader BQT KBI Mapping work John handed off.
- [x] ~~Bar back~~ — confirmed as "Casa 71 Barback" in the corrected job-code list, resolved.
- [x] ~~Banquet Supervisor coverage~~ — was a missing-job-code issue, not a staffing gap; resolved per scorecard.
- [x] ~~Spa Retail hours~~ — resolved per scorecard.
- [ ] **New: Housekeeping Manager Laundry Schedule access** — UNIFOCUS-261117.

---

*© Peter A. Castellano. All rights reserved.*
