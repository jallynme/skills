---
name: solid-genesis
description: Research-first product discovery, targeted grilling, validated specifications, and machine-readable engineering handoff. Use for new products, feature discovery, or turning ambiguous business documents into build-ready projects.
---
# SOLID Genesis — Research to Engineering

SOLID = Source-grounded, Outcome-driven, Lean questioning, Iterative verification, Delivery-ready.

This skill is the entrypoint and coordination layer for the existing project-genesis pipeline. Preserve the existing nine stations, validation gates, domain dictionary, specialist generation, and Red-Team review. Do not replace them with generic prompts.

## Operating sequence
1. **Intake:** accept a one-line idea, existing documents, or meeting notes. Record source authority, owner, date, and provenance.
2. **Research first:** invoke `genesis-interview` to investigate ICP, alternatives, competitors, pricing, regulations and product patterns. Record sources with URLs, access dates, evidence strength, and geography. Separate fact, inference and assumption. Never fabricate research.
3. **Targeted grill:** use `grill-with-docs` when authoritative documentation exists; otherwise use `grill-me` for unresolved strategic choices. Ask no more than three high-impact questions per round. First research questions answerable from public sources. Store unanswered questions in `OPEN_QUESTIONS.md` with owner, impact, blocker status and proposed experiment.
4. **Validate:** run project-genesis V Validate and Feature Discovery, Red-Team challenge, assumption register, GO/NO-GO. A model's agreement is not external validation; founder owns GO.
5. **Specify:** run project-genesis Stations 1–9 in order, retaining original artifact contracts, bilingual vocabulary, diagrams, schema, wireframes, SDLC, backlog, review loop and domain specialist. Re-run affected stations after changes.
6. **Quality gate:** require traceability from evidence → requirement → decision → screen/API/schema → acceptance test. Record reproducible verification and unresolved risk. Do not use subjective grade alone as proof.
7. **Handoff:** produce `FORGE_HANDOFF.yaml` using the contract in `references/FORGE_HANDOFF.md`. Handoff is blocked if strategic questions, unverified legal requirements, or critical contradictions remain. A nonblocking question can remain open with an owner.
8. **Continuous feedback:** engineering discoveries become change requests; revise impacted artifacts and acceptance criteria before dispatching additional work.

## Human decision boundaries
Escalate founder GO/NO-GO, strategic scope, pricing, legal risk, external spending, production release and material architecture changes. Agents may autonomously research, draft, critique, and revise reversible artifacts within approved scope.

## Always-on constraints
This skill is a workflow, not a durable scheduler. FORGE Controller owns persisted jobs, leases, retries, rate limits, budgets, crash recovery and dispatch to ORCA. Never claim that installing this skill alone creates a 24/7 service. Worktrees are not security boundaries. Coding agents need sandboxed execution and scoped credentials.

## Integrations
- Existing skills: `genesis-init`, `genesis-interview`, `project-genesis`.
- Optional interview skills: `grill-me`, `grill-with-docs` if installed; otherwise follow their questioning method without claiming execution.
- GitHub Projects: synced backlog after approval; GitHub issue IDs mapped to local story IDs.
- FORGE / ORCA: consume handoff contract; don't assume undocumented ORCA commands.

## Exit criteria
A complete handoff has source-backed findings, an approved scope, no critical unresolved blockers, domain artifacts, prioritized stories with testable AC, build order without dependency cycles, and a bootstrap plan with runnable verification commands.
