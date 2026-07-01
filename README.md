# jallynme / skills

[![skills.sh](https://skills.sh/b/jallynme/skills)](https://skills.sh/jallynme/skills)

Agent skills for **building real products solo, with an AI swarm** — plus the tooling to keep those
agents honest. Small, composable, model-agnostic. Install them into Claude Code (or any agent) with
one command.

## Quickstart

```bash
npx skills@latest add jallynme/skills
```

Pick the skills you want and the agents to install them on. Then run **`/setup-jallynme-skills`** once
to configure your issue tracker, doc locations, and whether to install the Claude Code hooks.

Starting a new product? **`/genesis-init <name>`** scaffolds the project, then **`/genesis-interview`**
turns a one-line idea into a researched, scoped plan (deep research + competitor teardown, done for you).

## What's inside

| Skill | Category | What it does |
|---|---|---|
| **[project-genesis](./skills/product/project-genesis/SKILL.md)** | product | Turn a folder of raw docs (or just a domain + goal) into a full, graded venture blueprint — Validate → Feature Discovery → Build (schema · wireframes · SDLC · backlog) → Monetize — run by a **virtual C-suite** on an engineered **ReAct / Goal Loop**, with a Red-Team and an A–S grade. Solo-founder + agentic. |
| **[genesis-init](./skills/product/genesis-init/SKILL.md)** | product | `/genesis-init` — scaffold a project-genesis project in your folder (template + goal), ready to run. |
| **[genesis-interview](./skills/product/genesis-interview/SKILL.md)** | product | `/genesis-interview` — answer a few **one-liners** (topic + feature names); it does the **deep research + competitor analysis** and fills Validate + Feature Discovery *for you*. Better than grill-with-docs for from-scratch ideas. |
| **[skill-lint](./skills/engineering/skill-lint/SKILL.md)** | engineering | Lint a skills repo for structure and integrity: SKILL.md frontmatter, broken links, placeholder consistency, and orphan resources. |
| **[setup-claude-code-hooks](./skills/misc/setup-claude-code-hooks/SKILL.md)** | misc | Install Claude Code hooks from `hooks/` — a **git guardrail** (blocks `push --force`, `reset --hard`, `clean -fd`, …) and a **lint-on-stop** gate. |
| **[setup-jallynme-skills](./skills/setup-jallynme-skills/SKILL.md)** | setup | Run once per repo — configures the issue tracker, doc layout, and hook install that the other skills consume. |

## Companion skills (optional dependencies)

`project-genesis` is **hybrid** — every station names a default tool and a swap. On top of the defaults
its swarm can call a set of **external, third-party skill packs** for depth. They're **optional and
least-privilege**: the pipeline runs without them (it falls back to the Markdown/HTML defaults), and each
maps to a specific station or agent. Full manifest — what each adds, where it's used, and how to install:
**[`COMPANION_SKILLS.md`](./skills/product/project-genesis/COMPANION_SKILLS.md)**.

| Companion pack | Adds | Used at |
|---|---|---|
| [spec-kit](https://github.com/github/spec-kit) | spec-driven dev (`specify · plan · tasks · implement`) | SDLC · Backlog · handoff |
| [agent-skills](https://github.com/addyosmani/agent-skills) (Addy Osmani) | 24 lifecycle skills (interview→spec→TDD→review→ship) | Validate · Build · Review |
| [superpowers](https://github.com/obra/superpowers) | brainstorming · plans · subagent-dev · git-worktrees · debugging | the loop · Review · handoff |
| [graphify](https://github.com/safishamsi/graphify) | folder → queryable knowledge graph | Knowledge · Diagrams |
| [claude-obsidian](https://github.com/AgriciDaniel/claude-obsidian) | vault second brain (`/wiki · ingest · /autoresearch`) | Knowledge · Validate |
| [obsidian-skills](https://github.com/kepano/obsidian-skills) (kepano) | `obsidian-markdown · json-canvas · defuddle` | Intake · Knowledge · Diagrams |
| [agency-agents](https://github.com/msitarzewski/agency-agents) | 232 specialist personas / 16 divisions | roster booster (whole swarm) |
| [andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills) | think-first · simplicity · surgical · goal-driven | operating principles + the loop |
| [headroom](https://github.com/headroomlabs-ai/headroom) | input-token compression (60–95% fewer) | big reads / the Orchestrator |
| [caveman](https://github.com/juliusbrussee/caveman) | output-token compression + terse commits/reviews | Review · handoff |
| [claude-mem](https://github.com/thedotmack/claude-mem) | persistent cross-session memory | re-loop continuity |

The swarm also grew to match: alongside the C-suite it now ships **build & launch specialists** —
Security Engineer, DevOps/SRE, AI/ML Engineer, Technical Writer, and Customer Success (see
[`agents/ROSTER.md`](./skills/product/project-genesis/agents/ROSTER.md)).

## Layout

```
skills/
├── product/project-genesis/     ← the venture kit (SKILL.md + agents/ · template/ · prompts/ · playbook · examples)
├── engineering/skill-lint/
├── misc/setup-claude-code-hooks/
└── setup-jallynme-skills/
hooks/                            ← Claude Code hook scripts (git-guardrail, lint-on-stop)
```

Each skill is a folder with a `SKILL.md` (name + trigger-rich description in frontmatter) and any
bundled resources. This is the [skills.sh](https://skills.sh) convention.

## Develop

- **Add a skill:** create `skills/<category>/<name>/SKILL.md` with YAML frontmatter (`name`,
  `description`). Bundle any resources beside it. See `skills/product/project-genesis/agents/` for the
  agent-brief pattern.
- **Lint:** `npm run lint` (runs the project-genesis integrity linter).
- **Changelog / release:** `npm run changeset` per change; `npm run version` to cut a release. See
  `.changeset/README.md`.
- **Shared language:** read **[`CONTEXT.md`](./CONTEXT.md)** first — it decodes the vocabulary
  (skill, agent, station, the swarm, the Goal Loop) so agents and humans speak the same language.

## Publishing to skills.sh

This repo follows the [skills.sh](https://skills.sh) convention, so it becomes discoverable once it's
**public on GitHub** and **installed at least once** (the CLI's anonymous telemetry is what indexes it):

1. **Push to a public repo** `jallynme/skills` (create the empty repo on GitHub first):
   ```bash
   git add -A && git commit -m "Release v0.0.1"
   git branch -M main
   git remote add origin https://github.com/jallynme/skills
   git push -u origin main
   ```
2. **Install it once** so it's indexed on the leaderboard + audits:
   ```bash
   npx skills@latest add jallynme/skills
   ```
3. **Add the `skills-sh` GitHub topic** (repo page -> *Manage topics*) to aid discovery.
4. The repo page is grouped via **`skills.sh.json`** (included), and the install **badge** is in the
   header. Security audits (Socket / Snyk / Gen) run on indexed skills, then appear on each skill's page
   and on [skills.sh/audits](https://skills.sh/audits).

> skills.sh reads **GitHub**, not npm - the `"private": true` in `package.json` only guards
> `npm publish` and has no effect on listing. The repo itself must be **public**.

## License

[MIT](./LICENSE) © jallynme
