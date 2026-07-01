# jallynme-skills

## 0.0.3

### Patch Changes

- 84e903f: project-genesis: wire in external **companion skills** and expand the agent swarm.

  - **Companion skills manifest** (`COMPANION_SKILLS.md`): 11 optional, least-privilege external skill
    packs the swarm can call for depth, each mapped to a station/agent — spec-kit, addyosmani/agent-skills,
    superpowers, graphify, claude-obsidian, kepano/obsidian-skills, agency-agents, andrej-karpathy-skills,
    headroom, caveman, claude-mem. Wired through SKILL.md (§0.5 swaps + new §0.7 + §5 pointer),
    `agents/ROSTER.md` (the `Backed by` column), and both READMEs. Fallback to the defaults if a pack
    isn't installed; the domain specialist + Red-Team still own the gate.
  - **Five new sub-agents** (build & launch specialists) in `agents/`: Security Engineer/AppSec,
    DevOps/SRE, AI/ML Engineer, Technical Writer, Customer Success — each registered in ROSTER (tiers,
    roster table, dispatch map incl. new Handoff + Post-launch rows) and the SKILL §0.6 swarm table.
  - **Emoji cleanup**: removed all emoji across the repo except the semantic set — ✅ done, ⬜ todo,
    🔴🟡🟢 RAG severity, 🟦🟪🟩🟧 task lanes, 🟨 WIP, 🔁 loop — replacing the rest with meaning-preserving
    ASCII (e.g. matrix legends `~ partial`/`x none`/`? unknown`, script output `OK:`/`FAIL:`).

## 0.0.2

### Patch Changes

- project-genesis: lock Station 5 wireframes to **1-page HTML per surface** (Tailwind CDN + shadcn-style
  tokens, plain HTML — no React/TS) with a new `template/05_WIREFRAMES/_starter.html`, and add a new
  bookend **Station E — Executive Summary**: a humanized, best-visualized CEO one-pager in HTML (story,
  KPI cards, roadmap timeline, status board, Mermaid diagram) that refreshes every version and feeds the
  M launch gate. Wired through SKILL.md, the playbook, station prompts, the roster dispatch map,
  PROJECT_STATE, template CLAUDE.md, and the README; it invokes `product-management:stakeholder-update`,
  `product-management:roadmap-update`, and `frontend-design` for depth.

## 0.0.1

### Patch Changes

- Initial release. Skills:
  - **project-genesis** — solo-founder venture kit: Validate → Feature Discovery → Build (1–9) →
    Monetize, run by a virtual C-suite (13 agents + a per-project domain specialist) on an engineered
    ReAct / Goal Loop, with a Red-Team and an A–S grade rubric. Includes a filled worked example, a
    live dashboard, bootstrap/package/lint scripts, and installable `.skill` packaging.
  - **genesis-init** — `/genesis-init` scaffolds a project-genesis project into your folder.
  - **genesis-interview** — `/genesis-interview` intake: answer a few one-liners (topic + feature names)
    and the swarm does the deep research + competitor analysis and fills Validate + Feature Discovery.
  - **skill-lint** — integrity linter for a skills repo (frontmatter, links, placeholders, orphans).
  - **setup-claude-code-hooks** — installs the `hooks/` git-guardrail + lint-on-stop Claude Code hooks.
  - **setup-jallynme-skills** — one-time per-repo setup (issue tracker, doc layout, hook install).
