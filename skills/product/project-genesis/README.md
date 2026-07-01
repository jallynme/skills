# Project Genesis Kit

**Turn a folder of raw business documents into a complete, build-ready spec set — then a reusable
domain-expert skill — on repeat.**

This is the generalized, reusable version of a workflow proven on a real, full-scale product build.
Drop your docs in a folder, run the pipeline, and get the same nine artifacts every time, reviewed in
a loop until there are no gaps or bugs — for **any** business domain.

> ### ⭐ Solo-Founder / Agentic edition (S-grade)
> The kit now wraps the 9 product stations in a full **venture arc — Validate → Build → Monetize/
> Launch** — staffed by a **virtual C-suite of AI agents** and graded against an explicit **A–S
> rubric** with an adversarial **Red-Team**. If you're a solo founder running on agentic AI, start
> with **`SOLO_FOUNDER_AGENTIC_GUIDE.md`** — it explains the operating model (you decide, the swarm
> executes). New pieces: `agents/` (the roster, incl. a **Competitor Analyst** for feature teardowns +
> a **lean start** — give the domain + big-picture features, get a researched feature set), `GRADE_RUBRIC.md`,
> the `V_VALIDATE` / `M_MONETIZE` bookend stations, and **mobile** as a first-class surface. It all
> runs on an engineered **Goal Loop** (Review & Learn → Trigger → Investigate → Act → Backlog → Assign)
> on **ReAct** turns — you give a goal, not tasks; see `LOOP_ENGINEERING.md`.

---

## The loop (what you asked for)

```
 create folder PROJECT_NAME/  →  put all related docs in 00_INTAKE/
                 │
                 ▼   the same 9 stations, in order, every time
 1 Knowledge→FigJam · 2 Diagrams · 3 Dictionary · 4 Prisma schema · 5 Wireframes
 6 SDLC roadmap · 7 Scrum backlog (epics→stories→AC→TC) · 8 Review loop · 9 Domain-specialist skill
                 │
                 ▼
 review · fix · re-run affected stations · bump version  ── again & again until no mistake/gap/bug ──┐
                 ▲                                                                                    │
                 └────────────────────────────────────────────────────────────────────────────────────┘
```

Each station has a fixed **input → action → output → exit gate**. You never skip one. One station
(9) produces a **`<domain>-specialist` skill** — your guardian for that domain, generated fresh
for whatever your project is — and it joins the review panel on every future pass.

## What's in this kit

```
project-genesis-kit/
├── README.md                          ← you are here
├── SOLO_FOUNDER_AGENTIC_GUIDE.md      ← ⭐ how to run this as a solo founder + AI swarm (read first)
├── PROJECT_GENESIS_PLAYBOOK.md        ← the full process spec: stations, gates, RACI, the loop, anti-patterns
├── GRADE_RUBRIC.md                    ← what "Grade S" means + the A–S scoring dimensions
├── LOOP_ENGINEERING.md                ← ⭐ the ReAct + Goal-Loop execution substrate (how it runs)
├── UPGRADES.md                        ← review of the kit + prioritized upgrade backlog (Now/Next/Later)
├── agents/                            ← the virtual C-suite (one brief per agent)
│   ├── ROSTER.md                      ← index + dispatch map (station → which agents) + how to spawn
│   ├── orchestrator-chief-of-staff.md ← runs the loop, dispatches the swarm
│   ├── red-team-devils-advocate.md    ← paid to kill the idea (hits every gate)
│   ├── competitor-analyst.md          ← feature teardown · copycat-done-right · suggests features (lean start)
│   └── cfo · cmo · cpo · cto · counsel · data · qa · sales · design · people
├── skills/
│   └── project-genesis/SKILL.md       ← the orchestrator skill (install this — it runs the whole pipeline)
├── prompts/
│   ├── 00_KICKOFF.md                  ← paste to cold-start a new project
│   ├── STATION_PROMPTS.md             ← one prompt per station (V · Feature Discovery · 1–9 · M)
│   └── RELOOP_PROMPT.md               ← the "review & iterate until clean" engine
├── template/                          ← copy this into each new PROJECT_NAME/
│   ├── CLAUDE.md                      ← per-project context + rules
│   ├── PROJECT_STATE.md               ← the loop tracker (status · version · gaps · score · 🎯 goal · trace)
│   ├── V_VALIDATE/                    ← ⭐ validate + competitor set (catalog·profiles·benchmark·matrix) + feature map
│   ├── 00_INTAKE/ … 09_SPECIALIST/    ← one folder per build station, each with its template
│   ├── 05_WIREFRAMES/_starter.html    ← ⭐ 1-page HTML wireframe starter (Tailwind + shadcn tokens, no React/TS)
│   ├── 07_BACKLOG/TEMPLATE.md         ← the 10-section story-card template
│   ├── 08_REVIEW/REDTEAM_PREMORTEM.md ← the red-team / pre-mortem log
│   ├── E_EXEC_SUMMARY/                ← ⭐ CEO one-pager (HTML): story · KPIs · roadmap · status · diagram
│   ├── M_MONETIZE/                    ← ⭐ GTM + financial model + metrics tree (the LAUNCH gate)
│   ├── _EVAL/SCORECARD.md             ← A–S scores per round (the trend should climb)
│   └── _EVAL/dashboard.html           ← ⭐ open in a browser: live loop dashboard from PROJECT_STATE
├── scripts/                          ← bootstrap.sh (scaffold a project) · package.sh · lint.sh
├── examples/sample-booking-saas/     ← ⭐ a filled worked example (what "good" looks like)
└── dist/                             ← built: project-genesis.skill (install) + project-genesis-kit.zip
```

