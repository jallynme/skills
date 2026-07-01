# Project Genesis — Playbook

> The repeatable process that turns **a folder of raw business documents** into a complete,
> build-ready specification set **and** a reusable domain-expert skill — then loops the review
> until there are no gaps or bugs.
>
> This is the generalized, domain-agnostic version of a workflow proven on a real, full-scale build.
> It runs the same way for any business domain; the only thing that changes per project is the
> domain — and one station produces a **specialist skill for that domain** so the next pass is
> guarded by an expert.

**Companion files**
- Orchestrator skill (installable): `skills/project-genesis/SKILL.md`
- Copy-paste prompts: `prompts/00_KICKOFF.md`, `prompts/STATION_PROMPTS.md`, `prompts/RELOOP_PROMPT.md`
- Per-project scaffold: `template/`
- Worked example: a real, full-scale product build this kit was extracted from.

> **S-grade / solo-founder edition.** This playbook covers the 9 build stations. They're now wrapped
> in a venture arc and staffed by an agent swarm. For that layer read: `SOLO_FOUNDER_AGENTIC_GUIDE.md`
> (operating model + the **Validate → Build → Monetize** arc + founder decision gates), `agents/ROSTER.md`
> (the virtual C-suite + dispatch map), and `GRADE_RUBRIC.md` (how "Grade S" is scored). The bookend
> stations live in `template/V_VALIDATE/` and `template/M_MONETIZE/`; the adversarial pass in
> `template/08_REVIEW/REDTEAM_PREMORTEM.md`.

---

## 1. The idea in one picture

```
  ┌─ you ─────────────────────────────────────────────────────────────────────┐
  │  create folder PROJECT_NAME/ , drop ALL related docs into 00_INTAKE/        │
  └───────────────┬────────────────────────────────────────────────────────────┘
                  ▼
  ┌───────────────────────────── THE PIPELINE (run in order) ──────────────────┐
  │ 1 Knowledge → FigJam board    5 Wireframes (shadcn HTML)                     │
  │ 2 Diagrams (flow/ERD/state)   6 SDLC roadmap spec (+ API spec)               │
  │ 3 Domain dictionary           7 Scrum backlog (epics→stories→AC→TC)          │
  │ 4 Data model (Prisma)         8 Review loop (PO·BA·Specialist·Architect·QA)  │
  │                               9 Domain-specialist skill  →  XXX.md           │
  └───────────────┬────────────────────────────────────────────────────────────┘
                  ▼
  ┌────────────────────────────────────────────────────────────────────────────┐
  │  LOOP: clear the gap/bug log, pick the next slice, re-run affected stations, │
  │  re-review, bump version — again and again UNTIL no mistake / gap / bug.     │
  └────────────────────────────────────────────────────────────────────────────┘
```

Every box is a **station** with a fixed **input → action → output → exit gate**. You never skip a
station; you only mark it N/A with a recorded reason.

---

## 2. Why it's shaped this way (the lessons baked in)

These are the hard-won rules from a real, full-scale build, generalized:

1. **Knowledge before model before code.** Extracting the domain to a board first (Station 1) stops
   you from encoding misunderstandings into the schema. The board is cheap to fix; the schema isn't.
2. **The dictionary is the naming authority.** One agreed glossary (Station 3) keeps schema fields,
   API names, UI copy, and the specialist skill all using the *same* words for the *same* things.
3. **Model the domain as it is, not as it's convenient.** When variants share a shape, use one
   entity + a strategy (e.g., a single `Order` + an `OrderType` strategy, not one table
   per type). Real enums for real code tables. Versioned reference data ("as of" a date).
4. **Vertical slices, phased & shippable.** The SDLC plan (Station 6) is phases 0→N, each one
   shippable with explicit exit criteria; Phase 1 is the **walking skeleton** — the thinnest path
   that runs end-to-end. You deepen by variant after the skeleton stands.
5. **Stories carry their own proof.** Each backlog card (Station 7) ships UI→API→DB together and
   includes Gherkin acceptance criteria + test cases + a Definition of Done — so "done" is testable,
   not opinion.
6. **A domain has a guardian.** Station 9 turns accumulated domain knowledge into a **persona-expert
   skill** that reviews every future change — a `<your-domain>-specialist` generated for the project,
   guarding correctness on every future pass.
7. **The review loop is where quality is made.** A multi-agent panel — plus a Red-Team paid to break
   it — finds gaps a single pass misses;
   a regression baseline keeps fixed bugs fixed; versioning preserves what was signed off.

