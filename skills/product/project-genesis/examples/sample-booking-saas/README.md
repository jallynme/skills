# Worked Example — Sample-Booking (appointment-booking SaaS)

> **This is a filled reference run** so you can see what each artifact looks like "done." It's a
> neutral, fictional sample — an appointment-booking SaaS for small service businesses (salons,
> clinics, tutors, trainers). Every file here is a *populated* version of a `template/` file. Read it
> alongside the blank templates to calibrate quality.

**Goal given to the swarm:** *"Validate and scope a launch-ready MVP for an appointment-booking tool
for solo service providers, and get Phase 1 to grade A."*

**What the run produced — a near-complete pass (every station filled):**
| Station | File(s) | Shows |
|---|---|---|
| — | `PROJECT_STATE.md` · `CLAUDE.md` | loop tracker (goal · status · gap · grade · loop-trace) + project context |
| **V** | `V_VALIDATE/VALIDATION_BRIEF.md` · `ASSUMPTION_REGISTER.md` | problem→market→pricing→**GO**; 5 assumptions with tests |
| **V·Feature Discovery** | `COMPETITOR_FEATURE_MATRIX.md` · `FEATURE_CATALOG.md` · `FEATURE_MAP.md` | competitor teardown, 17-feature catalog, scope-lock with suggestions |
| 1 | `01_KNOWLEDGE/KNOWLEDGE_INDEX.md` | extracted knowledge + a doc contradiction |
| 2 | `02_DIAGRAMS/{context,flows,state,erd}.md` | context, sequence flows, **state machine**, ERD (Mermaid) |
| 3 | `03_DICTIONARY/DOMAIN_DICTIONARY.md` | the naming authority |
| 4 | `04_DATA_MODEL/schema.prisma` | 11-model strategy-driven schema |
| 5 | `05_WIREFRAMES/README.md` | surfaces built (web + mobile) + the open UX gap |
| 6 | `06_SDLC/SDLC_MASTER_SPEC.md` | vision, arch/NFRs, 4 phases, DoR/DoD, risks |
| 7 | `07_BACKLOG/{README,BUILD_ORDER}.md` · 2 story cards | 14-story backlog, build order, EPIC-01-S1 + EPIC-02-S1 |
| 8 | `08_REVIEW/{REVIEW_LOG,REDTEAM_PREMORTEM}.md` | 2 review rounds + the Red-Team pre-mortem |
| 9 | `09_SPECIALIST/booking-ops-specialist/SKILL.md` | the generated domain specialist |
| — | `_EVAL/SCORECARD.md` | A–S scoring, trend **C → B+ → A** |
| **M** (pre-work) | `M_MONETIZE/METRICS_TREE.md` | North-Star + event taxonomy (defined before build) |

**Run summary:** Validate → **GO** ("solos will pay $19/mo to kill no-shows" — 12 interviews + a
fake-door at 6.1% sign-up; deposit-acceptance 85% in a concierge test). Feature Discovery proposed 23
features; founder scope-locked **9** for v1. Build stations produced the knowledge index, diagrams
(incl. the booking state machine), dictionary, an 11-model schema, web + mobile wireframes, a 4-phase
SDLC plan, and a 14-story backlog. Two review rounds climbed **C → B+ → A**; one Med UX gap (G-003,
mobile offline state) is the last blocker to a *clean* A. Mobile is a first-class surface.

> This fills every station for **one slice** (the walking skeleton). A real project keeps looping to
> fill the remaining stories and reach a clean, launch-ready grade.
