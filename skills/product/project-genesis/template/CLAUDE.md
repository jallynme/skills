# CLAUDE.md — <PROJECT_NAME>

> Context for Claude. Read this first, every session, before touching anything.
> <PROJECT_NAME> is **<one-line description of the product and domain>**.
> This project is being built with the **Project Genesis** workflow (raw docs → full blueprint →
> domain specialist, on repeat). The pipeline and rules live in the kit's `PROJECT_GENESIS_PLAYBOOK.md`.

## 0. Current state — READ THIS
- **Phase / version:** see `PROJECT_STATE.md` (the loop tracker — single source of truth for status).
- This folder is organized by the 9 pipeline stations (`00_INTAKE` … `09_SPECIALIST`).
- Raw source material is in `00_INTAKE/`. Everything else is **derived** from it and must stay
  consistent with it. If a derived artifact disagrees with intake, that's a gap → log it.

## 1. Repo map (stations)
| Path | Station | What it is | Authority |
|---|---|---|---|
| `V_VALIDATE/` | **V** | Validation brief · assumption register · competitor set (catalog · profiles · benchmark · matrix) · feature map | **GO/NO-GO + scope-lock (before build)** |
| `00_INTAKE/` | 0 | Raw domain docs (PRD, references, sample data) | **Source of truth (inputs)** |
| `01_KNOWLEDGE/KNOWLEDGE_INDEX.md` | 1 | Extracted knowledge + FigJam board index | Knowledge map |
| `02_DIAGRAMS/` | 2 | Context / flow / state / ERD (Mermaid) | Flow + lifecycle truth |
| `03_DICTIONARY/DOMAIN_DICTIONARY.md` | 3 | Bilingual glossary + code tables | **Naming authority** |
| `04_DATA_MODEL/schema.prisma` | 4 | Data model | **Data-model source of truth** |
| `05_WIREFRAMES/` | 5 | shadcn HTML wireframes per surface | UX reference |
| `06_SDLC/SDLC_MASTER_SPEC.md` | 6 | Roadmap, phases, DoR/DoD (+ `API_SPEC.md`) | **Delivery source of truth** |
| `07_BACKLOG/` | 7 | Epics → stories → AC → TC (+ `BUILD_ORDER.md`) | Work + build order |
| `08_REVIEW/REVIEW_LOG.md` | 8 | Multi-role review rounds + sign-off | Quality gate |
| `09_SPECIALIST/` | 9 | The domain-specialist skill (`<domain>-specialist`) | Domain guardian |
| `E_EXEC_SUMMARY/` | **E** | CEO one-pager (HTML): story · KPIs · roadmap · status · diagram | **CEO/investor brief (input to M)** |
| `M_MONETIZE/` | **M** | GTM + financial model + metrics tree | **LAUNCH gate (before launch)** |
| `08_REVIEW/REDTEAM_PREMORTEM.md` | 8 | Red-team / pre-mortem challenges per gate | Adversarial gate |
| `_EVAL/SCORECARD.md` | — | A–S grade per round (target: A to advance, S to launch) | **Grade truth** |
| `PROJECT_STATE.md` | — | Station status · version · gaps · grade · open questions | **Status truth** |

**Agent swarm:** review/build is run by the virtual C-suite in `../agents/ROSTER.md` (Orchestrator,
Red-Team, CFO, CMO, CPO, CTO, Counsel, Data, + as-needed Sales/Design/People + the Domain Specialist),
each backed by an installed plugin. Operating model: `../SOLO_FOUNDER_AGENTIC_GUIDE.md`.

## 2. Working rules (fill in / keep)
1. **Knowledge before model before code.** Don't change the schema before the dictionary + diagrams.
2. **Capture hard domain rules exactly.** Codes, formulas, status transitions, compliance rules —
   verbatim. Ambiguous? **Stop and ask.** Never guess.
3. **Dictionary is the naming authority** for schema, API, UI copy, and the specialist skill.
4. **Model the domain as it is:** one entity per concept, real enums, one strategy-driven model over
   per-variant tables when variants share a shape. Reference data is **versioned ("as of" date)**.
5. **Everything versioned + audited.** Never silently overwrite a signed-off artifact; supersede it.
6. **Bilingual** for all source languages. Preserve IDs / fixed-width / legacy formats verbatim.
7. **Domain specialist signs off** anything touching the regulated/precise core (load `09_SPECIALIST`).
8. _<add project-specific engineering invariants here — e.g. multi-tenant isolation, idempotency,
   edit-lock after a state is reached, secrets in KMS, PII/retention rules>_

## 3. How to work
- Run the **Goal Loop** (Review & Learn → Trigger → Investigate → Act → Backlog → Assign → loop) on
  ReAct turns toward the **🎯 Goal** at the top of `PROJECT_STATE.md`; log a trace line per turn
  (`../LOOP_ENGINEERING.md`). Pause only at founder gates.
- Pick the next move from `PROJECT_STATE.md` (next slice, or the highest open gap).
- Re-enter the pipeline at the **lowest affected station** and run forward; then **Station 8 review**.
- Use the kit's prompts: `prompts/STATION_PROMPTS.md` (single station), `prompts/RELOOP_PROMPT.md`
  (iterate), `prompts/00_KICKOFF.md` (cold start).
- Update `PROJECT_STATE.md` after every station. Keep the regression baseline green.

## 4. Conventions
- **Don't redesign signed-off artifacts** casually; propose the change + reason, then version it.
- **Match the dictionary** for every name. **Match the API contract** for every endpoint.
- **i18n from the start.** _<note source languages, ID formats, encodings here>_.
- _<domain code list, e.g. the real type codes / status codes this project uses>_.

## 5. First session
If nothing exists yet, run the kickoff prompt (`prompts/00_KICKOFF.md`): scaffold, read all of
`00_INTAKE/`, then Station 1. Don't skip stations; don't advance past a gate without sign-off.
