# <PROJECT_NAME> — Master SDLC Spec, Backlog & Delivery Plan
### Product spec · Implementation plan (Phase 0→N) · Epics → Stories → Acceptance Criteria → Test Cases · Scrum

> **Delivery source of truth.** Derived from stations 1–5. Version: v1 · Updated: <date>.

## 1. How to use this doc (Scrum)
<how the team reads this: phases → sprints, where stories live (`07_BACKLOG/`), the gates>

## 2. Vision · goals · users
- **Vision:** <one paragraph>
- **Primary users / personas:** <list with the job each does>
- **Success metrics:** <how we'll know it works>

## 3. Architecture (recap) + NFRs
- **Surfaces:** <e.g. customer web app + admin portal + mobile app> · **Stack:** <Next.js / Prisma / Postgres / queue / worker; mobile: React Native/Expo or Flutter — or your swaps>
- **Key patterns:** server-authoritative validation · vertical slices · idempotency/outbox on async
  jobs · versioned reference data · audit-everything · multi-tenant isolation.
- **NFRs:** performance <…> · security <…> · privacy/PII <…> · i18n <languages> · a11y <level> ·
  observability <log/metric/trace>.
- **Mobile NFRs (if a surface):** offline/sync · push notifications · app-store review + OTA updates ·
  deep links · device/OS matrix · battery & flaky-network handling · biometric auth.

## 4. Implementation plan (Phase 0 → N) — each phase SHIPPABLE with exit criteria
| Phase | Theme | Key epics | **Exit criteria (the real gate)** |
|---|---|---|---|
| 0 | Foundations | auth/RBAC/audit · reference-sync · observability · CI/CD | <thin platform stands; health visible> |
| 1 | **Walking skeleton** | <core object end-to-end> | **<thinnest path runs end-to-end>** |
| 2 | <depth> | | <…> |
| 3 | <variant/type> | | <…> |
| 4 | <amend/compliance> | | <…> |
| 5 | <AI / platform> | | <…> |
| 6 | <scale / enterprise> | | <…> |

> **Walking skeleton first** (Phase 1): the thinnest vertical that runs the core loop end-to-end.
> Deepen by variant/type afterwards.

## 5. Scrum process
<sprint length, ceremonies, who owns backlog, how stories flow backlog → ready → in-progress → done>

## 6. Definition of Ready / Definition of Done
- **DoR:** clear actor + value · in/out scope · ≥3 Gherkin ACs · deps known · specialist consulted if
  it touches the domain core · estimate agreed.
- **DoD:** all ACs demoable · tests pass (every TC automated) · code review · no regression ·
  i18n (all source languages) · a11y basics · observability · docs/CHANGELOG · specialist sign-off if
  it touched domain procedure.

## 7. Product Backlog — Epics → Stories (outline)
> Full per-story cards live in `07_BACKLOG/`. This is the outline + AC/TC summary.

### EPIC-01 — <name> (Phase <n>)
- **S1** <story> — AC: <happy/edge/negative one-liners> — TC: <count>
- **S2** …

### EPIC-02 — <name> (Phase <n>)
- …

## 8. Traceability matrix (Epic → Screen → Schema → Test)
| Epic/Story | Screen (wireframe) | Schema model(s) | Test(s) |
|---|---|---|---|
| EPIC-01-S1 | <screen> | <model> | TC-… |

## 9. Test strategy
<unit / integration / e2e split · the regression baseline (validation test-data + expected results) ·
domain-rule tests · how the specialist skill gates domain correctness>

## 10. Phase → Sprint allocation
| Phase | Sprints | Stories |
|---|---|---|
| 1 | <n> | <list> |

## 11. Risk register (top)
| Risk | Likelihood | Impact | Mitigation | Owner |
|---|---|---|---|---|
| <long-lead integration> | | | <spike early, mock until resolved> | |

## 12. Document register & review
<list every artifact + its current version + last review date — mirror PROJECT_STATE.md>
