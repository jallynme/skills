# Station prompts — run (or re-run) any single station

Paste the one you need. Each assumes the previous stations' outputs exist in `<PROJECT_NAME>/`.
Each ends at the station's **exit gate** — review the output before moving on.

---

## Station V — Validate (GO/NO-GO, before any build)
```
Run Station V (Validate) for <PROJECT_NAME> — the founder GO/NO-GO gate, before any build.
Lead CMO + CFO; attacked by Red-Team. Fill V_VALIDATE/VALIDATION_BRIEF.md + ASSUMPTION_REGISTER.md:
problem & customer (name the ICP), market size (TAM/SAM/SOM with the math), positioning, business
model, pricing & willingness-to-pay, the 3–5 riskiest assumptions each with a cheap test THIS WEEK,
and written kill criteria. Use the deep-research skill for market sizing + competitor scan.
GATE (mine): GO only when the riskiest assumptions have a real-world test result and the Red-Team has
no unanswered High. NO-GO is a win — record the decision in PROJECT_STATE.md.
```

## Station V · Feature Discovery (lean start — domain + big-picture features → suggested set)
```
Run Feature Discovery for <PROJECT_NAME>. I'm giving you only the DOMAIN and these BIG-PICTURE
FEATURES: <…>. Research the market and propose the rest.
Lead Competitor Analyst + CPO; use the deep-research skill + live competitor sites/apps (Claude in
Chrome) + app-store listings & reviews. Produce:
  - V_VALIDATE/FEATURE_CATALOG.md — the exhaustive, categorized feature universe (the long list).
  - V_VALIDATE/competitor-<name>.md — one deep profile per rival (from COMPETITOR_PROFILE_TEMPLATE.md).
  - V_VALIDATE/FEATURE_BENCHMARK.md — a 0–5 quality score per feature (depth, not presence → leapfrog spots).
  - V_VALIDATE/COMPETITOR_FEATURE_MATRIX.md — top 5 competitors + substitutes, a feature teardown
    matrix, pricing/packaging, and 1–2★ review complaints (our openings).
  - V_VALIDATE/FEATURE_MAP.md — every feature classified table-stakes / differentiator / delighter
    (Kano + MoSCoW), with ⭐ features I DIDN'T mention but the market expects (each with evidence),
    scoped per surface (web / mobile / admin), and a proposed v1 scope.
Copy common patterns & table-stakes; never clone protected IP/brand (flag for Counsel). Red-Team
challenges scope creep.
GATE (mine): I scope-lock the v1 feature set before Station 1. Show me FEATURE_MAP.md.
```

## Station 1 — Knowledge extraction → FigJam
```
Run Station 1 (Knowledge extraction) for <PROJECT_NAME>.
Read every file in 00_INTAKE/. Extract six buckets: actors, entities, processes/flows, business
rules, codes & statuses, edge cases & open questions. Put them as labelled frames on a FigJam board
and mirror the layout in 01_KNOWLEDGE/KNOWLEDGE_INDEX.md (frame → contents → source doc). Add a
source manifest (each doc: what/language/authority). Flag every contradiction between docs as an
open question in PROJECT_STATE.md.
GATE: every intake doc is represented; every contradiction/unknown is logged. Show me the index.
```

## Station 2 — Diagrams
```
Run Station 2 (Diagrams) for <PROJECT_NAME> from 01_KNOWLEDGE/KNOWLEDGE_INDEX.md.
Produce, as Mermaid in 02_DIAGRAMS/: context.md (system + external actors/systems), flows.md (core
happy path + key variants), state.md (lifecycle for any object that moves through statuses), erd.md
(first-cut entities + relations).
GATE: every top-level flow has a diagram; every lifecycle status is reachable with defined
transitions (no orphan/invalid states). Show me the diagrams.
```

