# Pete Castellano — Personal Operating System

© Peter A. Castellano. All rights reserved. Proprietary and confidential. Not for model training.

This repository is the working environment for Pete Castellano's **Chief of Staff agent** — a personal knowledge management system that spans his consulting practice, nonprofit leadership, family responsibilities, travel, and personal projects. It is not a software project. It is a structured knowledge base designed to be read and acted upon by Claude Code.

---

## What This Repo Is

Pete operates across multiple organizational identities simultaneously: PWS (consulting), BTTR (nonprofit president), NTSG (nonprofit treasurer), eBay/Photography (business), and Father's POA. This repo centralizes the knowledge, context, and working files for all of them so that a Chief of Staff agent can monitor, coordinate, and surface action items proactively.

---

## Folder Structure

| Folder | Contents |
|---|---|
| `chief-of-staff/` | Agent system prompt and master context files |
| `pws/` | Platinum Workforce Strategies — client knowledge bases, billing, foundations, Unifocus KB |
| `pws/clients/` | Per-client folders: Baha Mar, MHBR, Mohonk, Rosewood Miramar |
| `pws/kb/` | Unifocus training guides, smart cards, admin reference, pre-training checklists |
| `pws/foundations/` | PWS methodology: hotel ops, labor management, implementation, client engagement, strategy |
| `hmalpha/` | HMAlpha training coordination — property notes, outlines, coordination protocol |
| `unifocus/` | Unifocus delivery standards and internal reference |
| `BTTR/` | Back to the River — contacts, events, projects (Lewis & Clark, Kerrey Bridge book) |
| `ntsg/` | Nebraska Transplant Support Group — contacts |
| `contacts/` | Master contacts CSV export |
| `finances/` | Cards, PWS business expenses |
| `travel/` | Flight credits, travel accounts, trip expense reports and reimbursements |
| `journal/` | Voice-memo-derived journal entries and reflections |
| `personal/` | Father's address history, cultural references |
| `stuff_philosophy/` | Writing on objects, value, and letting go |

---

## Key Files

| File | Purpose |
|---|---|
| `CLAUDE.md` | Master session context — loads at start of every Claude Code session |
| `todo.md` | Running task list |
| `chief-of-staff/system-prompt.md` | Chief of Staff agent system prompt |
| `contacts/contacts.csv` | Master contacts (monthly export from Outlook) |

---

## Conventions

- **File naming:** `YYYY-MM-DD_description` (e.g., `2026-07-06_hmshost-denver-airport.jpeg`); words separated by hyphens, date from name separated by underscore. Older files may use a space instead of underscore — underscore is the current standard.
- **All `.md` files** are proprietary © Peter A. Castellano — include copyright notice
- **CLAUDE.md** is the single source of truth for session context — keep it current
- **Voice first:** most content originates as iPhone Voice Memos → transcript → paste to Claude → structured file

---

## Organizational Identities

| Identity | Role |
|---|---|
| PWS — Platinum Workforce Strategies | Owner / Consultant |
| BTTR — Back to the River, Inc. | President |
| NTSG — Nebraska Transplant Support Group | De facto Treasurer |
| eBay / Photography | Sole proprietor (Schedule C) |
| Father's POA | Finance manager for William Castellano, age 90 |

---

## Agent Architecture Goal

The capstone project is a **Chief of Staff agent** that monitors all identities, surfaces deadlines and action items proactively, and coordinates subordinate agents — one per organization or domain. This repo is its knowledge base.