---

## 3. Roles (RACI) for each station

| Station | Responsible (drives) | Accountable (signs gate) | Consulted | Informed |
|---|---|---|---|---|
| 1 Knowledge | BA | PO | Domain Specialist | team |
| 2 Diagrams | BA / Architect | Architect | Domain Specialist | team |
| 3 Dictionary | BA | Domain Specialist | PO, Architect | team |
| 4 Data model | Architect | Architect | Domain Specialist | PO |
| 5 Wireframes | Designer / PO | PO | BA, Users | team |
| 6 SDLC spec | Architect / Scrum lead | PO | BA, QA | stakeholders |
| 7 Backlog | BA / Scrum lead | PO | Architect, QA, Specialist | team |
| 8 Review loop | Scrum lead | **whole panel** | — | stakeholders |
| 9 Specialist | BA + Domain Specialist | Domain Specialist | PO | team |

When you (the agent) run solo, **play each role in turn** and record each role's findings separately —
that's what makes the panel honest. Use the matching plugin skills if installed
(`product-management`, `engineering`, `design`, `operations`, and your domain specialist).

---

## 4. Stations in detail

Each station below lists **Input / Action / Output / Exit gate / Tool (default → swap)**. The
copy-paste prompt for each is in `prompts/STATION_PROMPTS.md`.

### Station V — Validate (the GO/NO-GO gate, before any build)
- **Input:** the founder's idea + everything in `00_INTAKE/`.
- **Action:** lead **CMO + CFO**, attacked by **Red-Team**. Fill `V_VALIDATE/VALIDATION_BRIEF.md` +
  `ASSUMPTION_REGISTER.md`: problem & customer (name the ICP), market size (TAM/SAM/SOM), positioning,
  business model, pricing & willingness-to-pay, the 3–5 riskiest assumptions each with a cheap test
  this week, and written kill criteria. Use the **deep-research** skill for market sizing + competitor scan.
- **Output:** `V_VALIDATE/VALIDATION_BRIEF.md` + `ASSUMPTION_REGISTER.md` + a recorded GO/NO-GO.
- **Exit gate (founder):** **GO** only when the riskiest assumptions have a real-world test result and
  the Red-Team has no unanswered High. **NO-GO is a win** — skipping this is the most expensive mistake
  a solo founder can make.
- **Tool:** Markdown briefs + deep-research → *swap:* a lean-canvas tool, your own interviews.

### Station V · Feature Discovery (the lean start — domain + big picture → a feature set)
- **Input:** the **domain + big-picture features** (the minimum a founder needs to give).
- **Action:** **Competitor Analyst + CPO**, using **deep-research** + live competitor sites/apps
  (Claude in Chrome) + app-store listings & reviews. Tear down the top competitors into
  `V_VALIDATE/COMPETITOR_FEATURE_MATRIX.md`, then **propose** a full feature set in
  `V_VALIDATE/FEATURE_MAP.md` — classified table-stakes / differentiator / delighter (Kano + MoSCoW),
  including ⭐ features the founder didn't ask for but the market expects, each with evidence, scoped
  per surface (web / mobile / admin). **Copycat rule:** copy common patterns & table-stakes; never
  clone protected IP/brand (flag for Counsel). Win = parity + a wedge + one leapfrog.
- **Output:** the competitor feature-list set (`FEATURE_CATALOG.md` · `competitor-<name>.md` profiles ·
  `FEATURE_BENCHMARK.md` · `COMPETITOR_FEATURE_MATRIX.md`) + `FEATURE_MAP.md` + a locked v1 scope.
- **Exit gate (founder):** you **scope-lock** the v1 feature set; Red-Team has challenged scope creep.
  Locked scope feeds Stations 6 (phases) and 7 (backlog).
- **Tool:** deep-research + competitive-intel skills + Chrome → *swap:* your own competitor teardown.

### Station 1 — Knowledge extraction → FigJam board
- **Input:** every file in `00_INTAKE/` (PRDs, references, real-app extractions, sample data, emails).
- **Action:** read everything. Extract six buckets — **actors, entities, processes/flows, business
  rules, codes & statuses, edge cases & open questions.** Place them as labelled frames on a **FigJam
  board**; mirror the layout in `01_KNOWLEDGE/KNOWLEDGE_INDEX.md` (frame → contents → source doc).
  Explicitly flag **contradictions** between documents.
