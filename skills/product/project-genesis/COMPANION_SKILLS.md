# Companion Skills — the external skill packs this workflow can call

> **What this is.** Project Genesis is deliberately *hybrid* (see `SKILL.md` §0.5): every station names
> a default tool and a swap. This file is the **dependency manifest** — the external, third-party skill
> packs the swarm may invoke *for depth* at specific stations. They are **optional and least-privilege**:
> the pipeline runs without any of them (it degrades to the Markdown/HTML defaults), but with them the
> agents in `agents/ROSTER.md` get real method instead of improvising.
>
> These are **not vendored** into this repo — you install them into your agent once, and the
> Orchestrator calls them by name. Nothing here submits anywhere or holds secrets; treat every pack as
> "read the docs, call the skill, keep the output in the project folder."

---

## The packs

Grouped by the job they do in the pipeline. Each row: **pack → what it adds → where the workflow uses it.**

### A. Spec & delivery — the backbone of Stations 6–9 + handoff

| Pack | What it adds | Wired into |
|---|---|---|
| **[spec-kit](https://github.com/github/spec-kit)** (GitHub) | Spec-Driven Development: `/speckit.constitution · specify · plan · tasks · implement · clarify · analyze · checklist`. Specs become executable. | **6 SDLC** (`specify`+`plan` ≈ the master spec), **7 Backlog** (`tasks` ≈ story breakdown), **handoff** (`implement`). `constitution` ≈ the per-project `CLAUDE.md` + operating principles. `analyze`/`checklist` reinforce **8 Review**. Backs **CPO, CTO**. |
| **[agent-skills](https://github.com/addyosmani/agent-skills)** (Addy Osmani) | 24 lifecycle skills: `interview-me`, `idea-refine`, `spec-driven-development`, `planning-and-task-breakdown`, `test-driven-development`, `code-review-and-quality`, `security-and-hardening`, `performance-optimization`, `observability-and-instrumentation`, `ci-cd-and-automation`, `shipping-and-launch`, … | `interview-me`/`idea-refine` → **V·Validate** & **1 Knowledge**; the spec/plan pair → **6/7**; the Review/Ship families → **8 Review** + **handoff**. Backs **CTO, QA**. |
| **[superpowers](https://github.com/obra/superpowers)** (obra) | A full dev methodology as composable skills: `brainstorming` (Socratic), `writing-plans`, `subagent-driven-development`, parallel agent dispatch, `git-worktrees`, `test-driven-development`, `systematic-debugging`, `verification-before-completion`, `writing-skills`. | `brainstorming` → **V·Validate**; `writing-plans` → **6/7**; parallel dispatch + `git-worktrees` → **the swarm loop & build handoff**; `systematic-debugging`+`verification` → **8 Review**; `writing-skills` → **9 Specialist** (authoring the `<domain>-specialist`). Backs **Orchestrator, CTO, QA**. |

### B. Knowledge, diagrams & docs — Stations 1–3 (the knowledge-board / diagram swaps)

| Pack | What it adds | Wired into |
|---|---|---|
| **[graphify](https://github.com/safishamsi/graphify)** (safishamsi) | Turns a folder (code, schemas, docs, media; 36+ languages via tree-sitter) into a **queryable knowledge graph** — interactive HTML graph + Markdown report + JSON. Finds "god nodes" and surprising cross-file links. | **Swap/booster for 1 Knowledge** (graph the intake folder → `KNOWLEDGE_INDEX.md`) and **2 Diagrams** (relationship graph feeds the context/ERD). Backs **CPO/BA, CTO**. |
| **[claude-obsidian](https://github.com/AgriciDaniel/claude-obsidian)** (AgriciDaniel) | AI second brain in an Obsidian vault: `/wiki`, `ingest` (sources → 8–15 interconnected wiki pages), `/autoresearch` (3-round gap-filling research), `lint` (orphans/dead-links/contradictions), `/think`, `/canvas`. | **Swap for 1 Knowledge** (vault instead of FigJam) and the `KNOWLEDGE_INDEX`; `/autoresearch` → **V·Validate** & the **Competitor Analyst**; `lint` (contradiction check) → **8 Review**. |
| **[obsidian-skills](https://github.com/kepano/obsidian-skills)** (kepano) | `obsidian-markdown` (wikilinks, callouts, properties), `obsidian-bases`, `json-canvas`, `obsidian-cli`, `defuddle` (clean Markdown from web pages). | `defuddle` → **00 Intake** doc prep; `json-canvas` → **2 Diagrams** (canvas); `obsidian-markdown` → clean cross-linked authoring across **1–9**. |

### C. The swarm & loop discipline — cross-cutting

| Pack | What it adds | Wired into |
|---|---|---|
| **[agency-agents](https://github.com/msitarzewski/agency-agents)** (The Agency) | **232 specialized agent personas** across 16 divisions (Engineering, Design, Marketing, Sales, Product, Testing, Security, Finance, …). | **Roster booster for `agents/ROSTER.md`.** When a slice needs more depth than a core hat, the Orchestrator spawns the matching Agency persona (e.g. a mobile builder under CTO, a TikTok strategist under CMO) as a subagent. Backs the **whole swarm**. |
| **[andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills)** (multica-ai) | Four guardrails: **Think-before-coding**, **Simplicity-first**, **Surgical-changes**, **Goal-driven-execution** (define success criteria, loop until met). | Reinforces the **operating principles** (`SKILL.md` §0) and the **Goal Loop / ReAct** substrate (`LOOP_ENGINEERING.md`) — a discipline on every agent's micro-loop. Backs **Orchestrator, CTO**. |

### D. Context economy & memory — make long, multi-session loops cheap and continuous

| Pack | What it adds | Wired into |
|---|---|---|
| **[headroom](https://github.com/headroomlabs-ai/headroom)** (Headroom Labs) | Compresses tool outputs, files, and RAG chunks **before** they reach the model — 60–95% fewer input tokens, same answers; content-aware for JSON/code/prose. | The **Orchestrator** wraps the loop with it when reading big **00 Intake** folders and long **8 Review** rounds. Keeps the input side of the loop affordable. |
| **[caveman](https://github.com/juliusbrussee/caveman)** (juliusbrussee) | Output-token compression (terse style, ~65% fewer output tokens); `/caveman-commit`, `/caveman-review`. | **Handoff** commit messages and **8 Review** comments. The output-side twin of `headroom`. |
| **[claude-mem](https://github.com/thedotmack/claude-mem)** (thedotmack) | Persistent cross-session memory: lifecycle hooks + SQLite + vector search inject relevant past context into new sessions. | Carries **`PROJECT_STATE.md`** continuity across sessions so the **re-loop** survives restarts — the memory twin of the kit's own state tracker. Backs the **Orchestrator**. |

---

## Where used — quick lookup

**By station**

| Station | Companion packs |
|---|---|
| 00 Intake | `defuddle` (kepano), `headroom` |
| V · Validate / Feature Discovery | `brainstorming` (superpowers), `interview-me`/`idea-refine` (agent-skills), `/autoresearch` (claude-obsidian) |
| 1 Knowledge | **graphify**, **claude-obsidian**, kepano `obsidian-markdown` |
| 2 Diagrams | graphify (graph), kepano `json-canvas` |
| 3 Dictionary | kepano `obsidian-markdown` (cross-linked glossary) |
| 4 Data model | agent-skills `api-and-interface-design`, spec-kit `plan` |
| 5 Wireframes | (defaults; `frontend-design` as today) |
| 6 SDLC | **spec-kit** (`specify`+`plan`), agent-skills `spec-driven-development`, superpowers `writing-plans` |
| 7 Backlog | **spec-kit** (`tasks`), agent-skills `planning-and-task-breakdown` |
| 8 Review | superpowers (`systematic-debugging`, `verification`), agent-skills (Review family), spec-kit (`analyze`/`checklist`), claude-obsidian `lint`, `caveman-review` |
| 9 Specialist | superpowers `writing-skills` |
| Handoff / build | spec-kit `implement`, superpowers `subagent-driven-development` + `git-worktrees`, agent-skills Ship family, `caveman-commit` |
| The whole loop | **agency-agents** (persona depth), **karpathy** (discipline), **headroom** + **claude-mem** (context + memory) |

**By agent** (see the `Backed by` column in `agents/ROSTER.md`)

- **Orchestrator** → superpowers, headroom, claude-mem, karpathy
- **CPO / CTO** → spec-kit, agent-skills, superpowers, graphify
- **QA** → superpowers (TDD/verification), agent-skills (code-review/security)
- **Competitor Analyst / CMO** → claude-obsidian `/autoresearch`, agency-agents (marketing division)
- **Whole panel** → agency-agents (spawn the matching persona for extra depth)

---

## Install (once, into your agent)

Most of these ship a Claude Code plugin marketplace and/or an `npx`/CLI installer. Install only the
ones you want — the pipeline degrades gracefully to its defaults without them.

```bash
# Claude Code plugin marketplaces
claude plugin marketplace add addyosmani/agent-skills
claude plugin marketplace add AgriciDaniel/claude-obsidian
# … superpowers, andrej-karpathy-skills, agency-agents also publish marketplaces / install scripts

# CLI / npx installers
npx claude-mem install                        # cross-session memory
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git   # spec-kit
uv tool install graphifyy && graphify install # graphify
pip install "headroom-ai[all]"                # headroom (context compression)
curl -fsSL https://raw.githubusercontent.com/JuliusBrussee/caveman/main/install.sh | bash  # caveman
# kepano/obsidian-skills + msitarzewski/agency-agents: see each repo's README (marketplace / npx / copy)
```

Each pack's own README is the source of truth for install and exact command names — the links in the
tables above go straight to them.

## Rules (least-privilege, same as the rest of the kit)

1. **Optional, not required.** Never block a station on a missing companion; fall back to the default
   tool named in `SKILL.md` §0.5 and note it in `PROJECT_STATE.md`.
2. **Keep outputs in the project folder.** Graphs, vaults, wiki pages, plans — land them under the
   right station folder so they're versioned with everything else.
3. **The domain rule still wins.** A companion's convenience never overrides a captured domain rule,
   the schema, or the API contract — the domain specialist and the Red-Team still gate.
4. **No secrets, no auto-submit.** These are reasoning/authoring aids; nothing here talks to a
   production system on its own.

> See also: `SKILL.md` §0.7 (the short version of this table), `agents/ROSTER.md` (the `Backed by`
> column), and `LOOP_ENGINEERING.md` (why `karpathy`/`headroom`/`claude-mem` sit on the loop).
