# CLAUDE.md — working in the `jallynme/skills` repo

> Read `CONTEXT.md` first (the shared language). This file is how to *work* in this repo.

## What this repo is
A collection of **agent skills** installable via `npx skills@latest add jallynme/skills` (the
[skills.sh](https://skills.sh) convention). Each skill lives at `skills/<category>/<name>/SKILL.md`
with bundled resources beside it. The flagship is **project-genesis** (a full solo-founder venture
kit); the rest keep the agents that run it honest (review, lint, hooks, setup).

## Rules
1. **A skill = a folder with a `SKILL.md`.** Frontmatter needs `name` + a **trigger-rich
   `description`** (list the real phrases that should activate it). No description → it won't fire.
2. **Reference resources relative to the skill folder** (e.g. `agents/ROSTER.md`, not `../../…`). A
   skill must be self-contained so `npx skills add` can copy just its folder.
3. **Don't hand-edit `CHANGELOG.md`.** Run `npm run changeset` per change; `npm run version` releases.
4. **Lint before you ship:** `npm run lint` (or `/skill-lint`). Fix broken links, bad frontmatter,
   unwrapped `<placeholders>`.
5. **Review new/changed skills** before release — check the trigger-rich description, tool design, the
   loop, evals, and safety (least-privilege tools, no secrets in prompts).
6. **Placeholders are `<angle-brackets>`.** Keep them consistent (the linter checks this).
7. **Never commit secrets.** Hooks live in `hooks/`; install them with `setup-claude-code-hooks`.

## Common tasks
- **Add a skill:** `skills/<category>/<name>/SKILL.md` + resources → add a row to `README.md` →
  `npm run changeset` → `/skill-lint`.
- **Improve project-genesis:** edit under `skills/product/project-genesis/` (see its own `README.md`,
  `PROJECT_GENESIS_PLAYBOOK.md`, `LOOP_ENGINEERING.md`, `UPGRADES.md`). Keep `scripts/lint.sh` green.
- **Cut a release:** `npm run version` → commit → tag `vX.Y.Z` → push (deploys to `jallynme/skills`).

## Layout
`skills/` (the skills) · `hooks/` (Claude Code hook scripts) · `.changeset/` (versioning) ·
`CONTEXT.md` (shared language) · `README.md` (front page + install).