- **Output:** `01_KNOWLEDGE/KNOWLEDGE_INDEX.md` + FigJam URL + a **source manifest** (what each
  intake doc is, its language, and its authority/trust level).
- **Exit gate:** every intake doc is represented on the board; every contradiction/unknown is an
  open question in `PROJECT_STATE.md`.
- **Tool:** FigJam via Figma MCP → *swap:* Miro, or a pure-Markdown index.

### Station 2 — Diagrams
- **Input:** the knowledge index.
- **Action:** draw at least — **context** (system + external actors/systems), **core domain flow(s)**
  (happy path + key variants), a **state/lifecycle diagram** for any object that moves through
  statuses, and a first-cut **ERD**. Default to **Mermaid** fenced blocks (diffable, lives in git);
  promote to FigJam when a shared canvas helps.
- **Output:** `02_DIAGRAMS/{context,flows,state,erd}.md`.
- **Exit gate:** each top-level flow has a diagram; every lifecycle status is reachable with defined
  transitions (no orphan or invalid states).
- **Tool:** Mermaid / FigJam → *swap:* draw.io, PlantUML, Figma.

### Station 3 — Domain dictionary / vocabulary
- **Input:** knowledge index + diagrams.
- **Action:** fill `03_DICTIONARY/DOMAIN_DICTIONARY.md` — a **bilingual glossary** mapping
  *term ↔ plain-language meaning ↔ official code/format ↔ source*. Include **code tables verbatim**
  (statuses, type codes, reference/master-data lists). This is the naming authority downstream.
- **Output:** `03_DICTIONARY/DOMAIN_DICTIONARY.md`.
- **Exit gate:** every entity/field you plan to model has an entry; no undefined jargon remains in
  the diagrams.
- **Tool:** Markdown table → *swap:* Notion database, a glossary in the wiki.

### Station 4 — Data model (Prisma schema)
- **Input:** ERD + dictionary.
- **Action:** write `04_DATA_MODEL/schema.prisma`. One entity per real concept; **real enums** for
  code tables; explicit relations; a tenant-scoping field if multi-tenant. Prefer **one
  strategy-driven model** over per-variant tables when variants share a shape. Make reference data
  **versioned** (read "as of" the business date, never "latest"). Note every modelling decision and
  open question in `SCHEMA_NOTES.md`.
- **Output:** `04_DATA_MODEL/schema.prisma` + `04_DATA_MODEL/SCHEMA_NOTES.md`.
- **Exit gate:** `prisma validate` passes (or the SQL compiles); every dictionary entity is present;
  the domain specialist signs off names, enums, and required/optional fields.
- **Tool:** Prisma + PostgreSQL → *swap:* SQL DDL, DBML, Drizzle.

### Station 5 — Wireframes
- **Input:** flows + schema + dictionary.
- **Action:** build a **1-page HTML wireframe per surface** (e.g. customer app + admin portal +
  mobile). Each is **one self-contained `.html` file — Tailwind (Play CDN) + shadcn-style design
  tokens, plain HTML only (no React, no JSX, no TypeScript, no build step)**; vanilla `<script>` for
  screen switching is fine. Start from `template/05_WIREFRAMES/_starter.html`. Walk every core flow
  end-to-end; use real dictionary terms and realistic sample data; design with i18n in mind.
- **Output:** `05_WIREFRAMES/<surface>.html`.
- **Exit gate:** every core flow clicks through; each major entity has create/list/detail screens; an
  **interface-completeness** pass finds no dead-ends.
- **Tool:** 1-page HTML (Tailwind + shadcn tokens, no React/TS) → *swap:* Figma Make, v0, Penpot.

### Station 6 — SDLC roadmap spec
- **Input:** everything so far.
- **Action:** write `06_SDLC/SDLC_MASTER_SPEC.md` — vision & users, architecture + NFRs, a **phased
  plan (Phase 0→N, each shippable + exit criteria)**, Scrum process, **DoR/DoD**, an Epics→Stories
  outline, a traceability matrix (epic → screen → schema → test), a test strategy, and a risk
  register. If API-first, add `06_SDLC/API_SPEC.md` (endpoints, error shape, pagination, idempotency).
- **Output:** `06_SDLC/SDLC_MASTER_SPEC.md` (+ `API_SPEC.md`).
- **Exit gate:** every phase has explicit exit criteria; Phase 1 = the walking skeleton; DoR/DoD are
  concrete and testable.