## Station 3 — Domain dictionary
```
Run Station 3 (Domain dictionary) for <PROJECT_NAME>.
Fill 03_DICTIONARY/DOMAIN_DICTIONARY.md: a bilingual glossary mapping term ↔ plain-language meaning
↔ official code/format ↔ source. Include all code tables VERBATIM (statuses, type codes, reference/
master-data lists). This is the naming authority for schema, API, UI, and the specialist skill.
GATE: every entity/field we plan to model has an entry; no undefined jargon remains in the diagrams.
```

## Station 4 — Data model (Prisma)
```
Run Station 4 (Data model) for <PROJECT_NAME> from the ERD + dictionary.
Write 04_DATA_MODEL/schema.prisma: one entity per real concept, real enums for code tables, explicit
relations, a tenant-scoping field if multi-tenant. Prefer ONE strategy-driven model over per-variant
tables when variants share a shape. Make reference data versioned ("as of" the business date).
Record decisions + open questions in 04_DATA_MODEL/SCHEMA_NOTES.md.
GATE: prisma validate passes; every dictionary entity is present; flag anything for specialist
sign-off. Do NOT invent fields the domain doesn't have — ask me if unsure.
```

## Station 5 — Wireframes
```
Run Station 5 (Wireframes) for <PROJECT_NAME>.
Build a 1-page HTML wireframe per surface (customer web app + admin portal + mobile app if mobile is
a surface) in 05_WIREFRAMES/. Each is ONE self-contained .html file: Tailwind via the Play CDN +
shadcn-style design tokens, PLAIN HTML ONLY — no React, no JSX, no TypeScript, no build step (vanilla
<script> for screen switching is fine). Start from 05_WIREFRAMES/_starter.html. For mobile use a
phone viewport (~390px), native nav/tab bar, and show offline/loading/push-permission/empty states.
Walk every core flow end-to-end using real dictionary terms and realistic sample data; i18n in mind.
GATE: every core flow clicks through; each major entity has create/list/detail screens; no flow
dead-ends; each file opens standalone in a browser. Show me each surface.
```

## Station 6 — SDLC roadmap spec
```
Run Station 6 (SDLC spec) for <PROJECT_NAME>.
Write 06_SDLC/SDLC_MASTER_SPEC.md: vision & users; architecture + NFRs; a phased plan (Phase 0→N,
each shippable with explicit EXIT CRITERIA, Phase 1 = the walking skeleton); Scrum process;
Definition of Ready / Definition of Done; an Epics→Stories outline; a traceability matrix
(epic → screen → schema → test); test strategy; risk register. If API-first, also write
06_SDLC/API_SPEC.md (endpoints, error shape, pagination, idempotency).
GATE: every phase has exit criteria; DoR/DoD are concrete and testable.
```

## Station 7 — Scrum backlog
```
Run Station 7 (Backlog) for <PROJECT_NAME> from the SDLC spec + schema + wireframes + dictionary.
Create 07_BACKLOG/: a README.md index, one folder per epic, and one story card per story using
07_BACKLOG/TEMPLATE.md — all 10 sections, with ≥3 Gherkin acceptance criteria (happy/edge/negative),
test cases, technical notes (schema models + wireframe screens + domain rules + edge cases),
dependencies, Definition of Done, links, and §10 Tasks in 4 lanes (FE-customer / FE-admin / BE-API /
QA). Add BUILD_ORDER.md (dependency order + walking-skeleton sequence).
GATE: every story has ≥3 Gherkin + a DoD and traces to a screen + a schema model; build order has no
forward dependencies.
```

