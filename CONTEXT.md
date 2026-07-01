# CONTEXT — shared language for this repo

> The ubiquitous language. Read this before working here so agents and humans use the *same word for
> the same thing*. A shared language cuts verbosity and keeps names consistent.

## Core nouns
- **Skill** — a folder under `skills/<category>/<name>/` containing a `SKILL.md`. Installed into an
  agent via `npx skills add jallynme/skills`. A skill is a *reusable capability*, not a one-off prompt.
- **SKILL.md** — the skill's entry file: YAML frontmatter (`name`, trigger-rich `description`) + body.
  The description is what makes the skill *auto-trigger*, so it must list real trigger phrases.
- **Resource** — a file bundled beside a `SKILL.md` (a template, an agent brief, a script) that the
  skill reads. Referenced with paths **relative to the skill folder**.
- **Agent** — a persona brief (`agents/<role>.md` inside project-genesis) that the orchestrator
  **plays**, **spawns as a subagent**, or backs with a **plugin skill**. Not the same as a "skill."
- **The swarm / roster** — the set of agents (Orchestrator, Red-Team, CFO, CMO, Competitor Analyst,
  CPO, CTO, Counsel, Data, QA, Sales, Design, People, + the per-project `<domain>-specialist`).
- **Station** — one step of the project-genesis pipeline (V · 1–9 · M). Each is one ReAct cycle with
  an **exit gate**.
- **The Goal Loop** — the operating loop: **Review & Learn → Trigger → Investigate → Act → Backlog →
  Assign → loop**, run on **ReAct** turns (Reason → Act → Observe), driven by a **goal prompt**.
- **Gate** — a checklist that must pass before advancing. A **founder gate** is a human decision
  (GO/NO-GO, scope-lock, pricing, launch).
- **Grade** — the A–S score of an artifact/round (`GRADE_RUBRIC.md`). Target: A to advance, S to launch.

## Verbs
- **Trigger** a skill = say a phrase in its description (or `/name`).
- **Dispatch** the panel = the orchestrator assigns a station's agents (often as parallel subagents).
- **Red-team** something = try to break it; every gate must have a logged Red-Team challenge.
- **Loop** = re-enter at the lowest affected station and run forward until the stop conditions hold.

## Conventions
- Placeholders use `<angle-brackets>` (e.g. `<PROJECT_NAME>`, `<domain>`).
- Categories: `product`, `engineering`, `productivity`, `misc`, + `setup-*`.
- Versioning via **changesets**; integrity via **skill-lint** / `npm run lint`.
- Decisions worth remembering go in an ADR or here — not buried in chat.
