# Grade Rubric — what "Grade S" actually means

> "Grade S" must be **measured, not asserted.** Every artifact and the venture overall is scored on
> this rubric each review round. The score is a gate: you don't advance below the target grade. The
> **Red-Team** scores adversarially — if the founder scores S and the Red-Team scores B, the lower
> stands until the gap is closed.

## The scale
| Grade | Meaning | Bar |
|---|---|---|
| **S** | Exceptional / investable | Meets every A criterion **plus**: validated with real-world evidence (not opinion), red-team challenges all answered with data, unit economics proven viable, and it would survive a skeptical expert/investor review. |
| **A** | Strong / ship-ready | Complete, internally consistent, traceable end-to-end, testable, compliant; minor polish only. |
| **B** | Solid / gaps remain | Mostly complete; some untested assumptions or missing edge cases; needs another loop. |
| **C** | Draft | Exists but thin; major gaps, unvalidated, or inconsistent across artifacts. |
| **D/F** | Not ready | Missing, wrong, or contradicts the source/domain. |

## Scoring dimensions (score each 0–5; S needs ~4.5+ avg AND no dimension below 4)
| # | Dimension | What S looks like |
|---|---|---|
| 1 | **Validated** | Riskiest assumptions tested against real users/data; kill criteria set; not an echo chamber. |
| 2 | **Complete** | Every station's gate met; no orphan flows, fields, statuses, or stories. |
| 3 | **Consistent** | Dictionary ↔ schema ↔ wireframe ↔ backlog all use the same names and rules. |
| 4 | **Traceable** | Every story → screen → schema model → test → metric; every assumption → experiment. |
| 5 | **Domain-correct** | Hard rules captured verbatim; Domain Specialist signs off; no "simplified" rules. |
| 6 | **Viable** | Unit economics work (LTV:CAC ≥3, payback < runway); pricing tied to value. |
| 7 | **Compliant & safe** | Legal/privacy/security gates passed; PII mapped; claims substantiated. |
| 8 | **Measurable** | North Star + event taxonomy defined; core flow ships instrumented. |
| 9 | **Resilient** | Red-Team's strongest attacks answered with evidence; risks have mitigations. |
| 10 | **Buildable** | Architecture sound, idempotent, testable; walking skeleton is truly thin. |

## How to use it
1. Each review round (Station 8), the panel scores the dimensions relevant to what changed.
2. Record scores in `_EVAL/SCORECARD.md`; the **lowest credible score** per dimension wins (Red-Team
   bias toward rigor).
3. The Orchestrator won't pass a gate below its **target grade** (default: **A to advance a phase, S to
   launch or fundraise**).
4. Below target → the low dimensions become gaps in `PROJECT_STATE.md`, and you loop.

> S is rare and that's the point. Most rounds should end at B→A; S is reserved for "I'd put my money
> / reputation on this." If everything is always S on the first try, your Red-Team is too soft.
