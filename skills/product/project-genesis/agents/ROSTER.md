# Agent Roster — your virtual C-suite (the team a solo founder doesn't have)

> For a **solo founder running on agentic AI**: you make the decisions; this roster does the work and
> argues with you. Each agent is a **persona brief** in this folder. Run an agent three ways:
> **(1)** main session "wears the hat" and plays it, **(2)** spawn it as a subagent (Task/Agent tool)
> with its brief as the prompt — do this to run several **in parallel**, **(3)** invoke the mapped
> **plugin skills** it's backed by (you already have these installed).
>
> The **Orchestrator (Chief of Staff)** runs the show: it reads `PROJECT_STATE.md`, dispatches the
> right agents at each station, collects their findings into `08_REVIEW/REVIEW_LOG.md`, and brings
> you only the decisions that are yours.

## Tiers
- **Always-on (core):** Orchestrator, Red-Team, CFO, CMO/Growth, CPO/Product, CTO/Architect,
  General Counsel/Compliance, Head of Data, QA/Test Lead, Competitor Analyst, + the per-project **Domain Specialist** (Station 9).
- **As-needed:** Head of Sales, Head of Design, Head of People. Spawn when the slice needs them.

## The roster
| Agent | Hat | File | Backed by (installed plugin) |
|---|---|---|---|
| Orchestrator | Chief of Staff / runs the loop | `orchestrator-chief-of-staff.md` | productivity, enterprise-search |
| Red-Team | Devil's advocate / pre-mortem / kill-the-idea | `red-team-devils-advocate.md` | operations:risk-assessment |
| CFO | Unit economics, financial model, runway | `cfo-finance.md` | **finance** |
| CMO / Growth | Positioning, GTM, channels, content | `cmo-growth.md` | **marketing** |
| Competitor Analyst | Feature teardown, copycat/differentiate, feature suggestion | `competitor-analyst.md` | **deep-research**, marketing:competitive-brief, sales:competitive-intelligence, Claude in Chrome |
| Head of Sales | Pipeline, motion, forecast | `head-of-sales.md` | **sales** |
| General Counsel | Legal, compliance, privacy (GDPR/CCPA), contracts | `general-counsel-compliance.md` | **legal**, operations:compliance-tracking |
| CTO / Architect | Architecture, scale, **security/infra** | `cto-architect.md` | **engineering** |
| CPO / Product | PRD, prioritization, roadmap, metrics review | `cpo-product.md` | **product-management** |
| Head of Design | UX, research, a11y | `head-of-design.md` | **design** |
| Head of Data | North-Star/KPI tree, instrumentation, analysis | `head-of-data.md` | **data** |
| QA / Test Lead | Testable ACs, regression baseline, test strategy | `qa-test-lead.md` | **engineering**, data:validate-data |
| Head of People | Hiring plan, org design (later-stage) | `head-of-people.md` | **human-resources** |
| Domain Specialist | The project's domain expert (the generated `<domain>-specialist`) | `../template/09_SPECIALIST/SPECIALIST_SKILL_TEMPLATE.md` | (generated per project) |

## Classic role ↔ agent (so the Scrum vocabulary in the story cards/DoD maps to the swarm)
The story cards, DoR/DoD, and review log use classic team roles. Here's how they map onto the roster:

| Classic role (in templates) | Agent that plays it |
|---|---|
| Product Owner (PO) | CPO / Product |
| Business Analyst (BA) | CPO / Product (+ Domain Specialist for domain accuracy) |
| Architect | CTO / Architect |
| QA | QA / Test Lead |
| Designer | Head of Design |
| Domain expert | the generated `<domain>-specialist` |

> The S-grade panel = the classic roles **plus** the founder-level agents (CFO, CMO, Counsel, Data)
> and the **Red-Team** — because a venture needs more than a build review.

## Dispatch map — which agents work which station
> The Orchestrator auto-assembles this panel per station. "Lead" drives the artifact; "Review"
> critiques it; **Red-Team hits every gate.**

| Station | Lead agent(s) | Review panel | Gate owner |
|---|---|---|---|
| **V — Validate** | CMO, CFO | Red-Team, CPO, Counsel, Domain Specialist | **You (go/no-go)** |
| **V — Feature Discovery** | Competitor Analyst, CPO | Red-Team (scope), CMO, Domain Specialist | **You (scope lock)** |
| 1 Knowledge | CPO/BA | Domain Specialist, CTO | CPO |
| 2 Diagrams | CTO | Domain Specialist | CTO |
| 3 Dictionary | CPO/BA | Domain Specialist | Domain Specialist |
| 4 Data model | CTO | Domain Specialist, Counsel (privacy) | CTO |
| 5 Wireframes | Head of Design | CPO, Domain Specialist | Head of Design |
| 6 SDLC spec | CTO, CPO | CFO (cost), QA | CPO |
| 7 Backlog | CPO/BA | CTO, QA, Domain Specialist | CPO |
| 8 Review loop | Orchestrator | **whole panel + Red-Team** | **panel sign-off** |
| 9 Specialist skill | Domain Specialist | CPO | Domain Specialist |
| **M — Monetize/Launch** | CMO, CFO, Sales | Red-Team, Counsel, Head of Data | **You (launch)** |

## How to spawn the panel (agentic, in this environment)
1. **Parallel review (fastest):** the Orchestrator launches the station's review agents as
   **separate subagents in one batch** (Task/Agent tool), each given its brief + the artifact to
   critique, each returning findings tagged by severity. Collate into `REVIEW_LOG.md`.
2. **Skill-backed depth:** when an agent needs real method (a financial model, a compliance check,
   a competitive brief), it **invokes its mapped plugin skill** rather than improvising.
3. **Solo-mode (no subagents):** the main session plays each role in turn, writing each agent's
   findings under its own heading so the panel stays honest.

**Every agent runs a ReAct micro-loop** — Reason (goal + expected result + gate) → Act (one step) →
Observe (verify vs. gate + invariants) → decide — and appends a trace line. No silent turns. The
execution substrate is in `../LOOP_ENGINEERING.md`.

> Rule of the swarm: **agents may agree, but the Red-Team must always try to break it.** A gate with
> no open Red-Team challenge hasn't been reviewed — it's been rubber-stamped.
