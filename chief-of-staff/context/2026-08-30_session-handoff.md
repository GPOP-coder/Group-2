# Session Handoff — 2026-08-30

For picking up on another machine/session (e.g. Claude Code CLI on the Surface Studio) without re-deriving context.

**Branch:** `claude/code-onboarding-walkthrough-01miz` — this is the real working branch with all history (Mohonk, Baha Mar, BTTR, travel, etc.). A second branch, `claude/surface-remote-disconnect-p3el9q`, also exists off the same empty `main` but only has a redundant/unused `kb/`+`todos/` scaffold — not the real content. **Consolidating to one branch is in progress** (see Open Items below) — check current branch state before starting new work.

## In flight

- **Mohonk — Bron follow-up call this week.** Consolidated punch list at `pws/clients/mohonk/2026-08-30_bron-followup-punch-list.md`, covering: items needing Bron's confirmation (Thu–Sun standard hours ticket, RMSOPS-14129 banquet actuals, forecast-side banquet import, ESCALATION-6690, Beverage auto-scheduling fix), Bron/Lou's own high-priority asks (department adoption audit, "Unifocus Admin" role), structural findings (Room Attendant cleaning-window gap, missing banquet culinary standard, Housekeeping daily-vs-weekly eval contradiction), and a Main Dining Room/James Danks section with live corrections from Pete (8/30):
  - Renovation timing does **not** block current MDR config work
  - On-call MDR server position idea is dead — solution is over-scheduling + shift labels instead
  - Breakfast server formula: live meeting agreed to a sliding ratio (lower at low volume, higher busy) + remove the flat base-2 addition; Pete separately noticed an unraised staffing-tab ceiling that should go away
  - Beverage is confirmed as its own standalone department (in the status letter already sent) — not an open question
  - Granary/Founders rain-contingency coding and Banquet Bartender TK code fix — Pete still needs to verify what was actually implemented for both
  - **More corrections were still pending from Pete as of this handoff — check with him before treating the file as final.**

- **James Danks — 3 unanswered emails, logged as one `todo.md` item under Mohonk.** Nothing sent back to James since 8/7 on any of these:
  1. Granary Labor Standards (8/5, 8/7 follow-up) — eliminate Granary FOH Supervisor, count-based not fixed shifts, eliminate 6:30am starts, keep 11am–7pm split shift
  2. "Adjustments" (8/7) — DR Employment Coordinator to flat 40-hr schedule, Thu/Fri off
  3. "RE: Labor Summary - 8/2" (8/14) — recheck Buffet Attendant standards; James suspects the 8/6 fix didn't actually deploy

- **Transcript pipeline** — Pete is building a workflow to process Plaud/Teams/Voice Memo transcripts into `kb.md`/`todo.md` files per client (this session already did Mohonk as the proof of concept). Some transcripts are waiting on the Surface Studio. Decision made 8/30: process them via **Claude Code CLI running locally on the Surface Studio** (not a remote/cloud session), since that's the only option with direct local-drive access.

## Open items

- [ ] Consolidate `claude/code-onboarding-walkthrough-01miz` and `claude/surface-remote-disconnect-p3el9q` down to one branch off `main` — approach TBD with Pete.
- [ ] Reply to James Danks on all 3 items above.
- [ ] Process the waiting Plaud/Teams transcripts on the Surface Studio.
