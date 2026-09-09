<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — System Admin Training, Session 1 (AM)

**Date:** September 8, 2026
**Session:** HMAlpha System Admin Training — first of two admin sessions this week (kickoff/Monday-equivalent content, run mid-week per property calendar)
**Attending:** Sandra Academia (DOF — key user), Al Catino (Accounting/Payroll), Mark Ziomek (GM — joined ~10 min in), Stephanie Simmons (Director of Sales — brief cameo near end re: banquets/CI), Pete Castellano
**Source:** Plaud transcript, `09-08 am HMA Marriott DM_ Unifocus System Administrator Training-transcript.txt`

---

## 1. Session Framing

- First of two system-admin sessions this week; Pete deliberately front-loading admin/setup content before manager training starts, "so we can get some things lined up."
- Pete's standard caveat repeated here: every property gets the same core curriculum, but every property is "special" — expect Marriott Del Mar-specific quirks throughout (arrivals/departures being the first one, see §4).
- Pete disclosed he's recording for note-taking purposes only, not surveillance — standard practice, said explicitly for the group's awareness once Mark and others joined.
- Pete's background shared live: 25 years in workforce management this year (started 9/10, one day before 9/11), laid off from a casino property in the 2008/2009 collapse, cold-called Unifocus and was hired immediately, taught this exact curriculum monthly for 5 years before going independent ~2 years ago.

## 2. User Administration

