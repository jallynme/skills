# PROJECT_STATE — Sample-Booking

> The loop tracker (filled example). Single source of truth for status.

**Goal (what the loop is driving toward):** Validate + scope a launch-ready MVP for solo service
providers; get Phase 1 to grade A.
**Project:** Sample-Booking · **Domain:** appointment-booking SaaS (solo service providers) · **Current version:** v3 · **Updated:** 2026-06-30
**Current grade:** A (see `_EVAL/SCORECARD.md`) · **Validate:** ✅ GO · **Launch:** ⬜ GO/HOLD

---

## 1. Station status
| # | Station | Status | Version | Output file(s) | Gate met? | Notes |
|---|---|---|---|---|---|---|
| **V** | Validate + Feature Discovery | ✅ gate met | v2 | `V_VALIDATE/*` | ✅ | GO; 9 features scope-locked |
| 1 | Knowledge → FigJam | ✅ gate met | v1 | `01_KNOWLEDGE/KNOWLEDGE_INDEX.md` | ✅ | |
| 2 | Diagrams | ✅ gate met | v2 | `02_DIAGRAMS/*` | ✅ | booking state machine |
| 3 | Dictionary | ✅ gate met | v2 | `03_DICTIONARY/DOMAIN_DICTIONARY.md` | ✅ | |
| 4 | Data model | ✅ gate met | v3 | `04_DATA_MODEL/schema.prisma` | ✅ | 11 models |
| 5 | Wireframes | ✅ gate met | v2 | `05_WIREFRAMES/{customer,admin,mobile}.html` | ✅ | mobile is a surface |
| 6 | SDLC spec | ✅ gate met | v1 | `06_SDLC/SDLC_MASTER_SPEC.md` | ✅ | 4 phases |
| 7 | Backlog | ✅ gate met | v2 | `07_BACKLOG/` | ✅ | 14 stories, 4 epics |
| 8 | Review loop | 🟨 in progress | v3 | `08_REVIEW/REVIEW_LOG.md` | 🟨 | round 2 — 1 Med open |
| 9 | Specialist skill | ⬜ todo | — | `09_SPECIALIST/booking-ops-specialist/SKILL.md` | ⬜ | |
| **M** | Monetize/Launch | ⬜ todo | — | `M_MONETIZE/*` | ⬜ | after Phase 1 |

## 2. Slices / phases
| Slice | Scope | Status | Signed-off version |
|---|---|---|---|
| Walking skeleton (Phase 1) | book → confirm → remind → pay deposit | 🟨 grade A pending round 2 close | — |
| Phase 2 | recurring appts + staff calendars | ⬜ | — |

## 3. Gap / bug log
| ID | Date | Station | Severity | Description | Found by (agent) | Status | Fixed in version |
|---|---|---|---|---|---|---|---|
| G-001 | 06-28 | 4 | High | no timezone on Appointment → cross-tz bookings off by hours | CTO | closed | v3 |
| G-002 | 06-29 | 7 | High | no-show/deposit story missing AC for refund window | QA | closed | v2 |
| G-003 | 06-30 | 5 | Med | mobile booking flow has no offline/confirmation state | Head of Design | **open** | — |

## 4. Open questions (waiting on a human)
| ID | Date | Question | Blocks | Answer | Answered |
|---|---|---|---|---|---|
| Q-001 | 06-29 | Charge deposit at booking or only on no-show? | pricing + EPIC-02-S1 | Deposit at booking, auto-refund on attend | ✅ |

## 5. Sign-off ledger (the panel)
| Version | Date | Grade | CPO | Specialist | CTO | QA | CFO | CMO | Counsel | Data | Red-Team | Clean? |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| v2 | 06-29 | B+ | ✅ | ✅ | ✅ | ⬜ | ✅ | ✅ | ✅ | ⬜ | ⬜ | ⬜ |
| v3 | 06-30 | A | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ⬜ | 🟨 (G-003 Med open) |

## 6. Decision log (one line each)
- 06-29 — Deposit charged at booking, auto-refunded on attendance (kills no-shows; CFO + Counsel ok). (supersedes: no-deposit v1)
- 06-28 — One `Appointment` + `AppointmentType` strategy, not a table per service. (supersedes: per-service tables)

## 7. Goal-Loop trace (the loop log)
```
[R2.1] Stage Trigger · Station 5 · v3 · 2026-06-30
Trigger:       G-003 (Med) — mobile booking has no offline/confirmation state
Investigate:   hypothesis: solos book on flaky mobile data; expected: add offline+confirm states; gate: interface-completeness
Act:           re-ran Station 5 → added offline + confirmation screens to mobile.html; flagged event for QA
Observe+Learn: gate not yet met — Design wants a real "pending sync" pattern; grade holds A pending close; invariant ok
Backlog→Assign:1 task → Head of Design (offline pattern) + QA (event fires)
Decision:      loop → re-run 5 → 7 (add AC), then re-review
```