- **Tool:** Markdown spec → *swap:* Confluence, Notion.

### Station 7 — Scrum backlog (epics → stories → AC → TC)
- **Input:** SDLC spec + schema + wireframes + dictionary.
- **Action:** build `07_BACKLOG/`: a `README.md` index, one folder per **epic**, and one **story
  card** per story using the **10-section** `TEMPLATE.md` (Story · Context · Scope · **Acceptance
  Criteria (Gherkin ≥3: happy/edge/negative)** · Test Cases · Technical notes [schema models +
  wireframe screens + domain rules + edge cases] · Dependencies · DoD · Links · **§10 Tasks in 4
  lanes** 🟦 FE-customer / 🟪 FE-admin / 🟩 BE-API / 🟧 QA). Add `BUILD_ORDER.md` (dependency order +
  walking-skeleton sequence).
- **Output:** `07_BACKLOG/README.md`, `…/EPIC-XX-*/EPIC-XX-Sy.md`, `07_BACKLOG/BUILD_ORDER.md`.
- **Exit gate:** every story has ≥3 Gherkin scenarios + a DoD, traces to a screen + a schema model;
  the build order has no forward dependencies.
- **Tool:** Markdown cards → *swap:* Jira, Linear, GitHub Issues, Notion.

### Station 8 — Review loop (the quality engine)
- **Input:** all artifacts at the current version.
- **Action:** dispatch the **agent panel** (`agents/ROSTER.md`) into `08_REVIEW/REVIEW_LOG.md` — **CPO**
  (value/scope/traceability = PO+BA), **Domain Specialist** (matches the real domain?), **CTO**
  (schema/API/NFR/security = Architect), **QA** (testable ACs + regression baseline), and the
  founder-level reviewers **CFO/CMO/Counsel/Data**. The **Red-Team attacks the gate** (logs
  `REDTEAM_PREMORTEM.md`). Each finding gets a severity. **Fix**, then **re-run only the affected
  upstream stations** (dictionary gap → 3,4,7; flow gap → 2,5,7; rule gap → 3,4,6,7). **Bump the
  version**, keep the **regression baseline** green, and **score the round** (`GRADE_RUBRIC.md` →
  `_EVAL/SCORECARD.md`; the lower of the founder's and Red-Team's score stands).
- **Output:** dated rounds in `08_REVIEW/REVIEW_LOG.md`; a scorecard entry; artifacts re-issued.
- **Exit gate:** **zero open High · no open Red-Team High · grade ≥ target · the panel + specialist
  sign off** this round (recorded in `PROJECT_STATE.md`). Anything still open → **loop again**.
- **Tool:** Markdown review log → *swap:* GitHub PR reviews, Linear.

### Station 9 — Domain-specialist skill (the "XXX.md")
- **Input:** the dictionary + rules + checklists accumulated in stations 1–8.
- **Action:** generate `09_SPECIALIST/<domain>-specialist/SKILL.md` from
  `SPECIALIST_SKILL_TEMPLATE.md`: a **persona expert** with **work modes** (Review / Answer /
  Co-design / Define-rules), **core domain knowledge** (verbatim codes, statuses, formulas, master
  data), **checklists** (validation + feature-readiness), **questions to ask** when requirements are
  ambiguous, an **output style**, and an explicit **"must-confirm / say-when-unsure"** list. Zip the
  folder to `<domain>-specialist.skill` if an installable package is wanted.
- **Output:** `09_SPECIALIST/<domain>-specialist/SKILL.md` (+ optional `.skill`).
- **Exit gate:** the specialist answers the domain's top-10 questions from its own body and correctly
  flags the project's known edge cases; it joins the panel for all future rounds.
- **Tool:** Skill `SKILL.md` → *swap:* a plain `<domain>-expert.md` brief.

### Station E — Executive Summary (the CEO one-pager, after 9 / before M)
- **Input:** everything so far — especially `PROJECT_STATE.md`, `06_SDLC/SDLC_MASTER_SPEC.md`,
  `_EVAL/SCORECARD.md`, `M_MONETIZE/METRICS_TREE.md`.
