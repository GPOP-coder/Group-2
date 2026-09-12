<!-- © Peter A. Castellano — Proprietary. Not for model training. -->
# Mohonk — Unifocus Interface Flow Call

**Date:** Wednesday, July 1, 2026
**Meeting title:** Unifocus Interface Flow

## Attendees

**Required:**
- Susanna Briggs (Unifocus)
- Bron Walis (Mohonk — **Director of Information Technology**, not Dining as previously logged) — 845.256.2141 | bwalis@mohonk.com
- Ralph Varble (Unifocus CCO)
- Monali Desai (Unifocus — Lead, Data Integration)
- Pete Castellano

**Optional:**
- Casey Dow (Mohonk) — cdow@mohonk.com
- Lou Petruzzelli (Mohonk)

## Background

Bron Walis (Mohonk's Director of IT) spent several hours building a full interface/timing map for Mohonk's Unifocus integrations (7 interfaces: Rooms KBI, F&B Covers, Banquet, Spa, ADP Punch, ADP Employee, ADP Approved Time Off) and sent it 6/23/26 asking Unifocus to fill in gaps and get on a call. Scheduling took over a week (Bron followed up 6/25, 6/29, 6/29 again; Susanna proposed Wed 7/1 after internal review) — the call finally happened 7/1/26, three days before which Bron sent a fresh example of the banquet-actuals-overwriting problem (screenshots of 6/28 actuals entered, then found overwritten).

Full interface-by-interface detail, timing, and resolution status is now tracked in **[interfaces.md](interfaces.md)** — this file covers the meeting itself; see that file for the living reference.

## Call Outcomes (from Susanna Briggs' recap email, 7/1/26 4:57 PM)

- **Rooms KBI:** Forecast was processing after 1PM ET on Mondays instead of the target 10AM — task timing fixed to run at **10:00 AM ET Mondays**.
- **F&B Covers:** Standard hours regeneration (previously 6AM/2PM/10PM) got an added **~9:00 AM ET** run to better align with the 8AM file delivery.
- **Banquet actuals overwriting:** Root cause found — legacy Delphi.fdc-era mappings are still active and overwriting manual entries with zeros. Filed as [RMSOPS-14129](https://ufjira.atlassian.net/browse/RMSOPS-14129). Pete's Jira comment (7/2/26): asked Monali to export the current mapping + forecast/actuals for backup, then **delete the BQT mapping** — a quick config change on Monali's end, not a Pete deliverable. Pete will restore the mapping once Mohonk resumes sending a BQT file (post Infor SCS automation go-live).
- **Spa:** File is arriving but not processing correctly (zero values). Monali escalated to Unifocus engineering — no fix yet.
- **ADP interfaces (Punch, Employee, Approved Time Off):** All confirmed processing on schedule (~7:00 AM CT, ~7:00 AM CT, ~2:40 PM CT respectively) — no action needed.
- **New issue — Beverage Job Standards:** Some roles not generating standard hours despite correct config. Casey Dow to submit a UF support ticket; Susanna will monitor.

## Screen Recording Guide (Susanna Briggs follow-up, day after call)

Susanna separately sent a step-by-step guide for the Windows Snipping Tool screen recorder (Win+Shift+R). **Purpose still not explicitly confirmed** — most likely tied to Pete's action item of removing/disabling the legacy banquet mappings (documenting the before/after for the record, alongside Monali's mapping backup), but this is inference, not confirmed. Ask Susanna directly if unclear when doing that work.

**Guide steps:**
1. Open tool: Win+Shift+R, or search "Snipping Tool" and click the video camera icon
2. Click New, then drag to select the screen area to record
3. Configure audio: toolbar → microphone icon (voice input) and speaker icon (system audio)
4. Click Start — 3-2-1 countdown, then recording begins

## Open Items

- [ ] Watch RMSOPS-14129 for Monali's mapping export + BQT mapping deletion
- [ ] Note for later: restore the BQT mapping once Mohonk resumes sending a BQT file (Infor SCS automation go-live)
- [ ] Confirm Casey Dow submitted the Beverage Job Standards support ticket
- [ ] Watch for Unifocus engineering update on the Spa interface zero-value issue
- [ ] Clarify actual purpose of the screen-recording guide with Susanna
- [ ] Ask Monali why Rooms KBI and Spa interfaces only pull 7 of the 21 days available in Datavision
