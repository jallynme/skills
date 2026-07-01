# Solo Founder × Agentic AI — operating guide (the S-grade edition)

> How to run a startup as **one human + a swarm of AI agents**. This guide sits on top of the
> Project Genesis pipeline and turns it from a spec factory into a **venture operating system**.
>
> The premise: with agentic AI, **execution is nearly free** — building, speccing, drafting, analyzing
> all get done by agents. So the founder's job collapses to the three things agents can't own:
> **judgment, taste, and accountability.** This kit is designed around that shift.

---

## 1. The operating model — you decide, the swarm executes

```
   YOU (founder)                THE SWARM (agents)
   ──────────────               ──────────────────
   • set direction      ──▶     • Orchestrator runs the loop & assigns work
   • make founder-gate          • C-suite agents lead/review each station
     decisions          ◀──     • Red-Team attacks every gate
   • supply taste &             • Domain Specialist guards correctness
     real-world signal          • plugin skills do the deep work (finance, legal, …)
   • talk to customers  ──▶     • agents turn it into artifacts, scored A–S
```

Your week is no longer "do the work." It's: **point the swarm, answer the decisions only you can
make, bring back real-world signal (customer conversations) the agents can't get themselves, and
refuse to ship below grade.** Everything else is delegated.

## 2. The venture arc (what the kit now covers end-to-end)

```
  V · VALIDATE         →   STATIONS 1–9 (BUILD-SPEC)        →   M · MONETIZE / LAUNCH
  should this exist?       the original pipeline                turn it into a business
  ────────────────         ─────────────────────────            ─────────────────────
  problem / customer       knowledge → diagrams → dict →         pricing tiers · unit econ
  market · positioning     schema → wireframes → SDLC →          financial model · GTM
  business model · WTP      backlog → review → specialist        metrics tree · launch
  assumptions · GO/NO-GO                                         LAUNCH decision
        │                            │                                   │
        └──────────────── loop: review · red-team · grade A–S ───────────┘
                          again & again until clean & graded
```

