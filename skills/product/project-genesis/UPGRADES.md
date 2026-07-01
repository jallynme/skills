# Project Genesis Kit — Review & Upgrade Backlog

> A self-review of the framework, **dogfooding the kit's own grade rubric + backlog format.** The kit
> covers the full venture arc (Validate → Feature Discovery → Build 1–9 → Monetize) with an agent
> swarm, a graded review loop, a Red-Team, and an engineered ReAct/Goal Loop. This is the honest list
> of what would make it better — prioritized Now / Next / Later by impact × effort.

## 1. Self-grade (against `GRADE_RUBRIC.md`)
| Dimension | Grade | Note |
|---|---|---|
| Validated | A | Validate gate + assumption register + Red-Team are strong. |
| Complete | A | Full arc, bookends, feature discovery, mobile. |
| Consistent | A | Cross-refs resolve; placeholders normalized; censor holds. |
| Traceable | A− | Story→screen→schema→test is there; **assumption→experiment→metric** link could be tighter. |
| Domain-correct | A | Per-project `<domain>-specialist` + dictionary authority. |
| Viable | B+ | CFO + unit economics present; **RICE/ICE scoring** missing. |
| Compliant & safe | B+ | Counsel + copycat IP guardrail; **a11y/security/i18n as artifacts** missing. |
| Measurable | A− | Metric tree + event taxonomy; **post-launch experiment loop** thin. |
| Resilient | A | Red-Team + pre-mortem + risk awareness baked in. |
| Buildable | B+ | Specs are strong; **no spec→starter-code bridge**, no worked example. |

**Overall: A−.** Complete and coherent *on paper*. The gaps are **automation, a worked example, and
the post-launch half of the loop** — not the framework's logic.

## 2. What's strong (don't break these)
The venture arc + founder bookends · the agent roster + always-on Red-Team · the graded review loop ·
the ReAct/Goal-Loop substrate · competitor + feature discovery · mobile as a first-class surface ·
the censor (no project fingerprints) · `<...>` placeholder discipline.

## 3. Upgrade backlog

### NOW — ✅ DONE (shipped)
1. ✅ **Worked example / golden sample** → `examples/sample-booking-saas/` — a filled appointment-booking
   run (state, validation, feature map, dictionary, schema, a story card) showing "what good looks like."
2. ✅ **Bootstrap + `.skill` packaging** → `scripts/bootstrap.sh` (one-command scaffold), `scripts/package.sh`,
   and `dist/project-genesis.skill` + `dist/project-genesis-kit.zip`.
3. ✅ **Kit linter** → `scripts/lint.sh` (fingerprints · `<>` placeholder consistency · relative-link
   resolution · roster completeness). Passing.
4. ✅ **Live dashboard** → `template/_EVAL/dashboard.html` — open in a browser; paste `PROJECT_STATE.md`
   → station progress, grade trend, gaps-by-severity, and the latest loop trace.

### NEXT — high impact, more effort
5. **RICE/ICE scoring on features.** Add a scoring formula to `FEATURE_MAP` / `FEATURE_CATALOG` so
   prioritization is quantified, not just MoSCoW/Kano. **Impact M · Effort S.**
6. **Standalone Risk Register.** A living risk register tied to the assumption register + Red-Team
   (today risk lives only in the SDLC stub + pre-mortem). **Impact M · Effort S.**
7. **Post-launch growth loop.** A `GROWTH/` experiment backlog (activation/retention/A-B experiments)
   so the Goal Loop continues *past* M·Monetize instead of ending at launch. **Impact H · Effort M.**
8. **Concrete checklists as artifacts.** a11y, security/privacy, and i18n checklists as reusable
   templates (today they're one-line mentions). **Impact M · Effort S.**
9. **Regression-baseline template.** A real template for the validation test-data + expected-results
   baseline the review loop keeps "green." **Impact M · Effort S.**

### LATER — strategic / bigger bets
10. **Cross-project memory / pattern library.** A `LEARNINGS.md` that accrues reusable patterns across
    projects + a library of the domain specialists you generate. Makes the kit compound. **Impact H · Effort M.**
11. **Spec → starter-code scaffold.** A Phase-0 prompt that turns the spec into actual starter
    code/config for the chosen stack — bridges the gap between this (a spec kit) and a running app. **Impact H · Effort L.**
12. **Solo+AI estimation model.** Reframe story points as **agent-turns + founder-decisions** rather
    than human-days — the human-day unit is wrong for this operating model. **Impact M · Effort M.**
13. **Scheduled cadence.** Wire the Monday status + the weekly review round as scheduled tasks. **Impact M · Effort S.**
14. **Competitor auto-refresh.** Pull app-store reviews / pricing pages on a schedule into the
    `competitor-<name>.md` profiles, so the teardown stays current. **Impact M · Effort M.**
15. **Kit versioning + CHANGELOG.** Tag the kit (`v1.0`) and keep a `CHANGELOG.md` so upgrades are tracked. **Impact L · Effort S.**

## 4. Recommended next batch
NOW (1–4) **shipped ✅** — the kit is now usable end-to-end in one command. Next up: **NEXT (5–9)** —
RICE/ICE feature scoring, a standalone risk register, the **post-launch growth/experiment loop** (the
biggest remaining hole — the loop currently ends at launch), a11y/security/i18n checklists, and a
regression-baseline template.

> This file is itself a backlog — treat it as the kit's own `07_BACKLOG`, run it through the Goal Loop,
> and check items off as they ship.
