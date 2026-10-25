# SOLID Genesis — Convergence Review Protocol

Review as many rounds as evidence requires; **20+ rounds are acceptable**. Never claim quality solely from the number of rounds or a self-awarded A/S grade. Reviews are bounded by budget/time and must make measurable progress.

## Scope and units
Review each feature slice independently, then review the whole project across slices. A slice is a vertical business capability with traceable source requirements, entities, flows, screens, APIs, stories and tests. Never wait for all project features to be written before reviewing the first slice.

## Mandatory passes for each slice
1. **Research / domain:** source provenance, jurisdictions, contradictory rules, unknowns and assumptions.
2. **Feature inventory:** competitor table stakes, user roles, CRUD and non-CRUD operations, edge cases, permissions and integrations.
3. **Architecture / data:** domain invariants, tenant isolation, lifecycle/state transitions, schema constraints, migrations and API contracts.
4. **UX / workflow:** each persona's happy, negative, recovery and empty-state paths; responsive and accessibility considerations.
5. **Backlog decomposition:** each approved capability maps to an Epic, Stories, implementable tasks, dependencies, acceptance criteria and test cases.
6. **Adversarial review:** independent Red-Team, QA and domain specialist challenge assumptions, security, missing features and testability.
7. **Cross-artifact reconciliation:** requirement ↔ epic ↔ story ↔ card details ↔ UI/API/schema ↔ tests. Validate link integrity and detect duplicates.
8. **Regression:** recheck affected upstream/downstream artifacts after each fix; keep previously closed findings closed.

## Card-level Definition of Ready
Every story card must contain:
- Stable story ID, parent Epic, user persona, user value, explicit in/out scope.
- Source requirements and evidence links, relevant domain terms and business rules.
- Dependencies, affected UI/API/schema components, authorization and tenant rules.
- Acceptance criteria: happy path, edge case and negative path in testable form.
- Test cases with expected results; observability and migration needs when relevant.
- FE, BE, QA task breakdown or explicit N/A rationale.
- Open questions and blocking status, estimated complexity, owner and Definition of Done.

Reject cards containing only a title, vague implementation instructions or untestable AC.

## Finding ledger and convergence
Maintain `08_REVIEW/FINDINGS.json` with unique IDs, fingerprint, slice, severity (critical/high/medium/low), category, artifact refs, evidence, proposed fix, status, first_seen_round, last_seen_round, resolved_round, regression_test, and reviewer. Deduplicate by fingerprint and preserve history; do not erase closed findings.

At every round:
1. Snapshot artifacts and compute traceability/coverage counts.
2. Run relevant independent review passes, recording **new**, **reopened**, **resolved** and **still open** findings.
3. Prioritize critical/high and blockers, apply minimal changes, then rerun affected stations and regression checks.
4. Record review evidence and deltas in `08_REVIEW/CONVERGENCE_LOG.md`.
5. If new material findings appear, continue; do not declare convergence.
6. After two consecutive independent review rounds with **zero new material findings, zero reopened material findings, zero open critical/high, no blocking open questions, 100% required card fields, 100% approved requirement-to-story coverage, and all deterministic checks green**, mark `READY_FOR_FOUNDER_REVIEW`. This is not a claim of zero defects.
7. Founder approval remains mandatory for strategic scope and production release.

## Loop guardrails
- Default max **30 rounds per slice**, configurable. At the cap, pause and escalate with unresolved findings and a recommended next action; **never silently pass**.
- If 3 rounds in a row show no reduction in weighted unresolved findings and no new evidence, switch review strategy: narrower slice, different reviewer/model, source inspection, or targeted founder question.
- A finding cannot be closed by assertion; require changed artifact and linked verification.
- If review rounds repeatedly rediscover the same finding, treat it as a process defect and add a deterministic validator.
- Stop for quota/budget/power issues; persist state and resume later. Do not treat interruption as acceptance.
- Separate reviewers from authors where feasible; self-review alone cannot satisfy the independent-review condition.

## Metrics per round
Track: required card-field coverage; approved requirement-to-story coverage; traceability link health; open critical/high; new/reopened findings; weighted unresolved finding count; regression failures; cost and time. Never fabricate 100% coverage: denominator must come from an approved requirement inventory.

## Example progression
Rounds 1–5 discover missing domain flows and scope.
Rounds 6–10 reconcile schema, API, UX and security.
Rounds 11–18 complete Epic/Story/Card details and tests.
Rounds 19–22 verify traceability, regression and independent review.
These are illustrative only, not a mandatory fixed sequence.

## FORGE handoff
No engineering dispatch for a slice until the convergence gate is met and approved. Ready slices can be handed off while other slices remain under research, with dependencies enforced by the Controller.