## Quickstart

1. **Install the skill (once).** Open Settings → Capabilities and install the prebuilt
   `dist/project-genesis.skill` (rebuild it anytime with `scripts/package.sh`). Once installed, it
   auto-activates whenever you start a new project from a folder of docs.
   *Note: a skill can't be installed from inside a chat session — do it from Settings.*
2. **Start a project.** Run **`scripts/bootstrap.sh <PROJECT_NAME>`** to scaffold it in one command
   (or make the folder by hand), drop your docs in `<PROJECT_NAME>/00_INTAKE/`, then say
   **"run Project Genesis on <PROJECT_NAME>"** — or paste `prompts/00_KICKOFF.md` (set the GOAL + DOMAIN).
3. **Walk the arc.** It scaffolds the `template/`, reads everything, and runs **V·Validate →
   Feature Discovery → 1→9 → M·Monetize**, stopping at each gate for your OK. Status lands in `PROJECT_STATE.md`.
4. **Loop.** After the first pass, paste `prompts/RELOOP_PROMPT.md` (or say "re-loop") to clear the
   gap/bug log and start the next slice — again and again until it's clean.

You don't need the skill installed to use the kit — you can paste the prompts directly. The skill
just makes it automatic and repeatable.

**New here?** See a fully-filled run in **`examples/sample-booking-saas/`** (what "good" looks like),
open **`template/_EVAL/dashboard.html`** in a browser to watch the loop (grade trend, gaps, station
progress), and run **`scripts/lint.sh`** any time to verify kit integrity.

## Defaults (hybrid — swap any of them)

FigJam (Figma) · Mermaid · **Prisma + PostgreSQL** · **1-page HTML wireframes** (Tailwind CDN +
shadcn-style tokens, plain HTML — no React/TS) · Markdown story cards · a Skill for the specialist ·
a **CEO executive-summary one-pager** (HTML). Each is swappable (Miro, draw.io, SQL/DBML, Figma
Make, Jira/Linear/Notion, Slides…) — name the swap and the pipeline produces the equivalent.

## What a populated run looks like

This kit was reverse-engineered from a real, full-scale product build: knowledge boards, domain docs,
ERD + sequence diagrams, a large `schema.prisma`, shadcn `wireframes/`, an SDLC master spec, a
multi-epic `backlog/` of 10-section story cards, multi-role review/sign-off docs, and a generated
domain-specialist skill. Each template here is the blank version of an artifact that was filled in on
that build.

> This kit is self-contained — copy or move `project-genesis-kit/` anywhere; it has no dependency on
> any specific project.
