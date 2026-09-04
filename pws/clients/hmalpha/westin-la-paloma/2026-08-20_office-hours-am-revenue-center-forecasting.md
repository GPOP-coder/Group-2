<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — Office Hours (Thursday AM), Part 10: Revenue Center Forecasting & KBI Mapping

**Date:** August 20, 2026, AM
**Attending:** F&B director-level contact (see [Part 7](2026-08-20_office-hours-am-fnb-director-user-access-setup.md)); Pete Castellano.
**Source:** Raw voice-memo/session transcript, rough auto-transcription with crosstalk, not cleaned verbatim.

---

## 1. Scope Boundary Set First — Front Office Doesn't Belong Here

- Session opened by noting **a front office contact had been exploring the Labor → Planning / forecast environments area without a real need to** — Pete's direct read: **"Front office does not need to be doing any forecast environments. Environments are only for revenue centers."** Nothing appeared to have been changed, and Pete assessed the risk as low ("there's almost nothing that you can mess up in there"), but flagged it as worth a light follow-up rather than ignoring.

## 2. The Forecast Pipeline, Step by Step

1. **Enter Input KBI Forecast** (Labor → Planning) — this is where **banquet-related KBIs live**, along with per-outlet meal-period forecasts.
2. **Rooms forecast and banquet forecast must both be entered before the next step can run.**
3. **Generate Revenue Center Forecast** — an automated step that runs on a schedule (referenced as happening around **10am, with a window through 3pm** to review/edit before it locks in for shift generation). This step **cannot be manually re-run backwards once it's happened** — for the property, it's a one-shot conversion of the day's rooms + banquet inputs into revenue-center-level numbers. (Pete noted **Peggy specifically retains override ability** to redo it if genuinely necessary, but the intent is for it to run once, in sequence, without manual intervention.)
4. **View/Edit Revenue Center Forecast** — the step where an **outlet manager reviews and can adjust** the machine-generated numbers before ~3pm. Deliberately **locked until step 3 has run** — an outlet manager cannot get ahead of the system and pre-fill numbers before the generation step completes.

## 3. What's Actually Mapped vs. Not, in Enter Input KBI Forecast

- **Most KBI rows showing a flat "0" are correctly mapped and functioning** — the zero is a placeholder pending the actual forecast entry, not a broken mapping.
- **Confirmed gaps, called out directly as things to be aware of, not urgent fixes:**
  - **Breakfast is not broken out by plated / buffet / continental** — flagged as more of a follow-up question for **Joey** (context suggests a CI/EMS-side or outlet-side contact) than an immediate Unifocus fix.
  - **Reception-style events only map to two categories: "Cocktail" and "Heavy Reception"** — there is no "light reception" category in the system, even though the property may think of events that way informally. Pete's framing: *"that's better than not having any of them."*
  - **Culinary "stations" and "captain needed/used" are not mapped at all** — there's no equivalent category coming from CI for these, so they show as manually mapped placeholders that **will not actually populate any forecast data**. Pete pointed these out specifically so the property doesn't mistake the presence of a mapped-looking row for working data (marked with an asterisk/pound-sign convention in the interface).
- **Positive confirmation: meetings (for setup credit), and both heavy and light receptions are being correctly credited** in the parts of the system that do work — called out as a genuine win, not just a list of gaps.

## 4. Group vs. Local — Why Banquets Feed the Outlet Forecast

- **The reason banquet data has to be entered even though the goal is forecasting outlets, not banquets themselves:** the system needs banquet data to calculate **"group" vs. "local"** covers — i.e., to know how many of the hotel's occupied-room guests are already accounted for by a group breakfast/banquet, versus how many are genuinely available to walk into La Vista, La Luz, etc.
- **Mechanic explained concretely:** available restaurant guests = **yesterday's occupied-room guest count, minus this morning's group breakfast attendance**. A hotel showing 500 in-house guests but running a 400-person group breakfast buffet should **not** expect a proportionally busy restaurant morning — most of that demand is already captured by the group event.
- **Future-state note (not yet active):** once enough history accumulates, the system can begin calculating **capture ratios** (e.g., "20% of in-house guests who don't have a banquet meal will hit La Vista") — recalculated weekly, by day, by meal period. **Not usable yet — WLP doesn't have enough history**, and the property is currently on flat statistical averages, not ratio-based capture logic.

## 5. Statistical Forecasting Method & "Needs Attention" Errors, Explained

- **The underlying forecast method is a weighted average across roughly the last 13 weeks of history** (referred to in-system as "average trend adjusted exponential smoothing" — Pete's plain-language gloss: *"it's just a $500 way of saying average"*).
- **"Needs attention" flags are normal, expected behavior when there isn't yet enough clean history for a given day/outlet combination** — not a sign of a broken interface. Live example: **La Luz dinner covers and La Vista all-day transactions both threw "needs attention" on the day reviewed**, with no other explanation than insufficient/inconsistent history — Pete's direct framing: **"this is normal... this will happen less as time goes on."**
- **Practical guidance for handling a "needs attention" flag today:** if you know the real number, enter it. If you don't, and the underlying standard is fixed/non-variable (e.g., "always staff for at least 1"), entering a **1 is safer than leaving it at the system's fallback of 0** — a 0 will suppress shift generation entirely for that outlet/day, which is a worse outcome than a slightly-off manual guess.
- **Confirmed operational rule: if a needs-attention field is left untouched, it defaults to 0, and a 0 generates zero shifts for that outlet that day** — this is the concrete risk of ignoring the 11am–3pm review window rather than just a cosmetic warning.

## 6. Data Timing & Validation Responsibility

- **CI banquet data typically lands the evening before (around 10pm Thursday, for a Friday-cycle need)** — but landing on time doesn't guarantee it's correct; **someone still needs to validate it actually arrived and looks right**, a distinct step from the automated import itself.
- **Explicitly assigned as an open ownership question, tentatively pointed at Peggy**, though not fully confirmed: someone needs to be responsible for confirming, by a set time Friday, that both the rooms forecast and the banquet forecast actually landed — Pete's honest self-assessment of reliability: **"95, 99% is working"**, meaning validation still matters for the remaining edge cases.
- Once inputs are validated, **Lester** was named as the person who can proceed into the next step of the workflow.

---

## Open Items From This Session

- [ ] Lightly follow up on why a front-office contact was exploring the forecast/planning area — no changes found, but access/training gap worth a gentle check
- [ ] Raise the breakfast plated/buffet/continental breakout question with **Joey**
- [ ] Confirm formal ownership of the Friday rooms + banquet forecast **validation** step (tentatively Peggy, not yet confirmed) — distinct from the automated import itself
- [ ] Revisit capture-ratio-based forecasting once WLP accumulates sufficient history — not usable yet, flat averages only for now

---

## Related Files

- [Westin La Paloma — Property KB](kb.md)
- [Office Hours AM, Part 7 — F&B Director User Access Setup](2026-08-20_office-hours-am-fnb-director-user-access-setup.md)
- [Office Hours AM, Part 8 — Reporting Tools Walkthrough](2026-08-20_office-hours-am-reporting-tools-walkthrough.md)
- [Office Hours AM, Part 9 — La Luz Lounge Beverage-Driven Labor Standard](2026-08-20_office-hours-am-laluz-lounge-standard.md)
- [Office Hours AM, Part 11 — Contract Labor Live Build](2026-08-20_office-hours-am-contract-labor-live-build.md)
- [HM Alpha Client KB](../kb.md)

---

*© Peter A. Castellano. All rights reserved.*
