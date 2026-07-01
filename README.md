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

## License

[MIT](./LICENSE) © jallynme
