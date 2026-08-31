<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Westin La Paloma — John Grech Post-Config Follow-Up Call + BQT Handoff

**Context:** John Grech owns post-config follow-up for WLP (per the established MakeReady/HMAlpha division of labor: Steve Carrell owns config, John Grech owns post-config, Taylor Walton owns post-go-live follow-up — though this rotation is WLP's weekly call specifically, see rotation note below). First WLP weekly call held **Friday 8/27/26, 90 minutes** (recording: "Westin La Paloma Unifocus Weekly Call _1-20260827_120159"). **Pete missed most of it** — has not yet reviewed the transcript as of 8/31/26.

**Call rotation (per John, 8/28/26):** John does this week's call, Taylor Walton handles week 3, John does week 4.

---

## Email thread, 8/27–8/28/26

**Pete → John, 8/27, 3:04 PM** — recording share link didn't work, asked to resend.

**John → Pete, 8/27, 4:24 PM** — recording had auto-deleted from his OneDrive when removed from the Teams meeting channel. But surfaced a finding while looking: **"the jobs without hours all had incorrect TK and Reconcile codes."**

**Pete → John, 8/27, 5:50 PM:**
- Confirms that's a good sign; asks if the transcript downloaded successfully.
- On TK/Reconcile codes: wanted visibility into the actual emails to diagnose, since without email + Paychex access "we were blind." The Reconcile Errors report helped some.
- **Banquets: flags the same unmapped-booking-type risk found 8/19/26** (see WLP kb.md — Joey Bradfield CI/BEO mapping session, "Multi Year," "Rooms Only," etc. beyond Group/Local/In-House silently dropping covers). Asks: "We need a complete list of all Booking Codes so we can map them... Do you want me to ask for that?"

**John → Pete, 8/28, 9:37 AM:**
- Sends the edited transcript.
- **"You can go ahead and deal with banquets. The attached file allegedly contains all the banquet function types for all properties. Have at it."** → **Pete's action item: do the BQT KBI Mapping for WLP.**
- Confirms the TK code root cause: **"he had the wrong job codes mapped. He must be typing them in rather than copy/pasting."** (Consistent with the dash/period inconsistency examples already logged 8/25/26 in kb.md — "PCA-4185 Server Banquet 1" vs ". 1." variants — manual entry, not a system bug.)
- Confirms his own call rotation: this week's WLP call was his; Taylor has week 3; he's back for week 4.

---

## Open items

- [ ] **Pete to review the 8/27 call transcript** — 90 minutes, mostly missed live. John says it's attached to his 8/28 email.
- [ ] **Pete to do the BQT (banquet) KBI Mapping for WLP** — John handed this off directly ("have at it"), using the banquet-function-types file John attached (allegedly covers all properties, not just WLP). Ties directly to the unmapped booking-type risk flagged 8/19/26.
- [x] TK/Reconcile code root cause — confirmed by John: manually-typed job codes with inconsistent formatting (dashes/periods), not a system bug. No further diagnosis needed, just a cleanup/retraining item (type carefully or copy/paste from existing codes).

---

*© Peter A. Castellano. All rights reserved.*
