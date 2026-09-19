<!-- © Peter A. Castellano — Proprietary. Not for distribution or model training. -->

# Marriott Del Mar — Banquet/CI Booking-Type Mapping (Teams thread with Taylor Walton)

**Date:** 2026-09-09, ~1:39 PM – 3:25 PM Pacific (20:39–22:25 UTC)
**Participants:** Pete Castellano, Taylor Walton (Unifocus — configurer)
**Source:** Microsoft Teams 1:1 chat (read via M365 connector)
**Context:** Runs in parallel with yesterday's admin-session banquet/CI open item (`2026-09-08_admin-training-am.md` §5) and today's scheduled 1:30pm Stephanie Simmons CI/guarantees session — this thread is the interface/booking-type mapping side specifically, worked directly with Taylor.

---

## Status of the Banquet File

- Pete opened by asking status of the banquet file for Marriott Del Mar. Taylor: **being imported now, needs mapping, data flowing by Friday morning (9/11/26)**.
- **Nicole Mendez set up a daily combined feed** covering three systems: **CI, Delphi, and Envision.** This is new information — the property's KB previously only listed CI/TY as the EMS; worth confirming whether Delphi/Envision are Marriott-portfolio-wide feed components or specific to this property, and whether all three actually carry Marriott Del Mar banquet data or just CI.

## Mapping Progress

- Taylor: most of the forecast mapping was completed Monday (9/7), but the forecast side is **missing some KBIs that the interface team added after that** — Taylor still needs to finish mapping those (shared as a Source Line / Source Cell table in Teams; full table not fully captured here due to an API rate limit — worth a follow-up screenshot/export if the detail is needed later).
- Pete confirmed **Actual KBI is already producing some numbers**, distinct from the forecast-side gap above.
- **As of this thread, Taylor has mapped Group, Local, and Rooms Only booking types.** Remaining: **AA** (has its own dropdown sub-options, not yet mapped) and confirming the **In-House** booking type, which currently shows only one sub-option — **Menu Tasting** (no separate breakfast/lunch/dinner options under it, per Taylor).
- **Deadline pressure:** Taylor needs the remaining mapping done in time for the **planning period starting Monday, 9/14/26**.

## "AA" Booking Type — Unresolved

- Pete found **AA** used in History/Real BEOs (alongside In-House Meeting and Rooms Only), but **AA does not appear as an option in CI's own dropdowns** — Pete is still researching where it originates.
- Pete asked whether a master file listing all booking types and event types exists (recalling something Steve Carrell may have mentioned). **Taylor hasn't seen one, only what's actively being imported** — suggested checking with Steve Carrell directly.
- Pete also asked whether a fake/dummy BEO file with all booking-type combinations had been built (Pete's own standard methodology for surfacing every mapping option cleanly — see the Baha Mar SLS/Grand Hyatt approach in `../kb.md`). **Taylor confirmed no — this mapping was done entirely by Unifocus's interface team**, not via the dummy-BEO method.
- Pete's comment on this: "Great that this is being done. From a consulting standpoint, they need to know what to map and where." — flags a process gap (the interface team is mapping without necessarily surfacing the full option universe the way Pete's dummy-BEO method would) worth keeping in mind for future properties.

## In-House / Menu Tasting — Same Open Question as Baha Mar

- Pete noted that at most properties, **In-House Meeting is typically the most prevalent non-Group/non-Local booking type — but not at this property.** Instead, the only In-House sub-option here is **Menu Tasting**.
- This is the same category of decision already flagged as open at Baha Mar (`CLAUDE.md` — "Baha Mar: Tastings mapping decision — Menu Tasting KBIs: roll into Ttl Lunch/Dinner or stay separate?"). **Recurring cross-property pattern worth watching**, not yet resolved at either property.

## Rooms Only → Group (Resolved)

- Pete explained the mechanic: **Rooms Only bookings start with no BEOs, but sales is incentivized to upsell an add-on meal, reception, or meeting space — and the booking type itself never gets changed** even after the upsell. Taylor agreed ("exactly").
- Roughly an hour later, Pete circled back and stated directly: **"Rooms Only should be mapped to Group."** Taylor confirmed: **already mapped that way.** (Pete's follow-up was just finishing a thought from earlier, not new information.)

---

## Open / Unresolved Items

- [ ] **AA booking type** — source unclear; appears in History/Real BEOs but not in CI's current dropdown options. Pete still researching.
- [ ] **Menu Tasting mapping decision** (In-House booking type, only sub-option at this property) — same open question as Baha Mar's Tastings KBI decision; not yet resolved at either property.
- [ ] **Master booking-type/event-type reference file** — Taylor hasn't seen one; check with Steve Carrell directly.
- [ ] Confirm whether Nicole Mendez's daily CI/Delphi/Envision combined feed is portfolio-wide or specific to this property, and which of the three systems actually carries Marriott Del Mar banquet data
- [ ] Finish mapping AA and confirm In-House/Menu Tasting before the **9/14/26 planning period** starts
- [x] Rooms Only → Group mapping — confirmed complete

---

## Related Files

- [System Admin Training — AM, 9/8/26](2026-09-08_admin-training-am.md) — original CI/banquet mapping-accuracy flag
- [Manager Training, 9/9/26](2026-09-09_manager-training.md)
- [Taylor Walton Prep Call, 9/2/26](2026-09-02_taylor-walton-prep-call.md)
- [HM Alpha Client KB](../kb.md)

---

*© Peter A. Castellano. All rights reserved.*