## Mandatory domain specialist from the first review
Before the first substantive review, load an existing domain-specialist skill or generate a **provisional** specialist from authoritative sources, known terminology, jurisdiction, and source-linked rules. Do not wait for Station 9. The provisional specialist must maintain a knowledge/evidence ledger and explicit unknowns. At Station 9, consolidate and version the specialist from the reviewed artifacts. Never present model role-play as certified professional advice.

Every review round requires an independent domain-specialist assessment with recorded findings, citations, and sign-off status. If specialist evidence is inadequate, mark `BLOCKED_DOMAIN_EVIDENCE` and research or escalate rather than approving.

## Mandatory fix-and-score transaction for each review round
A round is not complete merely because reviewers reported issues. Execute this transaction:
1. Capture a baseline snapshot and rubric score for the approved scope; freeze scoring weights and denominators for the round.
2. Discover, deduplicate, classify and assign findings, including new contradictions introduced by fixes.
3. Produce a remediation plan for **every actionable finding**. Critical/high findings must be fixed and verified before advancement; medium/low findings must be fixed or explicitly deferred with rationale, owner and deadline. Do not silently mark findings resolved.
4. Apply changes to the source artifact and all impacted downstream artifacts; update stories, cards, domain specialist and tests as needed.
5. Independently verify each closure against concrete evidence; run regression and traceability checks. Only then set `resolved_verified`.
6. Re-score all rubric dimensions using the same evidence-based rubric, record previous/current/delta, and attach evidence links.
7. Mark `ROUND_ACCEPTED` only when verified remediation made measurable progress, no new critical/high regression remains, and the comparable weighted score increased OR the verified weighted gap debt decreased without score regression.
8. If score falls or debt increases because genuine new evidence reveals hidden risk, mark `ROUND_REWORK`, preserve the honest score, fix the newly exposed gaps, and repeat. Never inflate scores or delete findings to manufacture improvement.
9. If neither score nor verified gap debt improves, mark `STALLED`; switch reviewer, research source, or scope decomposition and escalate according to loop guardrails.

A score can legitimately decline after discovering new evidence. The **accepted-round trend** should improve; the raw score history must remain immutable. Do not promise monotonic scores by manipulating the rubric.

### Scorecard contract
Record in `08_REVIEW/ROUND_SCORECARD.json` per round: `round_id`, `scope_version`, `rubric_version`, `domain_specialist_version`, `score_before`, `score_after`, `score_delta`, `weighted_gap_debt_before`, `weighted_gap_debt_after`, `findings_new`, `findings_verified_closed`, `findings_reopened`, `regressions`, `evidence_links`, `specialist_signoff`, and `decision`. Preserve history across rounds.

Use stable severity weights (critical=8, high=5, medium=2, low=1) for **gap debt**, counting all unresolved findings. Changes to severity or scope require justification and a separately reported normalized comparison. Rubric scores are not substitutes for coverage, evidence or human approval.

### Review ownership
Author/implementer fixes; domain specialist validates domain semantics; architect validates data and cross-module invariants; QA verifies executable AC/test coverage; Red-Team challenges closure; controller records the transaction. One model playing multiple personas is not independent verification.

### Completion gate additions
Require a versioned specialist skill, domain-specialist signoff with evidence, no unresolved critical/high findings, closure evidence for every resolved finding, no critical regression, complete required story-card fields, traceability and deterministic checks, and two consecutive clean independent review rounds. Medium/low exceptions need documented founder approval before engineering handoff.


## Retired veteran domain specialist persona (30–40 years)
Every project MUST appoint a **Veteran Domain Specialist** persona: a retired or late-career practitioner archetype with **30–40 years of simulated career experience** in the project's specific industry. This is an AI role specification, **not** a claim of real employment history, qualifications, licenses, personal experience, or verified human expertise. Name the persona's career arc (frontline operations → management → senior governance → retirement), countries/jurisdictions, subdomain specialties, failure patterns, legacy practices and modern regulations to investigate. Never invent actual employment credentials or firsthand anecdotes as evidence.

The specialist must challenge:
- Real-world operational exceptions, tacit workflows, cross-team handoffs, legacy data and compliance changes.
- Business terminology and jurisdiction-specific interpretations.
- What junior practitioners overlook; common costly mistakes; auditability and edge-case recovery.
- Whether Epic/Story/Card details are implementable and reflect authentic user workflows.

For each substantive assertion, tag `verified_source`, `reasoned_inference`, or `requires_human_confirmation`, with source links and dates where available. If authoritative evidence is absent, research and escalate. High-risk legal/customs/tax/financial conclusions require a qualified human professional's review where applicable.

Each review round must include the Veteran Specialist's written critique, gap IDs, proposed fixes and evidence-backed signoff. The persona may be synthesized by AI, but independent verification must come from different evidence/tests/review processes rather than fictional seniority. Version the specialist skill as domain evidence evolves.
