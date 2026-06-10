---
name: Daily Plan — June 9, 2026
date: 2026-06-09
billable_goal: 6 hours
context: Baha Mar KBI change log + current state deliverable
---

# Daily Plan — Tuesday, June 9, 2026
## Baha Mar KBI Status Deliverable

**Billable Goal:** 6 hours minimum  
**Client:** Baha Mar Campus (Valquir)  
**Deliverable:** KBI change log + current state comparison (May 13 → June 9)  
**Constraints:** Plumber #2 on schedule (time TBD, ~1 hour window)

---

## Timeline & Tasks

### **8:00–8:30 AM — Morning Protocols & Setup**
*Not billable — personal*
- Kim leaves at 7:30 AM (hearing aids appointment)
- Complete morning routines
- Boot Surface Studio (if needed for file access)
- Gather May 28 handoff document + 5/13 baseline CSVs

---

### **8:30–9:00 AM — Email Valquir** ⏱️ *0.5 hrs billable*
*Pete owns this*

**Task:** Send brief email to Valquir or system admin contacts

**Content outline:**
- "Running fresh KBI config exports today to provide updated status report"
- "Will include change log (May 13–June 9), current blocking items, and open questions"
- "Delivering by end of business"
- Ask: "Who should I loop in on event management system admin introductions?"

**Outcome:** Email sent, ready for follow-up if needed

---

### **9:00–10:00 AM — Export & Organize Baselines** ⏱️ *1 hr billable*

**Task 1: Export fresh KBI configs** (30 min)
- Unifocus: Export KBI Configuration reports for all 4 properties
  - Rosewood Baha Mar (RW)
  - Grand Hyatt (GH)
  - SLS Baha Mar (SLS)
  - CTF Operations (CTF)
- Name files: `[Property]_KBI_Configuration_2026_0609_HHmm.csv`
- Save to accessible folder (repo or local)

**Task 2: Organize baselines** (30 min)
- Open May 28 handoff document (you have it)
- Locate baseline CSVs from 5/13 exports:
  - `ROS_KBI_Configuration_5_13_2026_00_55.csv`
  - `GH_KBI_Configuration_5_13_2026_00_58.csv`
  - `SLS_KBI_Configuration_5_13_2026_00_59.csv`
  - `CTF_KBI_Configuration_5_13_2026_00_56.csv`
- Verify files match May 13 reference date
- Set up side-by-side comparison workspace

**Outcome:** Fresh exports ready, baselines organized, comparison ready to begin

---

### **10:00 AM–12:30 PM — Compare & Document Findings** ⏱️ *2.5 hrs billable*
*(Plumber arrival absorbed in this window — pause 1 hour max, resume after)*

**Task 1: Compare configs property-by-property** (1 hour)

For each property (RW → GH → SLS → CTF):
1. Open fresh export vs. May 13 baseline
2. Scan for new KBIs (row count change?)
3. Look for formula changes (any corrected since May 13?)
4. Note deactivations (z/zz/x prefix additions?)
5. Flag any unexpected changes
6. Document findings in structured format

**Expected findings:**
- ✅ **RW:** Should still show 0 cross-property KBIs (not yet built — May 28 status)
- ✅ **GH:** May show formula updates from May 13–28 work (7010, 7101, etc.)
- ✅ **SLS:** May show formula updates (6xx, 7xx corrections from May 13–28)
- ✅ **CTF:** May show formula updates (1007, 7012, 9010, etc.)

**Task 2: Build status summary table** (1 hour)

Create a formatted table showing:

| Property | Status as of 6/9 | Change from 5/13 | Blocking Items | Notes |
|---|---|---|---|---|
| **RW** | 0 cross-property KBIs | None yet | 60 KBIs not built (6xxx, 7xxx, 7820–7833) | BQT mapping blocked by EMS configs |
| **GH** | 7825–7831 need RW terms | Formula updates May 13–28 | Need RW Avail Guests + Break/Meals mirrors | Partial Rosewood data in 9xxx range |
| **SLS** | 7832–7833 need RW terms | Formula updates May 13–28 | Need RW Break + Meals mirrors | GRP Rosewood in 9xxx, Avail Guests missing |
| **CTF** | Campus totals in 1xxx | Formula updates May 13–28 | Need RW banquet KBIs at CTF (8xxx) | Rosewood 8xxx in place, cross-property KBIs not built |

