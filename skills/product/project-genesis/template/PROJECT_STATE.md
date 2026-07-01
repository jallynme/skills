# PROJECT_STATE — <PROJECT_NAME>

> **The loop tracker. Single source of truth for status.** Update after every station and every
> review round. This is what makes the workflow repeatable: anyone (or any session) can read this
> and know exactly where the project is and what to do next.

**🎯 Goal (what the loop is driving toward):** <the founder's goal prompt — a high-level outcome>
**Project:** <PROJECT_NAME> · **Domain:** <one line> · **Current version:** v0 · **Updated:** <date>
**Current grade:** <S/A/B/C/D — see `_EVAL/SCORECARD.md`> · **Validate:** ⬜ GO/NO-GO · **Launch:** ⬜ GO/HOLD

---

## 1. Station status
| # | Station | Status | Version | Output file(s) | Gate met? | Notes |
|---|---|---|---|---|---|---|
| **V** | **Validate + Feature Discovery (GO/NO-GO + scope-lock)** | ⬜ todo | — | `VALIDATION_BRIEF` · `ASSUMPTION_REGISTER` · competitor set (`FEATURE_CATALOG`/profiles/`FEATURE_BENCHMARK`/`COMPETITOR_FEATURE_MATRIX`) · `FEATURE_MAP` | ⬜ | **founder gates — before build** |
| 0 | Intake | ⬜ todo | — | `00_INTAKE/` | — | |
| 1 | Knowledge → FigJam | ⬜ todo | — | `01_KNOWLEDGE/KNOWLEDGE_INDEX.md` | ⬜ | |
| 2 | Diagrams | ⬜ todo | — | `02_DIAGRAMS/*.md` | ⬜ | |
| 3 | Dictionary | ⬜ todo | — | `03_DICTIONARY/DOMAIN_DICTIONARY.md` | ⬜ | |
| 4 | Data model | ⬜ todo | — | `04_DATA_MODEL/schema.prisma` | ⬜ | |
| 5 | Wireframes | ⬜ todo | — | `05_WIREFRAMES/*.html` | ⬜ | |
| 6 | SDLC spec | ⬜ todo | — | `06_SDLC/SDLC_MASTER_SPEC.md` | ⬜ | |
| 7 | Backlog | ⬜ todo | — | `07_BACKLOG/` | ⬜ | |
| 8 | Review loop | ⬜ todo | — | `08_REVIEW/REVIEW_LOG.md` | ⬜ | |
| 9 | Specialist skill | ⬜ todo | — | `09_SPECIALIST/<domain>-specialist/SKILL.md` | ⬜ | |
| **E** | **Executive Summary (CEO one-pager)** | ⬜ todo | — | `E_EXEC_SUMMARY/EXECUTIVE_SUMMARY.html` | ⬜ | **refresh every version · input to M** |
| **M** | **Monetize/Launch (GO/HOLD)** | ⬜ todo | — | `M_MONETIZE/GTM_AND_MODEL.md` + `METRICS_TREE.md` | ⬜ | **founder gate — before launch** |

Status legend: ⬜ todo · 🟨 in progress · ✅ gate met · 🔁 re-opened by review

## 2. Slices / phases
> A "slice" = a shippable vertical (a phase, a variant/type, or a surface). Mark DONE only when its
> stories meet DoD and the panel signed off.

| Slice | Scope | Status | Signed-off version |
|---|---|---|---|
| Walking skeleton (Phase 1) | <thin end-to-end path> | ⬜ | — |
| <Phase 2 / variant> | | ⬜ | — |

## 3. Gap / bug log
> Every review finding lands here with a severity. "This round is clean" = zero High/Med open.

| ID | Date | Station | Severity | Description | Found by (agent) | Status | Fixed in version |
|---|---|---|---|---|---|---|---|
| G-001 | | | High/Med/Low | | CPO/Specialist/CTO/QA/CFO/CMO/Counsel/Data/Red-Team | open/closed | |

## 4. Open questions (waiting on a human)
| ID | Date | Question | Blocks | Answer | Answered |
|---|---|---|---|---|---|
| Q-001 | | | station/story | | |

## 5. Sign-off ledger (the panel — see `../agents/ROSTER.md`)
| Version | Date | Grade | CPO | Specialist | CTO | QA | CFO | CMO | Counsel | Data | Red-Team | Clean? |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| v1 | | <S/A/B/C/D> | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |

## 6. Decision log (one line each)
- <date> — <decision and why> (supersedes: <what>)

## 7. Goal-Loop trace (the loop log — one block per turn; see `../LOOP_ENGINEERING.md`)
> Review & Learn → Trigger → Investigate (Reason) → Act → Backlog → Assign → Observe+Learn → Decide.
> No silent turns — every turn appends a block here.

```
[R1.1] Stage <Trigger> · Station <V|1..9|M> · v1 · <date>
Trigger:       <the goal / a gap / a Red-Team High / a new variant>
Investigate:   <hypothesis · expected result + the exit gate it must hit>
Act:           <the ONE step taken>
Observe+Learn: <actual · gate met? · grade · finding (severity) · invariant check>
Backlog→Assign:<new items captured → which roster agent gets each>
Decision:      advance → <next> | loop → re-run <stations> | escalate → <founder decision>
```