- **Menu path:** hamburger/"McMuffin" menu → Administration → User Administration. Only Sandra, Al, Mark, and (unclear if a fourth) will see this menu — restricted to system admins.
- **Users vs. Groups:** Users tab shows individual logins; Groups tab (visible, not editable at this property's permission level) holds the underlying permission bundles — these are **Alpha-wide groups**, not property-specific, so Marriott Del Mar admins can view but not edit them.
- **Golden rule, stated repeatedly: never create a new user.** When someone leaves, **deactivate** them (filter defaults to active/pending only — toggle to see all users to find someone deactivated). When someone new needs access, **clone** an existing similar user via the copy icon, then edit the General tab (name, email) and group membership. Reasons: (1) hundreds of underlying permission settings per user that cloning preserves correctly, (2) preserves audit trail — Pete explicitly prefers renaming a cloned account over reusing an old one, so the audit trail shows every person who's ever held that access.
- **Invite flow:** creating/cloning a user sends an email invite; user sets their own security question, username, password. Admin never manages passwords directly — worst case, re-invite them.
- **Permission structure on an individual user:**
  - **Group membership** grants the bulk of settings (hundreds of permissions) — additive only, no group ever takes away what another grants, by design (Unifocus has been careful to avoid group collisions).
  - **Jobs tab:** managers don't get access to *employees* directly — they get access to *jobs*, and that job access determines which employees they can see/schedule. New job access shows as grayed-out-then-selectable; can grant a single job or a whole department.
  - **Data tab** (very important, admin-controlled): controls which **KBIs** (key business indicators / volumes) a user sees. By default new users/properties get **all KBIs** — this will drift over time as new KBIs get created (new KBIs don't auto-grant to existing users) and as admins deliberately narrow access for a cleaner experience (e.g., F&B doesn't need to see every rooms KBI). Pete's guidance: **default to granting, not restricting** — restricting is a "clean experience" nicety, not a security requirement, except see §7's pay-visibility caution pattern from other properties.
  - Data tab also covers **Market Groups** (hotel-wide KBIs) and **Revenue Centers** (F&B outlets) — a user needs revenue-center access to do anything with those KBIs, including forecasting.
  - **Schedule groups:** property currently has **zero** schedule groups set up — flagged as a future discussion, not urgent (property has almost no schedule-group or operating-code (op code) infrastructure yet).
  - **Standard sets:** only one exists right now (no separate budget standard set yet) — everyone has access by default; will matter once a 2027 budget standard set gets built.
- **Live example walked through:** Edson Lopez's user record — has job access to Altira, the café, and general F&B; group membership drives most of his permissions. Pete flagged (not fixed) what looked like a possibly-abandoned "cashier" job code alongside "host" — asked Mark/Al to check whether that's a real, still-used job or leftover cruft to clean up before Pete leaves this week.
- **Publish/approval workflow (mentioned, not activated):** jobs *can* be configured to require approval before a schedule counts as "published" (multi-step: complete → approve → publish). **Not being used at Marriott Del Mar** — kept simple, no extra approval gate.

## 3. The Weekly Timeline — Full Cycle Walkthrough

Pete's signature "one single page" weekly labor cycle, walked through live and cross-checked against this property's actual calendar. This is the framework everything else (forecasting, scheduling, the labor meeting) hangs off of.

- **Monday, before noon:** system automatically advances the planning period forward. Rooms forecast pulled from **ProfitSword** overnight; banquet forecast pulled from **CI** overnight — both are one-time weekly pulls (system does **not** look backward or re-check these files again once picked up for the week).
- **Monday ~1:30am:** `Import Forecast KBIs` task runs (rooms + banquets, whatever was in ProfitSword/CI as of end-of-day Sunday). Editing ProfitSword/CI after this point has **no effect** on the current week — any further correction must be made directly in Unifocus.
- **Monday, ~11:45am–1:00pm window:** someone should eyeball the imported rooms/banquet forecast and fix obvious gaps (zeros, blanks) before the next automated step. Carlos (revenue manager) currently finalizes ProfitSword numbers "sometime on Monday" (tweaks a pre-existing baseline that's updated the 1st and 15th of each month) — **discussed live but not resolved:** whether Carlos's Monday tweaks in ProfitSword can still influence the week, since the import already ran overnight off Sunday's data. Conclusion reached live: **no** — any Monday ProfitSword edit is too late for that week's import; Carlos needs to have his numbers **finalized by end of day Friday** (or Sunday at the latest) for them to land in Monday's overnight pull.
- **Monday 1:00pm:** `Generate Revenue Center Forecast` runs — needs both rooms and banquets present to calculate outlet-level covers (via a capture-ratio-style calculation off available guest count). This is described as a two-step, back-to-back automated process distinct from scheduling itself: it determines **how busy** the property will be (the forecast/labor standard "makes shifts"), which is separate from **who** gets those shifts (employee maintenance settings, handled later).
- **Tuesday 11:45am:** `Generate Projected Hours` (makes the shifts, per the labor standard) then `Generate Schedules` (fills the shifts, per employee maintenance settings) run back-to-back. This is when managers first see a live schedule to start editing.
- **Managers have until Wednesday 3:00pm** to finish editing (not publish) their schedule, ahead of the **Wednesday labor meeting**. Two questions frame the meeting: *how did we do last week* and *are we ready for next week*.
- **Publishing happens once, all at once, Wednesday** (after the labor meeting, once any last changes are made) — publishing must be done manually by one designated person; it cannot be automated.
- **Go-live sequencing exception (this week only):** the schedule currently posted (week ending 9/18) is what managers will **practice** on this week — it will **not** be published from Unifocus. Managers should keep pushing schedule changes into Paychecks as normal through 9/18. The **first real Unifocus-published schedule is the week of 9/19–9/25**, and — as a one-time exception — that schedule will **not publish on the normal Wednesday cadence**; it publishes late, on **Saturday 9/19** instead, to align the cutover cleanly. From the week of 9/26 onward, the normal Wednesday publish cadence resumes permanently. **After 9/19, anything in Paychecks gets overwritten on purpose** — Unifocus becomes the sole source of schedule truth from that date forward.
- **Daily cadence that continues regardless of the weekly cycle:**
  - Only **approved** time in Paychecks feeds Unifocus (not just entered) — confirmed as of Pete's most recent info (~2 weeks old at time of session). Punch corrections/approvals should happen **daily**, not batched at week's end, so managers can spot issues (e.g., hours landing in the wrong department) with a full extra day of lead time before the Wednesday meeting.
  - **Work Records** corrections (job coding, e.g., housekeeping task assignment) follow the same next-day-visibility pattern — edits made today show up in Unifocus tomorrow, not immediately.
  - **Time-off requests:** approved requests import from Paychecks once per night. A request approved by **end of day Monday** will be honored when Tuesday's schedule draft generates. Anything approved later may land as a "already scheduled + has approved time off" conflict — a deliberate visual flag, not an auto-erased shift, so managers consciously decide what to do with that shift.
- **KBI automated recalculation cadence (mentioned for reporting purposes):** actuals/KBIs process multiple times a day (property-local ~7am, 11am, 2pm, 6pm) as banquet/rooms actuals stream in from ProfitSword — this is why next-day reporting works even mid-week.

## 4. Rooms Forecast Gap — Arrivals/Departures (Property-Specific Issue)

- **Core mechanic:** Unifocus needs **arrivals** to calculate **departures** (departures = change in occupancy + arrivals), and housekeeping's labor standard is driven primarily by calculated departures — so a missing/wrong arrivals number cascades directly into a wrong housekeeping forecast.
- **Marriott Del Mar-specific issue surfaced live:** the property's current PMS reportedly doesn't track/export arrivals cleanly to ProfitSword (Marriott-wide legacy PMS quirk per Mark — "makes Windows 95 look modern"). **PowerAdmin** was named as an upcoming cloud-based replacement PMS (no committed date) that may resolve this.
- **Live workaround demonstrated:** Mark manually entered/corrected arrivals and occupancy numbers directly in the **View/Edit Rooms Forecast** screen for the upcoming week (planning menu), which recalculates departures. Confirmed live that after editing, a **"Recalculate KBIs"** button (top right of that screen) must be used, and it can take a moment to reflect. One test case walked through: a swing from positive to negative departures on Monday traced to an arrivals number too low relative to a big occupancy jump — corrected live.
- **Guidance given:** front desk / revenue team should pull actual arrivals from **on-the-books PMS numbers plus expected pickup**, calculating backward from expected total occupied rooms rather than relying on a static forecast that doesn't account for pickup — Mark's existing process (via a spreadsheet reconciling PMS on-the-books arrivals against expected pickup) already does this and should continue.
- **Open/unresolved:** whether ProfitSword itself can be configured to carry a real arrivals forecast for this property (Mark believes it's technically available in ProfitSword but wasn't being used) — flagged to check, not resolved live.

## 5. Banquet Forecast (CI) — Mapping Status

- Banquet forecast pulls from **CI**, not ProfitSword — confirmed connection is live (data is flowing) but **mapping accuracy is unconfirmed**; several needs-attention flags were zero, which confirms the import ran but doesn't confirm correctness.
- **Property practice check:** confirmed BEOs are closed out in CI (not left only in the POS) — good sign for actuals reliability, since Unifocus reads banquet **actuals** from CI as well as forecast.
- **Known gap:** CI/ProfitSword granularity — Unifocus wants meal-period-level detail (breakfast/lunch/dinner/reception/break), and separately, Micros/POS timing sometimes miscategorizes covers after 11am as "lunch" even when a café is serving all-day breakfast-style — Pete's guidance: **leave that alone**, it's a minor real-world noise source in the data, not worth fighting.
- **Action set live:** a **~30–60 minute follow-up session with Stephanie Simmons (Director of Sales) scheduled for 1:30pm the next day (9/9/26)**, specifically to review CI setup, guarantees, and how covers roll off guarantees before the event — Stephanie confirmed doesn't currently enter guarantees until they're confirmed, which Pete flagged as worth discussing further in that session.
- **Standing rule stated explicitly (repeated multiple times):** banquets should **never be pulled or scrutinized in the days leading up to the event** — banquet volumes always land as the labor driver **on the day of the event itself** (culinary, stewarding, servers, setup, and possibly public space if there's a driver for it), and any forward-looking comparison against a schedule inside a week of the event date is unreliable and should be avoided. After-the-fact (once actuals post), banquet labor **can** be scrutinized normally.

## 6. Revenue Center Forecast — How It's Actually Calculated

- Live walkthrough of `Setup → Forecast Structure` to show the underlying mechanism (not something Sandra/Al need to build, but need to understand to explain to F&B managers).
- **Current method: statistical average**, not capture ratio/regression — property doesn't have enough history yet. It's a **13-week trailing weighted average by day-of-week and meal period**, more heavily weighting recent weeks ("trend-adjusted exponential smoothing," Pete's joking "this is where we charge so much money" line). This is **not** reading off occupancy or guest count at all right now — purely self-referential history.
- **Practical implication flagged directly to Mark:** this method is dangerous heading into/out of a busy or slow season, since it can't see a guest-count cliff or spike coming — it'll lag behind real demand shifts. Capture-ratio/regression (tying revenue-center covers to available guest count) is the intended future state once there's enough clean history, but **not active yet**.
- **Live editing demonstrated:** the F&B forecast editor keeps the system-generated number visible even after a manager types an override, and tracks last year + a 4-week average for comparison where available (limited right now due to short history). Pete made a live edit as an example (bumped a suspiciously low breakfast-cover forecast from 9 to 25) and showed the **audit trail** recording exactly who changed what and when — later ties into a forecast-accuracy exercise (not covered in depth this session).
- **Who owns this:** F&B forecast editing responsibility currently unclear/unassigned — Pete asked directly ("Tara, Irvy, and Arter" were named as the relevant people, likely referring to restaurant/outlet managers Edson, Agustin, etc. — names are rough auto-transcription, worth confirming against `contacts.md` roster). Flagged for a dedicated F&B forecasting session, not resolved live.

## 7. Live System Run — Generate Projected Hours / Generate Schedules

- Pete manually re-ran `Generate Projected Hours` → `Generate Schedules` live (planning menu) after Mark's rooms-forecast corrections, scoped to all jobs, **without clearing existing schedules** (explicitly called out as an available-but-avoided option).
- **Core teaching point, stated as the central message for managers:** *"This system does not schedule employees; it fills shifts."* If volumes/forecast aren't right, no shifts get made at all — the manager's first reaction ("it's broken") is almost always actually an upstream forecast or employee-maintenance gap, not a system bug.
- **Live example — Room Attendant:** system made 19 shifts, filled 3 (16 open); made 13, filled 3; made 7, filled all 7 (fully covered) — variance traced to **zero Employee Maintenance data configured yet** for most staff (no availability set, so the auto-scheduler has nothing to work with) and **only one contract-labor placeholder employee currently in the system** for housekeeping (property needs more built out — flagged as a to-do, not done live).
- Confirmed: the auto-scheduler **will not** automatically create a 6th consecutive workday or a "clopening" (closing shift immediately followed by an opening shift) for anyone — it will leave those shifts unfilled rather than force a policy violation; managers *can* still do this manually and will get a warning, not a block.
- Job-level **scheduling method** (left-to-right by default vs. "modified peak" — hardest day first) briefly previewed here, full detail deferred to the PM/Employee-Maintenance session.

## 8. Mobile App — Confirmed Not In Use

- Property is **not using the Unifocus mobile app** currently — no plan to activate this session. Al asked specifically about contracted-labor use of mobile; confirmed no, mobile is unrelated to Work Records-based contract labor (which only brings in bulk hours, never named employees or app access).
- Noted (not new information, general context) that mobile unlocks shift swap/pickup/drop functionality, always subject to manager approval — a future option, not a current gap.

## 9. Logistics — Manager Training Schedule

- Manager sessions run **Tuesday–Thursday** this week, split across roughly four time slots; Friday morning reserved as open office hours (Pete flies out ~4pm Friday).
- Sandra flagged that most managers are slotted for **tomorrow (Wed 9/9) morning**: Carlos (front desk/housekeeping), Edson (restaurant/chef), Ramon (director of housekeeping) — "almost everybody." Two more (Jesse, JD) Thursday morning. Afternoons are thinly attended — being repurposed as informal/office-hours time, including the Stephanie/CI session.
- Pete's framing for tailoring content: he'll adjust each manager session's content to whoever's actually in the room (housekeeping-heavy vs. F&B-heavy vs. mixed) and to their prior system experience — asked the group to keep flagging attendee mix as sessions get finalized.

---

## Open / Unresolved Items

- [ ] Confirm whether the "cashier" job code (alongside "host") is still real or should be retired — Mark/Al to check before Pete leaves this week
- [ ] Confirm final placement/naming for at least one questionable job assigned under an F&B user's access that looked like a wrong department (guest service manager access flagged mid-session, not resolved)
- [x] Missing arrivals/guests in ProfitSword — **not a Unifocus/Pete action item.** This is a Paychex/ProfitSword-side data gap (property's legacy PMS not exporting arrivals cleanly) — property/HMA-owned, not something Pete's training or config work can fix. Manual/spreadsheet workaround (§4) stands until the property resolves it on their end, possibly via the PowerAdmin PMS migration.
- [ ] CI/banquet mapping accuracy — needs the dedicated Stephanie session (scheduled 1:30pm, 9/9/26) before it can be trusted
- [ ] Confirm who owns F&B revenue-center forecast editing day-to-day (candidates named live were unclear/rough transcription — cross-check against `contacts.md`)
- [ ] Build out additional contract-labor placeholder employees for housekeeping (only one existed as of this session)
- [ ] Full Employee Maintenance build-out for all hourly staff — availability currently blank property-wide, driving most of the "empty schedule" symptoms seen live
- [ ] Confirm ProfitSword forecast finalization deadline (Friday EOD vs. Sunday) is communicated clearly to Carlos (revenue manager) — determined live that Monday edits are too late for that week's import

---

## Related Files

- [Marriott Del Mar — Contacts](contacts.md)
- [Taylor Walton Prep Call, 9/2/26](2026-09-02_taylor-walton-prep-call.md)
- [Training Outline Email](2026-09-02_training-outline-email.md)
- [HM Alpha Client KB](../kb.md)
- [PM Session — System Admin Training](2026-09-08_admin-training-pm.md)

---

*© Peter A. Castellano. All rights reserved.*
