---
name: setup-jallynme-skills
description: >-
  Run once per repo after installing jallynme/skills. Configures the shared settings the other skills
  consume — issue tracker, where docs live, and whether to install the Claude Code hooks — and writes
  them to a small config the agent reads later. Triggers: "setup jallynme skills", "configure the
  skills", "/setup-jallynme-skills", first-time setup after `npx skills add jallynme/skills`.
---

# Setup — jallynme/skills

One-time per-repo setup. Ask the user the questions below, then record the answers so the other skills
(project-genesis, skill-lint, the hooks) behave consistently. **Ask, don't assume.**

## 1. Ask
1. **Issue tracker** — GitHub Issues · Linear · local files (`docs/issues/`)? (used when a skill files work)
2. **Docs location** — where should generated docs live? (default `docs/`; ADRs `docs/adr/`;
   shared language `CONTEXT.md`)
3. **Install Claude Code hooks?** — the git guardrail + lint-on-stop (recommended yes). If yes, run
   **`setup-claude-code-hooks`**.
4. **project-genesis default stack** (optional) — the tech-stack defaults for new projects (framework,
   ORM, mobile). Leave blank to decide per project in the kickoff.
5. **Grade target** — default `A to advance a phase, S to launch` (from `GRADE_RUBRIC.md`).

## 2. Record
Write the answers to **`.jallynme-skills.json`** at the repo root (create it), e.g.:
```json
{
  "issueTracker": "github",
  "docsDir": "docs",
  "adrDir": "docs/adr",
  "hooksInstalled": true,
  "gradeTarget": { "advance": "A", "launch": "S" }
}
```
Also add a short note to `CLAUDE.md` (or create it) pointing future sessions at this config and at
`CONTEXT.md`.

## 3. Confirm
Summarize the choices back to the user and tell them they're ready to:
- run **project-genesis** — "run Project Genesis on <PROJECT_NAME>" (or `scripts/bootstrap.sh`);
- keep the repo clean with **`/skill-lint`** / `npm run lint`.

> Re-run this any time settings change. It's idempotent — it overwrites `.jallynme-skills.json`.
