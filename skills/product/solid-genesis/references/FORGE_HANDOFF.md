# FORGE handoff contract (v1)

Generate a file named `FORGE_HANDOFF.yaml` in the project root. Validate required keys before dispatch. Example:

```yaml
contract_version: 1
project:
  name: example
  repository: owner/repo
  genesis_state: PROJECT_STATE.md
  approved_scope_version: v1
  founder_go: false
research:
  evidence_index: V_VALIDATE/EVIDENCE_INDEX.md
  assumptions: V_VALIDATE/ASSUMPTIONS.md
  open_questions: OPEN_QUESTIONS.md
spec:
  dictionary: 03_DICTIONARY/DOMAIN_DICTIONARY.md
  schema: 04_DATA_MODEL/schema.prisma
  roadmap: 06_SDLC/SDLC_MASTER_SPEC.md
  backlog: 07_BACKLOG/README.md
  build_order: 07_BACKLOG/BUILD_ORDER.md
engineering:
  template: nextjs-saas
  runtime: node
  package_manager: pnpm
  verification:
    - pnpm install --frozen-lockfile
    - pnpm lint
    - pnpm typecheck
    - pnpm test
  max_parallel_coding_agents: 2
  require_pull_request: true
  require_ci: true
  require_human_release_approval: true
gates:
  critical_questions_open: 0
  red_team_high_findings_open: 0
  evidence_reviewed: false
  contract_reviewed: false
```

Handoff permitted only if `founder_go=true`, both review flags true, and both open-critical counts zero. Verify referenced files exist. FORGE Controller must additionally validate YAML against a machine schema and use idempotent job IDs; this document alone is not an executable validator.

### Research + grill decision table
- Answerable through sources → research, cite, no question.
- Unclear user taste/priority/tradeoff → targeted grill.
- High-risk unknown → block and escalate.
- Low-risk unknown → record assumption, experiment and owner.
- Conflicting source documents → ask authority owner, do not guess.

### Issue handoff
Each story must have stable local ID, title, acceptance criteria (happy/edge/negative), dependencies, evidence links, owner role, and verification commands. Keep a mapping to GitHub issue IDs; never silently overwrite approved scope.