- **Action:** lead **CPO + CMO** (attacked by **Red-Team**). Write
  `E_EXEC_SUMMARY/EXECUTIVE_SUMMARY.html` from the template — **one self-contained HTML page** (same
  stack as the wireframes: **Tailwind CDN + shadcn tokens, plain HTML, no React/TS**, plus **Mermaid**
  for the diagram). Make it **humanized** (story-first: problem → who → why now → what we built → the
  proof number → the ask) and **best-visualized** (KPI cards · a **roadmap timeline** with phase
  status · a **status board** of working/in-flight/risks · **one at-a-glance diagram**). Invoke
  **`product-management:stakeholder-update`** + **`product-management:roadmap-update`** for the
  narrative/roadmap and **`frontend-design`** for the visual craft. Every number traces to a source.
- **Output:** `E_EXEC_SUMMARY/EXECUTIVE_SUMMARY.html` (refreshed at every version bump).
- **Exit gate:** a non-technical reader gets *what / where we are / what we need* in under two
  minutes; every number traces to a source; it prints clean. Required input to the **M** gate.
- **Tool:** 1-page HTML (Tailwind + Mermaid) → *swap:* Google Slides, `pptx`, a Notion doc.

### Station M — Monetize / Launch (the GO/HOLD gate, after the build)
- **Input:** the built spec + a signed-off version.
- **Action:** lead **CMO + CFO + Sales**, attacked by **Red-Team**. Fill `M_MONETIZE/GTM_AND_MODEL.md`
  + `METRICS_TREE.md`: pricing tiers tied to the feature set, unit economics (CAC/LTV/payback/margin),
  a financial model (revenue · burn · runway), GTM (positioning · first-100-users channel · launch
  assets · sales motion), the North-Star + KPI tree + event taxonomy, and the launch checklist.
- **Output:** `M_MONETIZE/GTM_AND_MODEL.md` + `METRICS_TREE.md` + a recorded LAUNCH/HOLD.
- **Exit gate (founder):** **LAUNCH** only when the checklist is green, unit economics are viable
  (CFO), compliance is clear (Counsel), and the core flow is instrumented (Data).
- **Tool:** Markdown + `xlsx`/`pptx` (model + pitch) → *swap:* your finance/GTM stack.

---

## 5. The loop — "again and again until no mistake or gap"

> This loop is **engineered** (`LOOP_ENGINEERING.md`): the founder gives a **goal prompt**, and the
> Orchestrator drives the **Goal Loop — Review & Learn → Trigger → Investigate → Act → Backlog →
> Assign → loop** on ReAct turns until the goal's stop conditions hold. The steps below are one turn.

1. Open `PROJECT_STATE.md`; look at the **gap/bug log** and the list of **slices not yet done**.
2. Pick the next slice (next phase, next record/order type, next surface) **or** the highest
   open gap.
3. Re-enter the pipeline at the **lowest affected station** (often 2, 3, 4, or 7) and run forward
   through the affected stations only.
4. Run **Station 8** again — specialist + panel.
5. **Sign-off?** No → repeat 3–4. Yes → **bump version**, mark the slice **DONE**, start the next.

**"This round is clean" means:** gap/bug log has zero High/Med open · every story meets DoD · the
regression baseline is green · the specialist + all panel roles signed the current version.

### Optional handoff to build
When a phase is clean, produce an **engineering handoff pack** (technical design, architecture,
ERD, sequence/state diagrams, delivery plan) and the **kickoff + per-epic prompts**
(`prompts/`) the user pastes into a coding agent — mirroring a real project's phased handoff.

---

## 6. Anti-patterns (don't do these)

- **Jumping to the schema** before the dictionary and diagrams exist. You'll model a misunderstanding.
- **"Simplifying" a hard domain rule** to make the model neat. Capture it exactly or ask.
- **One table per variant** when the variants share a shape. Use one entity + a strategy.
- **Reading "latest" reference data** for a historical record. Always "as of" the business date.
- **Overwriting a signed-off artifact.** Supersede + version it; keep the audit trail.
- **A story with no Gherkin / no DoD.** It isn't ready (fails Definition of Ready).
- **Skipping the specialist** on anything that touches the regulated/precise core of the domain.

---

## 7. Definition of Ready / Definition of Done (carried per story)

**Ready** (before a story enters a sprint): clear actor + value · in/out of scope stated · ≥3 Gherkin
ACs · dependencies known · touches-a-real-rule? → specialist consulted · estimate agreed.

**Done** (before a story is closed): all ACs demoable · tests pass (every TC automated) · code review ·
no regression (baseline green) · i18n for all source languages · a11y basics · observability
(log/metric) · docs/CHANGELOG updated · domain specialist sign-off if it touched domain procedure.