The original kit was the middle third. The two bookends — **Validate** (don't build the wrong thing)
and **Monetize** (don't ship into silence) — are where most solo founders actually die. They're now
first-class, with their own gates **you** own.

## 2.5 Lean start — you give the domain, the swarm proposes the features

You don't need a finished spec to begin. The **minimum input is a business domain + a few big-picture
features.** At **V · Feature Discovery** the **Competitor Analyst + CPO** run `deep-research`, walk
live competitor sites/apps (Claude in Chrome), and mine app-store reviews, then hand you a
**`FEATURE_MAP`** — every feature classified table-stakes / differentiator / delighter (Kano +
MoSCoW), including ⭐ features you *didn't* ask for but the market clearly expects, each scoped per
surface (web / mobile / admin). You **scope-lock** the v1 set; it flows into the phase plan (Station 6)
and the backlog (Station 7). The loop is: *tell me the domain → get a researched, prioritized feature
set to react to.*

> **Copycat, done right:** replicate common patterns and table-stakes (logins, search, export —
> conventions, copy freely); never clone a competitor's protected IP, brand, copy, or patented
> mechanism (the kit flags those for Counsel). A clone with no wedge loses to the incumbent —
> **parity + a differentiated wedge + one leapfrog delighter** wins.

## 3. The decision gates that are YOURS (everything else is the swarm's)

Agents resolve everything inside their mandate. They escalate to you **only** when a decision is
**irreversible, expensive, or strategic**. Keep this list short on purpose — it's your real job:

| Gate | The decision | Why it's yours |
|---|---|---|
| **Validate → GO/NO-GO** | build this, pivot, or kill | irreversible use of your time |
| **Pricing** | what to charge / the model | strategic, hard to change later |
| **Scope of the walking skeleton** | what's in v1 vs. cut | sets the whole timeline |
| **Compliance/legal red flags** | proceed, mitigate, or stop | bet-the-company risk |
| **Launch → GO/HOLD** | ship it now or not | reputation + revenue |
| **Spend / hire** | money out the door | runway |
| **Anything the Red-Team rates High and can't be cleared** | overrule with evidence or change course | your accountability |

Everything else — naming, schema shape, story breakdown, copy, diagrams, refactors — **don't bring it
to yourself.** If you find the swarm asking you trivia, tighten the agent briefs.

## 4. Running the swarm (agentic mechanics)

- **Default:** you talk to the **Orchestrator** (`agents/orchestrator-chief-of-staff.md`). It reads
  `PROJECT_STATE.md`, picks the next move, assembles the station's panel from `agents/ROSTER.md`, and
  reports back a 5-line status + your open decisions.
- **Parallel review:** for a review round, the Orchestrator spawns the panel as **separate subagents
  in one batch** (Task/Agent tool), each with its brief + the artifact, each returning findings by
  severity. This is how one founder gets a full design review in minutes.
- **Depth on demand:** when an agent needs real method, it **invokes its mapped plugin skill** (CFO →
  `finance`, CMO → `marketing`, Counsel → `legal`, CTO → `engineering`, Data → `data`, …) instead of
  improvising.
- **Always-on adversary:** the **Red-Team** hits every gate. A gate with no Red-Team challenge is not
  reviewed.
- **Solo-mode fallback:** no subagents? The main session plays each role in turn, writing each agent's
  findings under its own heading so the panel stays honest.

## 5. The anti-echo-chamber doctrine (the solo founder's #1 risk)

A solo founder + an agreeable AI is a machine for **confident self-delusion**. Three hard guardrails:

1. **The Red-Team is paid to break it** and must produce real challenges at every gate.
2. **The Grade Rubric is scored adversarially** — the *lower* of your score and the Red-Team's stands
   (`GRADE_RUBRIC.md`). If everything is S on the first try, your Red-Team is too soft.
3. **The Assumption Register demands evidence** — "validated" means a real-world test result, not the
   AI agreeing with you. Customer contact is the one input you can't delegate; the kit keeps pushing
   you toward it.

## 6. A week in the life (cadence)

| When | Do | Driven by |
|---|---|---|
| **Mon** | Orchestrator: status + this week's one goal + open decisions | you decide the goal |
| **Daily** | run the next slice through its stations; agents produce, Red-Team attacks | swarm |
| **Daily (your part)** | answer founder-gate decisions; talk to ≥1 real customer | you |
| **Wed/Fri** | review round: panel + Red-Team + score the rubric; loop | swarm → you sign |
| **End of phase** | grade gate (A to advance); optional engineering handoff pack | you |
> Optional: schedule the Monday status and the review rounds so they run on their own and hand you a
> ready briefing (ask for a scheduled task).

## 7. Improving the kit itself (meta-loop)

The workflow should get better each project. Track these in `PROJECT_STATE.md`:
- **Loop convergence:** how many review rounds to reach grade A? (fewer over time = better briefs)
- **Grade trend:** is the scorecard climbing round over round? (flat = thrashing)
- **Escape defects:** what got past the panel and bit you later? → add a rubric check or an agent
  question so it can't recur (this is your regression baseline for *process*).
- **Agent gaps:** a decision you had to make that an agent should have owned → tighten that brief.
- **New specialist:** a recurring domain → graduate it into its own `agents/<role>.md` or a skill.

## 8. Start here
1. **Validate first.** New folder → put what you know in `00_INTAKE/` → run **V · Validate** before
   anything else. NO-GO is a win; you just saved months.
2. On GO, run the **9 stations** with the panel; loop with the Red-Team and the rubric until grade A.
3. Run **M · Monetize/Launch**; don't launch below grade S on Validated/Viable/Compliant/Measurable.
4. Keep the **Domain Specialist** and **Red-Team** on every future pass.

> Reminders: this kit can't *install* skills from a chat session — add agents/specialists as skills
> from **Settings → Capabilities** (or zip a folder as `.skill`). And no AI agent replaces a real
> lawyer/accountant on bet-the-company calls — the Counsel/CFO agents flag; you escalate to a human.
