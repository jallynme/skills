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
