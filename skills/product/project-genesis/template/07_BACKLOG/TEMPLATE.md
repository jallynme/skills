# EPIC-XX-Sy — <Story title (short, clear)>
**Epic:** EPIC-XX <Module> · **Phase:** <0–N> · **Priority:** <Must/Should/Could/Won't> · **Estimate:** <pts> · **Status:** `backlog` | `in wireframe` | `in progress` | `done`

## 1. Story
**As a** `<role>`, **I want** `<capability>`, **so that** `<business value>`.

## 2. Context & rationale (why this exists)
<business/domain context that makes this story necessary · cite the source doc / rule / regulation if
any · the risk if we don't do it>

## 3. Scope
- **In scope:** <what's included>
- **Out of scope:** <excluded / later phase>

## 4. Acceptance Criteria (Gherkin — ≥3 scenarios: happy + edge + negative)
### AC1 — <happy path>
- **Given** <precondition> **When** <action> **Then** <expected outcome>
### AC2 — <edge / variation>
- **Given** … **When** … **Then** …
### AC3 — <negative / validation>
- **Given** … **When** … **Then** <error/blocked + exact message>

## 5. Test Cases
| TC | Scenario | Steps | Expected |
|---|---|---|---|
| TC-EPIC-XX-Sy-1 | happy | … | … |
| TC-EPIC-XX-Sy-2 | edge | … | … |
| TC-EPIC-XX-Sy-3 | negative | … | … |

## 6. Technical notes
- **Data model:** <models/fields in `04_DATA_MODEL/schema.prisma`>
- **API / behaviour:** <endpoint, validation, calc, state transition — server is authoritative>
- **Screens:** <which wireframe surface/screen in `05_WIREFRAMES/`>
- **Domain rules / refs:** <exact rule, code, threshold, formula — from the dictionary>
- **Edge cases:** <list>

## 7. Dependencies
- **Depends on:** <EPIC/Story or spike>
- **Blocks:** <EPIC/Story>

## 8. Definition of Done
- [ ] All AC demoable · [ ] unit/integration tests pass (every TC automated) · [ ] code review · [ ] no regression (baseline green)
- [ ] i18n (all source languages) · a11y basics · [ ] observability (log/metric) · [ ] docs/CHANGELOG updated
- [ ] if it touches the domain core → **domain specialist sign-off**

## 9. Links
- Schema: `../../04_DATA_MODEL/schema.prisma` · Wireframe: `../../05_WIREFRAMES/<surface>.html` · SDLC: `../../06_SDLC/SDLC_MASTER_SPEC.md` · Dictionary: `../../03_DICTIONARY/DOMAIN_DICTIONARY.md`

## 10. Tasks (4 lanes)
- 🟦 **FE-customer:** <tasks> (or `N/A` — intentional)
- 🟪 **FE-admin:** <tasks> (or `N/A`)
- 🟩 **BE-API:** <tasks — the authoritative validation/calc/state>
- 🟧 **QA:** <tasks — automate each TC; add a regression-baseline case if this fixes a bug>