**Task 3: Extract & format open questions** (30 min)

Pull from May 28 handoff, format as clear asks:

1. **Local booking type:** Is Local intentionally absent at GH/SLS, or missing?
2. **Box services:** Do GH/SLS offer Breakfast Box and/or Dinner Box?
3. **Reception types:** Are Cocktail and Full Reception intentionally absent at GH/SLS?
4. **Tastings:** Roll into Ttl Lunch or keep standalone?
5. **INHS mapping:** Confirm INHS maps to Local at source property
6. **Rosewood cleanup:** Plan for "wild-west" KBIs (Breakout, General Session, etc.)

**Outcome:** Status table + open questions formatted, ready for deliverable assembly

---

### **12:30–1:00 PM — Lunch & Plumber Window**
*Not billable — personal*

If plumber hasn't come yet, this is the likely window. Check-in time, brief explanation of what's happening upstairs, continue if time allows.

---

### **1:00–2:00 PM — Assemble & Format Deliverable** ⏱️ *1 hr billable*

**Task 1: Create deliverable document** (40 min)

Format as: `BahaMar_KBI_Status_Report_2026_0609.md`

Structure:
- **Header:** Date, baselines compared, scope
- **Executive summary:** What changed, what's blocking, what we need
- **Status table:** (from above)
- **Open questions:** (formatted as clear asks)
- **Blocked items breakdown:**
  - BQT mapping at RW (need EMS configs + dummy BEO files)
  - 60 RW KBIs not yet built
  - Formula updates at GH/SLS/CTF waiting for RW KBIs
- **Next steps:** Prioritized list for Valquir
- **Appendix:** May 28 handoff link for reference

**Task 2: Final review** (20 min)

- Check for typos, KBI codes, property abbreviations
- Verify all 6 open questions are clear asks
- Confirm blocking items are realistic + actionable
- Verify billable work is documented (for Clockify)

**Outcome:** Deliverable ready to send

---

### **2:00–2:30 PM — Send to Valquir & Document** ⏱️ *0.5 hrs billable*

**Task:**
- Email deliverable to Valquir
- CC/loop in system admin contacts (if Pete has them)
- Include: "This is the current state as of June 9. Please advise on the 6 open questions above — your answers will unblock several KBI builds."
- Note: "Awaiting EMS configuration reports to proceed with BQT mapping at Rosewood"

**Clockify:**
- Stop Clockify after this task
- Total billable time: 6 hours
- Log description: "Baha Mar KBI status assessment: change log, current state summary, open questions, blocking items analysis. Delivered to Valquir for decision-making."

---

## Billable Summary

| Task | Time | Billable |
|---|---|---|
| Email Valquir | 0:30 | ✅ |
| Export fresh configs | 0:30 | ✅ |
| Organize baselines | 0:30 | ✅ |
| Compare configs | 1:00 | ✅ |
| Build status table | 1:00 | ✅ |
| Extract open questions | 0:30 | ✅ |
| Assemble deliverable | 0:40 | ✅ |
| Final review | 0:20 | ✅ |
| Send to Valquir | 0:30 | ✅ |
| **TOTAL** | **6:00** | **✅** |

---

## What Comes Next (After Deliverable Sent)

1. **MakeReady & HMAlpha scheduling check** — where did they land?
2. **New Orleans 6/22 decision** — needed after Orlando, or not?
3. **If time:** Rosewood labor standards (overdue, lower priority but billable)

These move to afternoon/evening or next day depending on Valquir response time and plumber window.

---

## Files & References

- **May 28 handoff:** `BahaMar_ClaudeCode_Handoff_5_28_2026.md`
- **Baseline CSVs (5/13):** In handoff package
- **Fresh exports (6/9):** To be generated tomorrow morning
- **Open questions:** From May 28 handoff, Part 4
- **Blocking items:** From May 28 handoff, Part 4

---

## Notes for Surface Studio

- Start Clockify when you begin email (8:30 AM)
- Use same Unifocus account credentials as Yoga
- All config exports should go to a local folder (not OneDrive) for fast access
- Deliverable can be drafted in the repo or locally — commit after sending to Valquir

**Ready to go live at 8:30 AM tomorrow.**
