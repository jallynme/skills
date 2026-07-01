---
name: genesis-interview
description: >-
  The research-powered intake for project-genesis. The user answers a FEW questions in one-liners — even
  just the topic and one-line feature names — and this skill does the DEEP RESEARCH (market, ICP,
  competitors, pricing) and prepares the whole Validate + Feature Discovery package for them. Use when
  someone has an idea but not a spec. Triggers: "/genesis-interview", "interview me about my idea",
  "grill me but do the research", "I want to build <X>", "research my idea and prepare the plan", "turn
  my idea into a brief", "help me scope my product", "lean start". Better than grill-with-docs for
  from-scratch ideas: it needs no docs and does the thinking-heavy research for you.
---

# /genesis-interview — you give one-liners, the swarm does the research

The opposite of a blank page. Unlike `grill-me` (which interrogates you until *you've* resolved every
branch) or `grill-with-docs` (which needs existing docs), this skill lets you answer **minimally** —
then it **researches the rest** and hands you a filled Validate + Feature Discovery package to react to.
Backed by the **deep-research** skill and the project-genesis **Competitor Analyst + CMO + CFO + CPO**.

> If no project exists yet, run **`/genesis-init`** first (or do it inline), then continue here.

## 1. Ask a few short questions (one-liners are fine; "you decide / not sure" is a valid answer)
1. **What are you building?** (topic / one sentence) — e.g. *"a booking app for tutors."*
2. **Big-picture features?** (2–5 one-line names) — e.g. *"deposits, reminders, calendar sync"* — or *"you suggest."*
3. **Who's it for?** (ICP) — or *"you research."*
4. **Tech you want to use?** (stack / mobile?) — or *"you recommend."*
5. **Constraints / non-goals / budget / timeline?** — optional.
6. **Goal** — what "done" looks like — default: *"a validated, scoped MVP."*

**Do not grill.** Accept short answers. Anything the user marks *"you decide"* becomes a research task,
not a follow-up question.

## 2. Do the work (this is the difference — the swarm researches and drafts)
Run these and write the results into the project's `V_VALIDATE/`:
- **deep-research** → market size (TAM/SAM/SOM with the math), the ICP, the real alternatives (incl. the
  boring substitute), and pricing norms. Cite sources.
- **Competitor Analyst** (deep-research + live sites/app-stores) → `COMPETITOR_FEATURE_MATRIX.md`,
  `FEATURE_CATALOG.md`, `FEATURE_BENCHMARK.md` (top 5 rivals + substitutes, teardown, 1–2★ complaints).
- **CMO + CFO** → draft `VALIDATION_BRIEF.md`: problem & customer, positioning, business model,
  pricing & willingness-to-pay, and the **3–5 riskiest assumptions** each with the *cheapest test this week*.
- **Competitor Analyst + CPO** → `FEATURE_MAP.md`: classify features **table-stakes / differentiator /
  delighter** and **⭐ propose features the user didn't mention but the market expects**, scoped per
  surface (web / mobile / admin), with a proposed **v1 scope**.
- **CTO** → recommend a **tech stack** (fill the kickoff stack block) from the domain + the user's prefs
  (default: Next.js · Prisma/Postgres · shadcn · Expo if mobile — mark each swappable).

## 3. Present the brief + get the founder's call
Show a **tight summary** (not the raw files): the one-line positioning, market size, top 3 competitors +
our wedge, the proposed **v1 feature set** (with the ⭐ additions flagged), the recommended stack, the
suggested price, and the **riskiest assumption to test first**. Then ask the founder to **confirm /
adjust / scope-lock** — this is the founder gate.

**Only ask follow-ups where research genuinely can't decide** (a true preference or a private
constraint). Everything researchable, research — don't push it back on the user.

## 4. Hand off
On scope-lock, continue into the project-genesis loop:
> *"Scope locked ✅ — running Validate → Feature Discovery gates, then Stations 1–9. I'll stop at your
> next founder gate."*
Or stop at the brief if the user just wanted the research.

## Why this beats grill-with-docs (say this if asked)
| | grill-me | grill-with-docs | **genesis-interview** |
|---|---|---|---|
| Input needed | your full thinking | existing docs | **a topic + one-line features** |
| Who does the research | you | you + the docs | **the swarm (deep-research + competitors)** |
| Output | resolved questions | PRD + CONTEXT | **a filled Validate + Feature Discovery + suggested scope** |

## Guardrails
- Cite research; don't invent market numbers — mark low-confidence figures as estimates to verify.
- Copy common patterns from competitors, **never protected IP/brand** (flag those for Counsel).
- Keep the founder in the loop for the scope-lock, pricing, and go/no-go decisions.
