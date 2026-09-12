<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Admin Training, Day 1 (Monday)

**Date:** August 17, 2026
**Session:** HMAlpha System Admin Training — Day 1 of training week (Mon 8/17–Thu 8/20)
**Attending:** Charles James ("CJ" in system), GM (Fabrizio Poli, referred to as "our general man[ager]"), Elizabeth (admin access "just in case"), Jannett Sanora (HR — likely present for at least part of this session based on the Paychex discussion below, though not explicitly named earlier in the transcript received), Pete Castellano
**Source:** Raw voice-memo/session transcript, pasted directly across multiple segments — labeled by Pete as "Westin Admin 1 Monday," "Westin Admin 2 Monday," etc. (these are segment labels for the transcript pieces as pasted, not a strict AM/PM split; the 50,000-character message limit forces breaks). Rough auto-transcription with crosstalk, not cleaned verbatim; structured below in chronological order as received.

---

## 1. Pete's Background Story (told live to the group)

Pete gave his usual origin story to open the session — worth capturing in his own words since it's the foundation of his PWS pitch to new clients:

- Got into Unifocus in **2008** when the property he was working reduced very high, ~300 people laid off around the same time the owner died; Pete contacted Unifocus directly asking who needed help, and that became his start.
- Has worked **Marriott, HEI, and Alice-system** properties, including owned-and-operated Hiltons "all over the world," and describes himself as specializing in luxury resorts — "that's what brings me to places like this all the time."
- Has been doing hands-on Unifocus work **5–7 years** by his own estimate at time of telling (rough, not exact).
- **Took time off to care for a family member** roughly two years ago, then came back to Unifocus/PWS work and was immediately staffed on HMAlpha as part of the pilot wave. (Consistent with Kim's health situation — see CLAUDE.md.)
- Held Steve Carrell's config-consultant role himself in the past — offered to help the property directly with standards questions if Steve's post-departure loose ends need attention.

## 2. Property System History — New Context

- WLP was **under a different management company two years ago** — Pete heard it as "Maryland, by ATI, hotel and resorts" (likely mis-transcribed; property was EGI/AGI-managed or similar before current ownership/management — worth confirming exact name next time it comes up).
- **Previous WFM system: Labor Looking Glass (LLG)** — property has real labor-management muscle memory already (weekly labor meetings, productivity checks) which Pete flagged as a big advantage vs. properties starting from zero.
- Key LLG vs. Unifocus difference surfaced: **LLG works in hours** (forecast → hours needed → compare to actual hours worked = productivity check after the fact). **Unifocus works in shifts** — it builds a full shift schedule first (no names), driven by guest-count-based labor standards, and only checks productivity in the background while building. This was called out as the single biggest conceptual shift for admins/managers coming from LLG.
- **Property tech stack (as of 8/17/26):**
  - POS: **LightSpeed** (current), migrating at the **beginning of next year**
  - Financial system: **M3** (per Charles/GM's answer — Pete double-checked this wasn't confused with "MICROS")
  - Historical systems mentioned: Fidelio (old PMS), Symphony/MICROS lineage
  - Time & attendance / HR requests: **Paychex app** — used for time-off requests and accrual tracking. Employees are **not** using the Unifocus mobile app currently, and there's no property mandate yet to adopt it (some departments are wary of adding another required app given past pushback on Marriott DLC training app rollouts).
  - Housekeeping boards: currently **paper boards**, transitioning to **device-based ("HotSOS," heard as "hot sauce")** within the next couple of weeks — timing worth tracking since it overlaps the training rollout.
  - Banquets: **CI** (event management system) — banquet import into Unifocus is in development; current granularity issue flagged (see §4).

## 3. New Finance Leadership — Update Needed

- **A permanent Director of Finance is starting in September** (not yet on-property as of this session) — name heard as **"Nelly"** (phonetic only, needs confirmation — could be Nellie, Nelly, or similar). This person is coming from **another HMAlpha/Westin property**, not new to the company.
- This is **separate from Peggy Taylor**, who has been acting as Associate/Assistant DOF since Mark McSteen's 7/31/26 retirement — Peggy's status (temporary bridge vs. staying on in some capacity) wasn't clarified on this call.
- **Action:** confirm the new DOF's actual name and start date with Peggy or Charles before assuming "Nelly" is correct; add to [contacts.md](contacts.md) once confirmed.

## 4. Banquet/CI Import — Granularity Gap Flagged

- Unifocus is being built to pull **every BEO** from CI directly (no manual re-entry), broken out by meal period (breakfast/lunch/dinner) **and** by service style (plated / buffet / continental / boxed) — because culinary labor standards are sensitive to service style, not just meal count.
- **CI is reportedly not currently capturing that level of service-style detail** — Charles/GM confirmed this is a known gap. Pete offered to help since he has prior hands-on CI experience, noting the gap is sometimes a CI configuration/usage issue rather than a CI limitation. **No owner or timeline assigned yet** — worth a follow-up once Pete has bandwidth to dig into WLP's specific CI setup.
- Related: **arrivals/departures forecast import problem already known going into this session** — GM/Charles confirmed guest-count and arrivals data still isn't populating reliably from ProfitSword, which cascades into housekeeping (rooms are cleaned by departures/stayovers, not by a flat room count) and into the revenue-center/labor forecast chain. This is the same open item tracked in kb.md's pre-training checklist ("Review any open BLSBD or labor-standards flags") — confirmed still open as of 8/17.

## 5. User Administration — Confirmed Working

- Pete walked Charles through **Administration → User Administration** live. Confirms the **User Administration gap flagged on the 8/12/26 planning call was in fact resolved** by Steve Carrell before this session — Charles (as "CJ") appeared correctly in the user list with property access, consistent with the 8/13/26 resolution already logged in kb.md.
- **New minor finding:** Charles's invite had gone to a **wrong/typo'd email domain** (something auto-filled, not his real @westinlapaloma.com address) — Pete re-invited him live on the call to the correct address. Small individual fix, not indicative of a broader gap like the pre-training one.
- Reminder for future admin sessions: **admins cannot see their own entry** in the User Administration list (by design) — this tripped up both Charles and Elizabeth during the walkthrough; worth pre-empting in future admin-day scripts so it doesn't read as a bug.

## 6. Help Menu / Self-Sufficiency Resources (standard walkthrough, notable framing)

Pete's structured pitch for property self-sufficiency post-implementation — same four resources under the Unifocus "hamburger menu" → Help, called out because Charles raised the real onboarding question ("how do we train new hires after Pete and Steve are gone"):

1. **Online Help** — full searchable manual, context-sensitive to current screen.
2. **Online Training** — longer-form videos (same library referenced in the pre-work email, plus more depth).
3. **Quick Reference videos** — Pete calls these "the TikTok of Unifocus": short, task-specific how-to clips, heavily used company-wide.
4. **Unifocus Support** — ticketing system. Pete's explicit ask: **don't open tickets solo** — go through a single internal point of contact first (so property leadership isn't blindsided by duplicate/parallel tickets, and so systemic issues surface faster instead of generating a flood of individual tickets during outages).

**Onboarding gap surfaced:** WLP has **no consolidated "watch these videos in this order" onboarding doc** for new hires learning LightSpeed/Paychex/Unifocus/etc. — Pete suggested the property build a simple curated link list as a deliverable coming out of this training, framed as a good HR project. No owner assigned yet.

## 7. Weekly Timeline Walkthrough (partial — transcript cut off mid-topic)

Pete began the full Friday-through-Wednesday planning cycle walkthrough (this matches the printed 3-page timeline referenced in the 8/12/26 call notes):

- **Friday ~1:00am local:** new planning period opens automatically; forecast/KBI data import begins.
- **Friday, ongoing:** room forecast pulled from ProfitSword (best practice: edit in ProfitSword, not in Unifocus, so the import stays authoritative); banquet forecast pulled from CI (see §4 gap); once guest count + banquet data are in, arrivals/departures math resolves.
- **Friday ~11:00am:** revenue-center (outlet) forecasts auto-generate off guest count minus banquet-committed covers.
- **Friday by 3:00–3:30pm:** all forecasts (rooms, banquets, revenue centers) must be finalized — this is the hard gate.
- **Friday ~3:30pm:** shift generation runs — **shifts first, names second** (see §2 LLG-vs-Unifocus framing).
- **Mon–Wed morning:** managers fill/adjust shifts with actual staff.
- **Wednesday:** labor meeting (property's existing LLG cadence is Thursday-for-the-following-week; Unifocus cadence is Wednesday — this timing difference wasn't fully resolved in the transcript received and is worth confirming property's final choice).
- **End of day Wednesday:** schedules published (app-visible to employees only once explicitly published — not before, so staff aren't watching a schedule get built in real time over the week).
- **Contract labor / work records:** currently reconciled **at the department level**, no centralized finance validation process against vendor invoices — Pete flagged this as informal but didn't push for a change; just confirmed how it works today.

**Continued (received as a second transcript segment):**

- **Environments (regression tool):** lets the system isolate an anomalous day (big group in/out, holiday) from the 13-week rolling average/regression used to forecast. Can also be pre-tagged forward onto a future date (e.g. "this is a federal holiday weekend, only compare against past federal holiday weekends"). Pete's guidance: use for recurring, generalizable patterns ("holiday weekend") not one-off named events ("Thanksgiving," "4th of July" specifically) — too narrow a sample. **Not needed now** — flagged as a Rick (revenue) task for later maturity, not part of this week's training.
- **Rooms forecaster:** built into Unifocus but **WLP is not using it** — ProfitSword remains the sole source of truth for rooms; generating a forecast in Unifocus after the ProfitSword import would just get overwritten, so admins should never run it.
- **Input KBI Forecast screen** = where banquet/BEO data lands. Confirmed **zero vs. blank matters**: a blank cell means CI mapping never attempted an import; a zero means the mapping ran and pulled in nothing (i.e., legitimately needs a human to check/enter). "Mark Complete" buttons on this screen are informational only — no system function, just a signal between staff.
- **Group vs. Local KBI split** only matters for calculating the guest count available to revenue-center forecasts (local banquet attendees shouldn't be subtracted from hotel guest count); once that step is done, group/local is discarded and only the combined total feeds labor standards.
- **Spa:** meal-period standards exist in the system (e.g., 30-min massage) but Steve closed spa's meal periods for WLP rather than activate them — deliberate choice to avoid spa constantly flagging "needs attention" and burying real issues elsewhere. Spa is **not** currently driving any labor forecast.
- **"Swing Suite"/Top Golf-style lounge section:** flagged as needing attention in the revenue-center forecast — clarified it's not a separate outlet or vendor-staffed venue, just a section run by WLP's existing lounge staff; low-priority "needs attention" flag, not urgent.
- **Revenue Center Forecast for the 8/22–8/26 planning week:** reviewed live and looked complete as of the session (aside from the swing-suite flag above).
- **Task-log timestamps are NOT property-local** — always displayed ahead of actual local time, consistently offset; a real troubleshooting gotcha worth remembering (a task showing "2:04pm" on the log may not mean 2:04pm Tucson time).
- **Generate Projected Hours / Generate Schedules** are supposed to auto-run Friday ~3:30–3:35pm; the system log showed Steve manually triggering these Friday evening (~6pm) instead — consistent with forecasts not being finalized on time that week, i.e., a live example of the "if the gate isn't met, be ready to run it manually" warning Pete gave earlier in the session.

## 8. ⚠️ Important Finding — Unifocus/Paychex Schedule Export Conflict Risk

**The most consequential item from this session.**

- Confirmed via system logs (not confirmed on the receiving/Paychex side) that **Unifocus is already automatically exporting WLP's schedules to Paychex**, currently once a day, with a second daily export possibly being added — cadence and timing are controlled centrally by Nicole/Devin (HMAlpha corporate), not property-adjustable, and run on a fixed timezone that isn't property-local.
- **Property's current live practice:** managers still enter/edit schedules directly **in Paychex**, and WLP has Paychex configured so employees **cannot clock in at all** without a matching schedule row already in Paychex (confirmed by Charles as current, intentional setup — a stricter enforcement than most properties Pete has seen).
- **Plan going into Tue/Wed manager training:** tell managers to stop entering schedules in Paychex — Unifocus becomes the single source of truth, auto-exporting to Paychex instead.
- **The risk Pete flagged live:** once schedules start actually flowing from Unifocus, they will silently overwrite whatever a manager just entered directly in Paychex the next export cycle. Combined with WLP's hard clock-in lockout tied to Paychex having a schedule, this creates real potential for chaos this week — a manager could enter a same-day change in Paychex to let someone punch in, only to have it overwritten before that employee's shift.
- **Correction:** it was **Jannett Sanora (HR)** — not Charles — who indicated **she could disable the Paychex schedule-required-to-punch-in setting herself**, since that lockout lives on the HR/payroll administration side, not property operations. Pete didn't want to unilaterally direct that but agreed it "sounds like a good idea" and left it as a same-day decision for the property.
- **Action (urgent, same-day 8/17):** Jannett to weigh disabling the Paychex clock-in lockout ahead of the Unifocus export going live as the schedule source of truth; property to also check with Devin, Nicole, and the Unifocus interface team on actual export cadence/timing before Tue/Wed manager training proceeds with the "don't touch Paychex" instruction — Pete explicitly does not want to teach managers a workflow that then breaks clock-ins mid-week.

## 9. Manage Schedules — Complete / Approve / Publish Workflow

- Screen: Labor → Planning → Manage Schedules (also reachable from the Schedule Editor).
- Portfolio-wide sequence being rolled out (decision owned by HMAlpha corporate, not the property): manager marks a schedule **Complete** → a second person **Approves** → one designated person **Publishes**. Publishing cannot be automated — a human must actively confirm and hit publish.
- Employees only see a schedule in the Unifocus mobile app once it's published — moot for WLP today since no one is using the app yet, but relevant once adoption starts.
- **Not being taught to WLP managers this week** — flagged as "known coming," not yet active for this property.

## 10. Contract Labor / Placeholder Scheduling

- Work-records-based contract labor hours don't automatically count as "scheduled" hours — for the weekly labor meeting to reflect a true total (e.g., a stated 1,000 room-attendant hours needed), any portion covered by contract labor not on a named-employee schedule must be entered manually, either as (a) a bulk hours-by-job/day/week entry with no name attached, or (b) placeholder/unnamed employee records (e.g., "Room Attendant 1, 2, 3...") scheduled like regular staff but kept distinct from real employee IDs.
- **Standing Unifocus guidance across properties:** don't mix contract labor onto the same named-employee schedule as regular staff. **WLP currently does mix them** — separated today only by a label/column on one shared schedule, not a hard system separation. Charles raised the real-world complication that contract labor scheduling at WLP is inherently last-minute/day-of, not planned a week ahead like Unifocus's shift-generation model assumes. **No resolution reached** — flagged as a "cross that bridge" item, not an action for this week.

**Session paused for a short break at this point** (not the lunch break between the 9am–12pm and 2pm–5pm blocks — this was still within the AM session). Pete indicated openness to reconvening later in the week if content runs long (Thursday intentionally left open on his schedule), and the group discussed monitoring/redistributing manager sign-ups across the four Tue/Wed sessions since attendance looked uneven (some slots had ~3 people).

---

## 11. Labor Structure — Job Code Sync Between Paychex and Unifocus

- **Labor Structure** (Setup → Labor Structure, admin-only) is the foundation everything else runs on — Pete's analogy: "like your chart of accounts."
- **How the daily error emails work:** the system first imports **employees** (Employee Reconcile), then **hours** (Hours Transfer), matched on employee ID + job code. If a job code exists in Paychex but hasn't been created/mapped in Unifocus yet, the **employee record won't import at all — and neither will their hours**.
- **Common real-world trigger:** a field promotion — e.g., a server temporarily covering as a host picks up a secondary job code in Paychex that doesn't yet exist/match in Unifocus, generating reconcile errors until fixed.
- **Live example from the session:** WLP needs a new **houseman** position — has a housekeeping supervisor job code but no houseman code yet. Charles/Jannett confirmed the process: property requests a new job code from **Belle, payroll manager at HM Alpha corporate**, who has to create and release it (job codes tie into the accounting system, so properties can't self-create them). Still pending as of this session.
- **Whoever creates a job code in Paychex should trigger someone to also create it in Unifocus** — otherwise the reconcile errors persist. Not yet formally decided whether this becomes a property-level or corporate-level responsibility going forward — described as still "discussion above at the HM Alpha level."
- **21-day error lag, important troubleshooting note:** hours import carries a rolling ~21-day (3-week) trailing window. Even after a job-code mismatch is fixed going forward, **old unmatched shifts already in that 21-day window will keep throwing errors until they age out** — this is expected, not a sign something is still broken. (Can be worked around by backdating the job assignment inside Unifocus Employee Maintenance — to be covered in a later session.)
- **Job Code vs. Timekeeping (TK) Code:** two distinct, similar-but-not-identical codes feed two separate imports — the Employee Reconcile feed uses the **job code** (exact character match required), the Hours Transfer feed uses the **TK code**. Both need to line up.
- **"Default" hours category:** regular Paychex-fed hours land under a "default" tag; Work Records (contract labor) hours land in the *same* job code bucket but tagged separately, so contract vs. regular labor can be broken out on reports while still combining cleanly against the labor standard. Confirmed WLP does **not** run separate contract job codes today — contract hours already fall into the same regular job code, which is the desired setup.
- **Divisions/Departments are just folders**, easy to reorganize, but **moving a job code drags a lot with it** (all history, prior names, user permissions) — caution against casual restructuring. WLP keeps all salaried staff in one separate division even though they belong operationally (and in the P&L/chart of accounts) to their real departments — Unifocus's labor structure doesn't have to mirror the accounting chart of accounts.
- **Goal: one-to-one correspondence** between Unifocus job codes and Paychex job codes (multiple legacy Paychex codes can map to a single Unifocus job if it's truly the same role under an old code, but that's the exception, not the pattern to design toward).

## 12. Productivity Targets (Labor Structure)

- Separate **Productivity** tab under Labor Structure, where LLG-style goals (hours/occupied room, lbs of laundry, hours/cover, etc.) can be entered at division, department, or job level.
- **Purely a reference comparison — no functional effect on scheduling or the labor standard itself.** Feeds only the Labor Productivity Report, which Pete called secondary — the weekly labor meeting runs primarily off workload-based labor standards, not productivity comparisons.
- **WLP already has some goals entered** (Rooms looked populated, F&B did not) — Pete's read: "this is a good LLG property," they already had the habit.
- **Guidance given:** treat this as an annual target, not something to re-enter monthly the way LLG habits might encourage — natural variance (e.g., average-length-of-stay swings affecting hours-per-occupied-room even when workload is flat) is expected and isn't a reason to constantly rebaseline.
- Reminder given again: **banquets and housekeeping labor won't line up day-by-day** (sometimes not even week-by-week) against forecast/actual, because banquet labor concentrates entirely on the event day and housekeeping catch-up work (hanging rooms) can spill across days — validated by the group as a known LLG-era phenomenon, not a new Unifocus quirk.

## 13. New Job Setup Checklist — What Does NOT Auto-Populate

When a new job code is created in Unifocus, several settings do **not** come pre-filled and must be set manually by whoever creates the job:
- "Show on Dashboard" checkbox — required for the job to appear on the labor dashboard
- Productivity factor/target (§12)
- Shift-fill sequencing rules (which day/shift fills first; full-time-first vs. job-rank vs. seniority ordering — WLP is **non-union**, so job rank isn't in play; exact fill-order preference for WLP wasn't finalized in this session)
- Minimum hours-between-shifts / no-"clopening" rule — sets the minimum rest time between one shift ending and the next starting for that job; this is what stops the system from auto-scheduling a closing shift immediately followed by an opening shift ("clopening") for the same person, **and** stops it from auto-scheduling back-to-back double shifts more generally. **Found blank on several existing jobs, including some bartender roles**; unclear whether that was a deliberate exclusion or an oversight during config. **Flagged to double-check with Steve**, not resolved live.

## 14. Mobile — Confirmed NOT Enabled for WLP

- Pete attempted to demo Setup → Labor → Mobile live but the menu option **wasn't visible/accessible** on the WLP admin view — **mobile has not been turned on for this property** (activation is done property-by-property, not automatic/global).
- Tangential data-hygiene flag surfaced while troubleshooting: an old/orphaned employee record showing stale access from **~2016** — not resolved live, worth a follow-up check rather than acting on the ambiguous transcript detail.
- Ties back to the earlier-flagged ~5 employees with lingering secondary-job-code mismatch errors (§ from morning session) — Steve's plan was to let those "fall off" naturally after the 21-day hours window rather than force-fix; to be revisited when Employee Maintenance is covered.

## 15. Employee User Maps — Critical Setup, Completed Live On the Call

- **Setup → Employee → Employee User Maps** — ties each **system user** (a person with a Unifocus login: manager or admin) to their own **employee record**. This is a distinct, separate function from any manager-to-staff reporting relationship.
- **Consequential if skipped:** without this mapping, some Schedule Editor functions won't work for that user at all, and **mobile won't work for anyone until this is done** — directly relevant once mobile gets turned on (§14).
- **Not automatic** — has to be set manually for every new user added, with no bulk/default behavior.
- Same self-visibility quirk as User Administration: **admins can't map themselves** through this screen the normal way — someone else has to set up the admin's own mapping.
- **Team worked through the full WLP user list live (~25–30 users)** — Charles, Jannett, Elizabeth, and Pete split the list alphabetically and matched each user to their employee record in one pass rather than leaving it as a follow-up task. Pete's framing: "this is what this class is for" — property staff know who's who far better than he does. No explicit save step needed; each match applies immediately (confirmed via a link icon appearing next to completed rows).
- **Not confirmed complete for 100% of the list by session's end** in the transcript received — worth a follow-up check that every WLP user got mapped, especially any stragglers near the end of the alphabet.

## 16. ⚠️ Critical Finding — Hourly Supervisors Can See Each Other's Pay Rates in Employee Maintenance

**The most consequential finding of the day — surfaced live, unresolved as of transcript end.**

- Property staff (Charles/Jannett) discovered live that hourly **supervisors** who have Unifocus logins — not just managers/admins — can see other employees' **hourly pay rates** in Employee Maintenance. Confirmed real names: Sandra (housekeeping supervisor) and others were named as current supervisor-level users who shouldn't have this visibility.
- **Steve had previously told the property that only System Administrators could see wages — Pete demonstrated live that this is incorrect.** Group-level permissions do not restrict pay visibility by default; a hourly supervisor's standard access includes seeing rates.
- Property's instinct: fix this on their own side before raising it to HM Alpha corporate (Devin/Nicole), and get an answer **before Tuesday's manager training**, since supervisors are attending those sessions.
- **Pete demonstrated a working (but manual, one-at-a-time) fix live:** created a test user, confirmed group-level permissions alone don't block wage visibility, then went into **User Administration → the user's individual "Unifocus Global" actions/applications settings** and explicitly **denied** the wage-visibility permission at the **individual user level** — individual-level Deny overrides whatever the user's group otherwise Allows. Confirmed working on the test account. **No bulk-apply option** — this has to be done per user.
- **Bigger-picture option surfaced but not decided:** rather than patch permissions user-by-user, the property could reconsider whether **supervisors need Unifocus logins at all**. Historically supervisors needed access mainly to enter schedules into Paychex — a task that becomes unnecessary once Unifocus auto-exports schedules directly (see §8). If supervisors' only real function was schedule entry, removing their access outright may be cleaner than the permission-by-permission fix.
- Pete's framing: **"This is why HR needs to be involved in this — it's not just a finance thing, operations needs to be in here too."**
- **Action (urgent, before Tuesday manager training):** property to decide fix approach — permission-level denial per supervisor user, vs. removing Unifocus access for supervisors entirely — and have an answer in place before supervisors are back in the system.

## 17. Employee Maintenance — Sub Only (Auto-Schedule Exclusion Flag)

- Secondary jobs are, by a relatively recent system-wide default, automatically flagged **"Sub Only = Yes"** — meaning the auto-scheduler will not proactively assign shifts for that job to that person, though they remain manually schedulable and stay on the list.
- Exists specifically to stop the auto-scheduler from pulling someone into a stale/incidental secondary job code they don't actually work anymore (or a role they've since been promoted out of).
- **Troubleshooting tip:** if the auto-scheduler appears to have given a shift to an unexpected person instead of who was expected, check whether that person's job should be marked Sub Only.

## 18. Employee Maintenance — Availability & Scheduling Method (Variable / Regular / Permanent)

Core mechanics for how the auto-scheduler decides who gets which generated shift — Pete walked this live using "Jordan" as the working example.

- **Availability setup sequence** (Employee Maintenance → employee → Availability):
  1. **Required Off first** — hard-blocks specific days entirely (midnight-to-midnight); the auto-scheduler will never violate this.
  2. **Available to Work windows** for the days they do work — must be at least as wide as the relevant labor standard's shift, **including the unpaid lunch break**. If the window can't fully contain the standard shift, the person simply won't get the auto-generated shift at all. **"Know your standard first"** — Pete's core message, since availability is meaningless without understanding what shift widths the standard is actually generating.
  3. **Preferred Off exists but is not a hard block** — it only slightly deprioritizes that person in the fill order; they can still be scheduled that day. Explicitly warned this doesn't behave the way managers will assume.
  - Every hourly employee should have *something* entered on every day (even a fully wide-open placeholder) so Employee Maintenance completion is visually obvious in the Schedule Editor — blank availability is a troubleshooting red flag.
- **Daily/weekly overtime caps** are set here too (e.g., 8 hrs/day, 40 hrs/week for WLP's full-time definition) — the auto-scheduler stops assigning shifts to that person once they hit the cap, preventing auto-generated overtime.
- **Three scheduling methods**, controlling how a specific person gets matched to a specific auto-generated shift:
  - **Variable** (default for everyone) — respects Availability, follows the normal fill order (full-time → part-time → contract, then job rank/seniority/hire date/alphabetical as tiebreakers). Pete's recommendation for a property WLP's size: stick with Variable — the fill-order logic plus good Availability data should be sufficient without needing overrides.
  - **Regular** — overrides the *shift time* for a standard (e.g., designates someone as "my Tuesday/Wednesday AM busser" outside their normal availability window) but does **not** override the labor standard's required headcount — if the standard calls for 2 bussers and 10 people are marked Regular for that slot, only 2 still get it, and ties break the normal (seemingly random) way. For fixing specific known problems, not general use.
  - **Permanent** — overrides **both** shift time and the standard's headcount — marking 10 people Permanent for a slot schedules all 10 regardless of what the standard calls for. Most aggressive override; doesn't change the underlying standard itself, just who's forced onto the schedule.
- **Framing for Tuesday's managers:** Unifocus builds the shift, then hands it out — it doesn't build the schedule "for" them. Managers who haven't done Employee Maintenance well (availability, sub-only, understanding their standard) will see the Friday 3:30pm auto-schedule as "random" and broken. **Pete will not be onsite when Friday's first live auto-schedule generates** — he'll be traveling — and told the team to expect troubleshooting questions the following week; cc Steve Carrell on those.

## 19. Schedule Groups — Cosmetic/Print Grouping, Common Source of Confusion

- Schedule Groups have **no functional effect** on the actual schedule or auto-scheduling logic — a naming/grouping convenience, originally built for print layout, later also usable as a Schedule Editor filter.
- Group access is granted per-user in User Administration; a user may see all groups (grayed out if unauthorized) or only their permitted ones.
- **Common failure mode:** new employees don't get a schedule group automatically. A manager filtering the Schedule Editor by schedule group won't see a new hire who has no group assigned, even though the employee exists and has availability set — looks like a missing/broken schedule but isn't.
- **Pete's estimate: ~40% of all schedule-editor confusion tickets trace back to this exact issue.** His general take: not a fan of using schedule groups out of the box by default, though sometimes unavoidable for print/organizational needs.

## 20. Job Assignments — Sub-Skill Tagging Within a Job

- Some jobs (line cooks were the live example) have **Assignments** — sub-designations within one job code (e.g., a specific outlet/station) that may be a purely descriptive label or may actually tie into the labor standard itself (not yet confirmed which applies at WLP — to be clarified when Labor Standards is covered).
- If an employee lacks the specific assignment, the auto-scheduler can't give them that shift **and** a manager can't manually assign a system-generated shift to them either, until the assignment is set.
- Entirely manager-controlled, not automated at hire/onboarding — e.g., a manager might deliberately withhold a "grill" assignment from a cook for safety/skill reasons while allowing dessert station.
- Flagged as another likely source of "the schedule is broken" complaints if managers don't proactively set assignments for new hires.

## 21. Contract Labor — Correct Setup Pattern (Confirmed Against a Reference Property)

- WLP currently mixes contract labor directly onto the same schedule as regular Westin employees, separated only by a label — reconfirmed from the earlier §10 finding. **WLP's housekeeping is roughly 60% contract labor / 40% in-house** as of this session — a real majority, making this pattern especially consequential to get right here.
- Pete pulled up **InterContinental New Orleans** (a union property — not directly comparable on union status, but useful for the contract-labor pattern itself) to show the intended setup: contract labor gets **placeholder "employee" records** — one job only, named descriptively ("Contract House Person 1," "Cook 1," "Cook 2"...) — **never** a real individual's name, and never assigned more than one job, since these aren't real employee records.
- **Explicit legal caution from Pete** (his own words: "I'm not a lawyer, so I only know what to say in that regard"): putting a real contract worker's actual name on the property's own schedule carries co-employment/liability risk regardless of whether it's visually separated from regular staff — this is a caution he's heard echoed across properties, not formal legal advice.
- Placeholder contract records won't appear on the mobile app (not real employees) — property will need to print schedules or export to Excel for contract-labor distribution; exporting doesn't remove the same underlying concern if real names end up on the export.
- Contract-labor hours still get corrected/entered through Work Records as previously discussed (§10) — no new mechanism here, just reconfirmed against a working example.
- **Action:** Pete offered to help WLP actually build out the placeholder contract-labor records while still onsite — not yet done as of this transcript segment.

## 22. Mobile Invite Process (brief)

- Onboarding a real employee to the mobile app requires a valid **email address on file** (pulled from Paychex, generally not manually overridden) — admin then sends an invite generating a unique username/password (can be printed for the employee to self-enter), and the employee downloads the app themselves. Pete's framing: no formal training really needed for this step ("how many people needed training to download Facebook?").
- Discussed delegating mobile-invite ability to a non-admin (e.g., an HR coordinator who already sees broad employee data) via a scoped User Administration permission set rather than full System Administrator rights — **exact minimal permission needed wasn't confirmed live** ("I think that's all you'd have to do" — not verified).

## 23. Session Wrap — Tuesday Planning

- **KBI review deliberately deferred to Tuesday morning (9am–12pm)** rather than covered today, specifically because Peggy (finance) had to leave for the rest of Monday — to pick up a grandchild — and Pete didn't want to cover KBIs without her present.
- The Tuesday 9–12 slot was originally one of the four manager-training sign-up options (the one with only ~3 people signed up, flagged earlier in §10) — being repurposed to continue admin-level work instead; group discussing shuffling the few signed-up managers to a different slot.
- Session ended mid-logistics-discussion (a scheduling conflict around Peggy's spa "sound bowl" class at 10am) — **transcript cut off again at the 50,000-character limit**; pick up next segment for the end of Monday's admin session.
- **✅ Confirmed after Peggy left for the day:** the group agreed to reconvene **Tuesday morning in place of the Tuesday AM Manager Session** (not just a proposal — this is now the settled plan) — training continued Monday afternoon without Peggy in the meantime, covering the report walkthroughs and standards detail below.

## 24. New Hire Process — Confirmed Mechanics + Job-Code Rate Strategy

- New hires flow from Paychex → Unifocus automatically overnight; effective date = the employee's actual start/orientation date. **No manual permission step needed for the employee record itself** — Employee Maintenance data imports as previously covered (§16–18). Manual permission work is only needed when someone becomes a Unifocus **user** (gets a login — i.e., a manager/admin), not for rank-and-file employees.
- **Multi-job-code hiring strategy discussed:** a department can choose to hire someone (e.g., a server or cook) with multiple job codes at once if it's known upfront they'll float across outlets/stations, or add codes later as they're trained up during a probationary period — a departmental call, not a system requirement either way.
- **Pay-rate mismatch workaround:** if an employee is qualified for multiple job codes at different pay rates (e.g., an $18 cook who can also cover $15 cook shifts), Pete's suggested fix is to **pay them the higher rate across all their job codes** — avoids payroll complications and creates an incentive to code hours correctly. Alternative: wrap everything into one umbrella job code and track the detail at a lower level.
- **Reference note:** WLP's Unifocus instance resolves to a production/region-specific URL (heard as "prod...USEA1" off `portal.unifocus.com`) — worth bookmarking directly.

## 25. Employee Requests — Time Off & Leave of Absence Import Mechanics

- **Only approved time-off requests** import from Paychex — anything still pending is ignored entirely.
- Import runs **once daily, overnight** — not real-time.
- **Hard deadline: must be approved in Paychex by end of day Thursday** to be honored by Friday's 3:30pm auto-schedule generation. Anything approved after that still comes through, but if the auto-schedule already placed that person on a shift that day, **the shift and the time-off request display stacked in the same schedule cell** — a deliberate visual flag telling the manager that shift needs manual reassignment.
- **Leave of Absence (LOA)** imports the same way, including effective dates. Once an LOA start date hits — even mid-week — Unifocus stops that employee from being schedulable (mirrors what Paychex already does); on the listed return date, they automatically become schedulable again for the rest of that week, even mid-week.
- **⚠️ Real process gap flagged live (not a system bug, just a timing consequence worth knowing):** WLP's actual practice is to **not reactivate a returning employee in Paychex until they're physically confirmed back on-site** (example given: a banquet employee returning from surgery), rather than pre-activating on the LOA's listed return date. Since Unifocus only reflects Paychex changes overnight, same-day reactivation means **Unifocus won't catch up until the next day** — so a manager may need to manually add that first-day-back shift themselves rather than relying on the system. Pete's guidance: no process change needed, "do what you've been doing," just be aware of the one-day lag this creates.

## 26. Transfers & Terminations — Confirmed Mechanics

- **Transfers:** Unifocus follows whatever Paychex reports — a changed primary/home job should update and move to the top of the employee's job list; removing a secondary job in Paychex should remove it in Unifocus too. If a job already exists correctly in both systems (per §11's sync practice), transfers into it should require no manual admin work.
- **Terminations:** removing someone in Paychex removes them from the Unifocus list and detaches them from any shifts they were already on, turning those into **visible open/unfilled shifts** rather than silently deleting the need — a deliberate design choice so managers get a clear reminder that coverage still needs a decision (reassign it, or consciously leave it unfilled).

## 27. New Manager Promotion — User Setup Reconfirmed With Real Examples

- Promoting an hourly employee into a role needing system access requires creating a **separate Unifocus user** — always by **cloning** an existing similar user (never building from scratch), then reviewing every cloned setting, especially Labor Structure access, since a clone is a starting point, not a guarantee of correctness.
- **Employee User Map is required for every new user**, reconfirmed live with two real examples:
  - **"Jordan"** — a brand-new user, found unmapped live; confirmed a user doesn't need to accept their invite email first for the mapping to be done — it can and should happen immediately at user creation.
  - **"Mary Beth"** — had a persistent mapping problem traced to something odd on the **Paychex side** (a title-field discrepancy); the property could manually fix her display name in Unifocus but couldn't determine why she wasn't appearing correctly on the incoming Paychex file itself. **Flagged as likely a Paychex-side data issue**, not fixable from Unifocus. Only **Rick and Fabrizio** remained unmapped as of this point in the session.

## 28. Informal Standards Walkthrough — Housekeeping & Front Desk

Pete deliberately **deferred the formal Labor Standards module and the Interfaces/Actuals discussion** until Peggy (finance) is present — didn't want to cover either without her. But he gave two detailed, informal walkthroughs live in response to direct questions, both genuinely useful WLP-specific reference material:

**Housekeeping — Room Attendant standard:**
- **Departures:** 38 minutes each (Charles initially said 40, self-corrected).
- **Stayovers:** only **85%** of stayovers count toward labor — this percentage came directly from a prior conversation with WLP's Director of Housekeeping, not an assumption invented by Unifocus/Pete.
- **Sunday runs on a different start time** than the rest of the week (exact time not captured).
- **"Pitcher and cups" model:** total minutes for the day get "poured" into sequential 8-hour shift "cups" (minimum 4 hours) until minutes run out — the **last cup is always a partial/short shift by design**, essentially every time, not a bug. **Short shifts get offered/assigned first.**
- **Rounding always rounds up, never down, and can't be fully disabled** — the system is built to fill complete shifts rather than leave fractional labor hanging. This means visible per-task minute values (like the 38-minute departure figure) may already be quietly "dialed down" from the true task time to compensate for rounding always adding extra hours — worth knowing before assuming the posted minutes are pure task time.
- **LLG contrast, stated directly:** LLG computes one flat hours-per-occupied-room number with no departures/stayovers split — fine for nailing an overall productivity target, but can't correctly flex for uneven length-of-stay weeks (a long-stay group week has few checkouts and would be over-resourced by flat HPOR; a high-turnover week needs more hours than flat HPOR would generate). Unifocus's split-driver approach handles that better, at the cost of expected day-to-day/week-to-week variance — reiterated as intentional, not something to chase into perfect alignment.

**Front Office — Front Desk standard** (Sylvia, front office, joined mid-discussion):
- **Baseline:** 1 person on duty at 7am regardless of any volume driver — a fixed minimum.
- **Overnight (3pm–11pm) shift:** one person always on; a **second is added once arrivals cross ~50**. This driver caused a live disagreement: the property's initial read was "under 50 arrivals = zero people," which Pete corrected — it's an *additional* person gated at that threshold, not the sole determinant of whether anyone is staffed. **WLP's actual practice keeps a fixed minimum staffing floor (MOD + PBX + front desk agent) regardless of arrivals** — Pete validated the underlying concern (a full house with an in-house group and zero arrivals still needs desk coverage) without committing to a standard change live; left as a "know your standard" discussion point.
- **7am AM desk coverage driven by departures**, counting only **70%** of departures before applying thresholds: +1 shift over 75 departures, +1 more over 150, +1 more over 225 — capped there, no further shifts regardless of higher departure counts.
- **Separate 7am phone/PBX shift driven by occupancy** (absolute room count, not percentage): triggers once occupied rooms exceed 96.
- **10am "mid" shift driven by arrivals:** second agent added around 50 arrivals, working until 6:30pm; +1 more at 110 arrivals, +1 more at 175 arrivals — capped after that.
- **⚠️ Real gap surfaced live:** the standard as currently configured has **no PM (3–11) phone/PBX shift at all**, but WLP staffs one in practice — apparently folded into the Front Office Supervisor or Night Audit Supervisor job rather than the front desk agent job. **Action agreed on the spot: Pete to walk the team through adding a PM phone shift to the standard "tomorrow."**
- **Pete's core teaching point (repeated from earlier):** managers need to know their standard cold — both for Employee Maintenance decisions and to justify variances at the weekly labor meeting. The standard already "gives credit" for typical scenarios (e.g., only 70% of departures counted at the front desk), so a real variance explanation needs to point to something genuinely unusual, not just "we were busy."
## 29. Backward-Looking Reports — Weekly Labor Meeting Toolkit

Menu path for all of these: hamburger menu → Reports → Report Center (star a report to pin it to the top). Since WLP just went live, several of these previews were thin on real data — Pete used them conceptually, not as a WLP verdict.

**a) Weekly Labor Summary**
- Day-by-day, job-by-job, starting from the driver values (e.g., housekeeping runs off occupancy, departures, prior-day occupied rooms for certain jobs).
- Core read: **actual vs. standard** — trust the standard as the plan for what should have happened, busy or slow. **Read every report bottom-up**: start at the department/division aggregate, drill into individual jobs only if the aggregate looks off.
- Live example: WLP Housekeeping ran **29% under standard** for the week reviewed (949 actual hours vs. 1,339 standard hours) — flagged as needing more weeks of data before concluding whether the standard (recently rebuilt by Steve) is miscalibrated or actuals/contract labor aren't fully flowing yet.
- **"Breakdown hours" variant** splits regular/contract/training hours per job — training hours only show up correctly if coded as training in Paychex; Unifocus just reflects whatever coding it receives.
- **Daily→weekly trend variant**: same report as an 8-week rolling trend instead of day-by-day — useful for judging whether one week's variance is signal or noise. Only ~4–5 weeks of real trend data exist yet since Unifocus actuals just started flowing. Banquet/housekeeping labor still won't line up cleanly day-by-day or even week-by-week (recurring theme).
- Division/department summary view (not job-by-job) is the right altitude for GM/DOF — e.g., Rooms division at 38% under standard as a single line was described as "the first time they've actually looked at their standard against real numbers."
- All reports export cleanly to PDF.

**b) Labor Effectiveness Report**
- Backward-looking but date-range flexible (week, month, quarter) — good candidate for tying to the monthly P&L review; WLP's incoming DOF could adopt this for the September P&L.
- Shows actual vs. standard **with dollar figures included**. **⚠️ Pete's explicit caution: this report should only go to salaried managers, not hourly supervisors** — a concrete, named example of exactly the sensitive data the §16 pay-visibility gap needs to be closed against.
- Philosophy: focus on hours, not dollars — "if you get your hours right and your standard matches budget, you'll be on budget." Dollars shown but treated as secondary.
- Has a department-summarized view (~7 pages for WLP) vs. full job-by-job (~16 pages) — recommended starting point is the summarized view.
- Includes **overtime hours actually run** and **overtime premium pay** (the extra half-time portion only, not full OT pay) — useful cross-check: high overtime *and* running under standard together suggests something's inconsistent (wrong standard, or genuinely understaffed despite the raw hour count).
- **Salaried hours/pay are never pulled into these reports** — worth remembering when reading property-wide totals, since salaried headcount won't be reflected.

**c) Labor Productivity Report**
- Backward-looking, flexible date range; surfaces the **productivity metric** (e.g., hours per occupied room) alongside actual-vs-standard — Pete's framing: **"this is the Labor Looking Glass version of Unifocus"**, the most familiar-feeling report for a team coming from LLG.
- Live example: Housekeeping productivity ran **0.54 actual vs. a 0.76 entered goal** for the week — triggered real discussion about whether the **room attendant standard itself may be set too high** (running well under standard *and* well under the productivity goal points at the standard, not underperformance).
- Reconfirmed: Peggy/finance owns entering and maintaining these goal figures (§12), and they should be **annual targets**, not monthly — consistent with WLP already budgeting Rooms flat across the year.

**d) Weekly Projected Schedule Report (the one forward-looking report)**
- Shows **projected (standard-driven) hours vs. currently scheduled hours**, job by job, for the upcoming week — before the schedule publishes.
- Purpose: managers self-check whether their in-progress schedule is tracking to the labor standard *before* the Wednesday labor meeting, without manual reconciliation.
- Directly replaces the old LLG habit of re-typing schedule numbers into a spreadsheet to compare against plan — Pete's framing: **"the reports are self-evident."**
- Reports can be auto-distributed to managers ahead of the labor meeting via a scheduled subscription — available, not yet set up for WLP.

## 30. Weekly Labor Meeting — Format, Cadence, and Timing Confirmed

- Meeting runs **Wednesday**, covering the week that ended the prior **Friday**. ProfitSword numbers are audited actuals, not preliminary — **finance's numbers are expected reliable by end of day Monday, pulled into Unifocus overnight into Tuesday**, so **Tuesday is the earliest managers should start reviewing last week's numbers** while simultaneously building next week's schedule ahead of Wednesday.
- **Meeting structure being adopted:** separate meetings for **Rooms** and everything else, with a possible third meeting for **non-operating/admin departments** (Engineering, IT, etc. — historically never attended a labor meeting under LLG). Not fully finalized which departments land where — WLP's call, not dictated by Unifocus.
- Two core questions frame every meeting: **"How did we do last week (and what can we learn from it)?"** and **"Are we ready for next week?"** — explicitly not a new concept, mirrors WLP's existing LLG-era meeting discipline.
- **First live labor meeting under Unifocus targeted for ~Wednesday, August 26, 2026** ("next Wednesday... 9 days from now," said Monday 8/17).
- System goes fully live **this Friday (8/21) at 3:30pm** — projected hours generate, shifts auto-fill, and schedules stop going into Paychex manually from that point forward (consistent with §8).
- **Coding accuracy in Paychex matters for clean variance reads:** training hours only show up correctly if coded as training there; contract labor is already flowing into these reports correctly (§21), so "the contract labor isn't captured" generally isn't a valid excuse once coding is right.
- **Explicit caution against over-managing same-week "best available data":** Pete described (anonymized) a prior property where aggressive intraday hour-cutting based on incomplete same-week actuals caused real guest-facing problems (pulling bell/shuttle staff mid-week for being "out of hours," forcing a manager to personally cover runs). Guidance: **don't over-manage this week based on incomplete data** — the weekly last-week/next-week cadence is intentionally the safer rhythm, same caution that applied under LLG.

## 31. Housekeeping Room Attendant Standard — Full Detail (Supersedes §28's Informal Version)

Pete pulled up the live standard on screen and gave the complete breakdown:

- **Start time:** 8:00am Monday–Saturday, **9:00am Sunday**.
- **Departures:** 38 minutes each, 100% of departures counted.
- **Stayovers:** 20 minutes each, only **85%** counted (consistent with the 15% DND assumption from earlier).
- **Additional fixed time:** 40 minutes per room attendant for stand-up/cart/break time, plus the **unpaid lunch** added on top.
- **Confirmed live:** WLP's room attendant standard had originally been entered as a flat **productivity number**, not a true granular labor standard — **Steve corrected this over the weekend** into the real departures/stayovers/fixed-time formula above (this is what his weekend email referenced).
- Given the 0.44–0.54 actual vs. 0.76 department-level goal discussed in §29(c), the team's live read was that **the standard may still be calibrated too high even after Steve's fix** — a genuine open question needing more weeks of data, not resolved in this session. **⚠️ Superseded 8/18/26:** a more careful read the next day found the opposite — see [Day 2 §18](2026-08-18_admin-training-day2-tuesday.md#18-trend-validation-reveals-a-real-standard-accuracy-question--with-an-important-correction). WLP's real Room Attendant productivity (0.584) sits close to its own budget goal, suggesting the standard (0.44) is actually too *low* relative to budget, not too high.
- No housekeeping department-level productivity **goal** had been entered at all before this session (only room attendant-level existed) — flagged for Peggy to complete.

## 32. Tuesday Plan — Finalized

- **Confirmed: Tuesday 9am–12pm admin session replaces one of the Tuesday manager-training slots** (the ~3-person slot flagged in §10/§23) — settled, not just proposed. Purpose: finish what Peggy missed Monday afternoon (KBIs, standards, actuals/interface detail), plus specifically train whoever runs the labor meeting on **meeting mechanics and "policy"** — what to look for, what's relevant, how to prepare.
- Pete will repeat the same core manager content across the week's three remaining manager sessions rather than needing property staff to attend all three.
- Core manager message to reinforce: **the system builds shifts and fills them — it does not "schedule people" for you.** Early frustration is expected; troubleshooting always traces back to: do you trust your standard, is it making the right shifts, and did you tell the system the right things about your employees (availability, sub-only, assignments)?

## 33. Side Note — New DOF Onboarding Question (Ties to §3)

- Property leadership raised, unprompted, how the incoming DOF (**start date confirmed as September 3, 2026** — firms up the earlier vague "starting September," name still unconfirmed) will get trained on Unifocus given she's arriving mid-stream.
- Pete's answer: not a WLP-specific problem — HM Alpha (Devin Peters, Nicole Mendez) needs a standing answer for this across the whole portfolio, since WLP won't be the last property to onboard a new DOF post-go-live. Pete personally trained Devin and Nicole himself a few weeks ago in Nashville, covering the same material as this week's WLP sessions, specifically so they'd be equipped to help going forward.
- Also named as attending that Nashville session: **Matt (Matthew Schupbach, VP Finance)** — described by Pete as a long-time Unifocus user/fan and likely the internal champion behind HM Alpha's original decision to adopt Unifocus — and a new hire described as HM Alpha's "labor analyst."
- **Not resolved as an action item** — deferred to Devin/Nicole as owners; Pete offered himself as a resource (travel or virtual) if HM Alpha wants to formalize a new-DOF onboarding process.

## 34. Wednesday Scheduling Conflict — Owner's July P&L Review

- **The owner scheduled a July P&L review for Wednesday at 2:00pm**, overlapping the start of the day's last manager training session (2:15–3:00pm) — which is also the **best-attended session of the four (7–8 people signed up)**, and all three admin attendees (Charles, Jannett, Elizabeth) are in that P&L review too.
- **Pete's plan:** arrive at 3:00pm instead of 2:15pm so the session isn't left uncovered while the P&L review runs.
- **Guidance repeated for admin coverage generally:** the three admins don't all need to attend every manager session, but spreading appearances across sessions matters — even a brief appearance reinforces to managers who their go-to resource is (standards questions → finance; schedule-not-working questions → any of the three admins) before they escalate to a support ticket.
- **Framing point worth keeping:** Pete's response to a standards-vs-field-reality tension raised in this conversation (a driver threshold that "works for the budget" but not for how a department actually needs to staff overnight) — the new system creates two-way accountability: **finance now has to answer to operations for why a standard is set the way it is, not just the other way around.** Consistent with the earlier guidance (§29c/§31) that WLP needs a few weeks of real data before judging whether any given standard is right.

---

## Open Items From This Session

- [ ] **⚠️ Urgent, before Tuesday manager training:** Decide fix for hourly supervisors seeing each other's pay rates in Employee Maintenance — per-user permission denial vs. removing supervisor Unifocus access entirely; HR (Jannett) explicitly needs to own/be involved in this, not just finance/IT
- [ ] **⚠️ Urgent, same-day:** Jannett to decide on disabling the Paychex clock-in-requires-schedule lockout; property to confirm Unifocus→Paychex schedule export cadence/timing with Devin/Nicole before Tue/Wed manager training tells managers to stop editing schedules in Paychex — real risk of overwriting managers' entries and breaking WLP's clock-in lockout mid-week
- [ ] Confirm new DOF's actual name/start date ("Nelly," starting September, transferring from another HMAlpha/Westin property) — update [contacts.md](contacts.md)
- [ ] Clarify Peggy Taylor's role once the new DOF starts (bridge vs. ongoing)
- [ ] Confirm property's final choice of labor-meeting day (Unifocus default Wednesday vs. LLG-era Thursday cadence)
- [ ] Revisit CI banquet import granularity (service-style detail: plated/buffet/continental/boxed) — no owner assigned yet
- [ ] Arrivals/departures ProfitSword import still not populating reliably — confirmed still open, cross-check against kb.md pre-training checklist item
- [ ] WLP onboarding video/link curriculum — no owner assigned yet, flagged as a good HR deliverable
- [ ] LightSpeed POS migration timing (early next year) — watch for any Unifocus interface impact
- [ ] Resolve contract-labor scheduling approach (mixed on shared schedule today vs. Unifocus's preferred separation; also a week-ahead-model vs. day-of-reality tension) — no owner or timeline yet
- [ ] Rebalance Tue/Wed manager session sign-ups — attendance looked uneven across the four slots as of this session
- [ ] Follow up with Belle (HM Alpha corporate payroll manager) on the pending new **houseman** job code request — blocks that hire from importing correctly into Unifocus
- [ ] Decide property-level vs. corporate-level ownership for "who adds a new job code to Unifocus when one gets added to Paychex" — still an open discussion at the HM Alpha level
- [ ] Confirm hours-between-shifts / no-clopening rule status on jobs missing it (bartenders and others) — check with Steve whether blank was intentional
- [ ] Confirm Employee User Maps got completed for 100% of WLP's ~25–30 users (done live, alphabetically split among Charles/Jannett/Elizabeth/Pete) — verify no one was missed
- [ ] Check the ~2016 orphaned/stale employee-access record surfaced during the Mobile troubleshooting tangent
- [ ] Turn on Mobile for WLP once the property is ready to pursue app adoption — currently not enabled property-wide
- [ ] Build out placeholder contract-labor employee records (one job each, descriptive names, no real individuals) — Pete offered to help onsite, not yet done
- [ ] Finalize Tuesday morning plan: KBI review with Peggy 9am–12pm, reshuffle the ~3 managers signed up for that original slot to a different session
- [ ] Confirm minimal User Administration permission set for delegating mobile-invite ability to a non-admin (e.g., HR coordinator) — not fully verified live
- [ ] **Add a PM (3–11) phone/PBX shift to the Front Desk labor standard** — agreed live as a Tuesday action item; standard currently has no PM phone shift though WLP staffs one in practice
- [ ] Investigate "Mary Beth's" Employee User Map mapping failure — appears to be a Paychex-side data/title-field issue, not fixable from Unifocus
- [ ] Confirm Rick and Fabrizio get mapped in Employee User Maps — last two unmapped as of this session
- [ ] Revisit front desk overnight (3–11) minimum-staffing model vs. the arrivals-based standard — property keeps a fixed MOD/PBX/front-desk floor regardless of arrivals; Pete validated the concern but didn't commit to a standard change
- [ ] Room attendant standard may still be calibrated too high even after Steve's weekend fix (0.44–0.54 actual vs. 0.76 goal) — needs a few more weeks of data before concluding
- [ ] Peggy to enter a housekeeping department-level productivity goal (only room-attendant-level exists currently)
- [ ] Set up automated pre-labor-meeting report distribution to managers — available, not yet configured for WLP
- [ ] Wednesday 2:15pm manager session — Pete arriving at 3:00pm instead due to the owner's 2pm P&L review conflict; confirm this is communicated to the 7–8 signed-up attendees

---

## Related Files

- [Westin La Paloma — Property KB](kb.md)
- [Westin La Paloma — Contacts](contacts.md)
- [Impromptu Planning Call, 8/12/26](2026-08-12_impromptu-planning-call.md)
- [Training Kickoff Invite, 8/9/26](2026-08-09_training-kickoff-invite.md)
- [HM Alpha Client KB](../kb.md)

---

*© Peter A. Castellano. All rights reserved.*