## Station 8 — Review loop
```
Run Station 8 (Review) for <PROJECT_NAME>.
Dispatch the panel from agents/ROSTER.md (prefer parallel subagents); log each agent's findings
separately in 08_REVIEW/REVIEW_LOG.md (dated round), each with a severity (High/Med/Low):
  - CPO (PO+BA): value, scope, completeness, traceability (every story → screen → schema → test)
  - Domain Specialist: does this match how the real domain works? (load the <domain>-specialist)
  - CTO (Architect): schema/API/NFR soundness, idempotency, data integrity, security
  - QA: are the ACs testable? is the regression baseline green?
  - CFO / CMO / Counsel / Data: viability · positioning/demand · compliance/privacy · instrumentation
  - Red-Team: attack the gate; log a pre-mortem + challenges in REDTEAM_PREMORTEM.md
Then fix, re-run ONLY the affected upstream stations, bump the version, keep the baseline green, and
score this round into _EVAL/SCORECARD.md (lower of my score and the Red-Team's stands).
GATE: zero open High · no open Red-Team High · grade ≥ target · the panel + <domain>-specialist sign
off (record in PROJECT_STATE.md). If anything is still open, loop again.
```

## Station 9 — Domain-specialist skill
```
Run Station 9 (Specialist skill) for <PROJECT_NAME>.
From the dictionary + rules + checklists in stations 1–8, generate
09_SPECIALIST/<domain>-specialist/SKILL.md using 09_SPECIALIST/SPECIALIST_SKILL_TEMPLATE.md:
a persona expert (a 20-year practitioner who reviews requirements with the PO/BA) with work modes
(Review / Answer / Co-design / Define-rules), core domain knowledge (verbatim codes, statuses,
formulas, master data), checklists (validation + feature-readiness), the right questions to ask when
requirements are ambiguous, an output style, and an explicit "must-confirm / say-when-unsure" list.
Write a trigger-rich frontmatter description so it auto-activates on this domain. If I want an
installable package, zip the folder as <domain>-specialist.skill.
GATE: it answers the domain's top-10 questions from its own body and flags our known edge cases.
```

## Station E — Executive Summary (CEO one-pager, after 9 / before M)
```
Run Station E (Executive Summary) for <PROJECT_NAME>.
Lead CPO + CMO; attacked by Red-Team. Write E_EXEC_SUMMARY/EXECUTIVE_SUMMARY.html from the template:
ONE self-contained HTML page — Tailwind (CDN) + shadcn-style tokens, plain HTML (no React/TS), plus
Mermaid for the diagram — that a CEO reads in under two minutes. Pull real numbers from
PROJECT_STATE.md, 06_SDLC/SDLC_MASTER_SPEC.md, _EVAL/SCORECARD.md, M_MONETIZE/METRICS_TREE.md.
Make it HUMANIZED (lead with the story: problem → who → why now → what we built → the proof number →
the ask) and BEST-VISUALIZED (KPI cards · a roadmap timeline with phase status · a status board of
working/in-flight/risks & asks · one at-a-glance diagram). Invoke the product-management:
stakeholder-update + roadmap-update skills for the narrative/roadmap and frontend-design for the
visual craft. Every number must trace to a source file. Refresh this at every version bump.
GATE: a non-technical reader gets what/where/what-we-need in under two minutes; numbers trace to
sources; it prints clean. It's a required input to the M gate. Show me the page.
```

## Station M — Monetize / Launch (GO/HOLD, after the build)
```
Run Station M (Monetize/Launch) for <PROJECT_NAME> — the founder GO/HOLD gate.
Lead CMO + CFO + Sales; attacked by Red-Team. Fill M_MONETIZE/GTM_AND_MODEL.md + METRICS_TREE.md:
pricing tiers tied to the feature set, unit economics (CAC/LTV/payback/margin), a financial model
(revenue build · burn · runway), GTM (positioning · first-100-users channel · launch assets · sales
motion), the North-Star metric + KPI tree + event taxonomy, and the launch checklist. Use docx/pptx/
xlsx for the model and pitch one-pager.
GATE (mine): LAUNCH only when the checklist is green, unit economics are viable (CFO), compliance is
clear (Counsel), and the core flow is instrumented (Data). Record in PROJECT_STATE.md.
```
