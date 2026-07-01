# Review Log — <PROJECT_NAME>  (Station 8)

> The quality engine. Each round, the **agent panel** (the roster in `../../agents/`) reviews the
> current version and logs findings with a severity. Then fix → re-run affected stations → bump
> version → re-review. **"This round is clean"** = zero High/Med open **and** the panel + Domain
> Specialist signed off **and** the round's grade meets target (`../../GRADE_RUBRIC.md`).
>
> **The panel** (each backed by a plugin skill — see `../../agents/ROSTER.md`):
> **CPO** (value/scope/priority = PO+BA) · **Domain Specialist** (matches the real domain?) ·
> **CTO** (schema/API/NFR/security = Architect) · **QA** (testable ACs + regression baseline) ·
> **CFO** (cost/viability) · **CMO** (positioning/demand) · **Counsel** (compliance/privacy) ·
> **Head of Data** (instrumentation). **Red-Team attacks every gate** → logged in `REDTEAM_PREMORTEM.md`.

---

## Round <n> — <date> — version under review: v<x>

### Panel findings
| ID | Agent (role) | Severity | Artifact / station | Finding | Proposed fix | Status |
|---|---|---|---|---|---|---|
| R<n>-01 | CPO (PO/BA) | <High/Med/Low> | `07_BACKLOG/EPIC-…-S…` | <gap in value/scope/traceability> | <fix> | open |
| R<n>-02 | Domain Specialist | <…> | `03_DICTIONARY` | <rule/term not how the real domain works> | <add term, re-run 3→4→7> | open |
| R<n>-03 | CTO (Architect) | <…> | `04_DATA_MODEL` | <model/idempotency/security gap> | <fix enum/field/constraint> | open |
| R<n>-04 | QA | <…> | `07_BACKLOG` | <AC not testable / no baseline case> | <rewrite AC, add TC> | open |
| R<n>-05 | CFO | <…> | `M_MONETIZE` | <unit economics / pricing issue> | <…> | open |
| R<n>-06 | Counsel | <…> | `04_DATA_MODEL` / `M_MONETIZE` | <PII/compliance/claim risk> | <…> | open |
| R<n>-07 | Head of Data | <…> | `06_SDLC` / `07_BACKLOG` | <flow ships without instrumentation> | <add events> | open |

### Red-Team
- Pre-mortem + challenges this round logged in `REDTEAM_PREMORTEM.md`. Open High challenges: <n>
  (a gate with no Red-Team challenge is **not reviewed**).

### Re-run map (which stations to re-touch for the fixes above)
- vocabulary/term gap → 3 → 4 → 7 · flow/screen gap → 2 → 5 → 7
- domain-rule/calc gap → 3 → 4 → 6 → 7 · data-integrity/model gap → 4 → 7
- validation/business-model gap → `V_VALIDATE` → affected build stations · GTM/pricing gap → `M_MONETIZE`

### Regression baseline
- Baseline set: `<path to validation test-data>` · expected results: `<path>` · **status: 🟢 green / 🔴 red**
- New cases added this round (so fixed bugs can't return): <list>

### Grade this round (`../../GRADE_RUBRIC.md` → record in `_EVAL/SCORECARD.md`)
- Overall grade: **<S/A/B/C/D>** · lowest dimension: <…> · target met (A to advance / S to launch)? ⬜

### Sign-off (this round)
| Agent (role) | Signed? | Note |
|---|---|---|
| CPO (PO/BA) | ⬜ | |
| Domain Specialist | ⬜ | |
| CTO (Architect) | ⬜ | |
| QA | ⬜ | |
| CFO | ⬜ | |
| CMO | ⬜ | |
| Counsel | ⬜ | |
| Head of Data | ⬜ | |
| Red-Team (no open High challenge) | ⬜ | |

**Round result:** ⬜ clean (zero High/Med open · all signed · grade ≥ target → bump version, mark slice DONE) · ⬜ loop again

---

<!-- Copy the "Round" block above for each new round. Keep all rounds for the audit trail. -->
