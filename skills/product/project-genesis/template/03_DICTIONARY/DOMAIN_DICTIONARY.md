# Domain Dictionary — <PROJECT_NAME>

> **The naming authority.** Every schema field, API name, UI label, and the specialist skill must use
> the terms defined here. Bilingual (keep both source languages). Code tables are **verbatim** from
> the source — do not paraphrase codes, statuses, or formats.
>
> Version: v1 · Source: `00_INTAKE/` · Owner: BA + Domain Specialist

## 1. Core terms
| Term (EN) | Term (lang 2) | Canonical name (code/schema) | Plain-language meaning | Source doc |
|---|---|---|---|---|
| <Order> | <term, lang 2> | `Order` | <what it is, in one sentence a non-expert gets> | <doc#> |
| | | | | |

## 2. Actors / roles
| Actor | Plain meaning | System role (RBAC) | Notes |
|---|---|---|---|
| <Importer> | <person/org that brings goods in> | `IMPORTER` | |

## 3. Lifecycle statuses (verbatim codes)
> The states an object moves through, with the **exact** code and meaning. Map these to the state
> diagram (`02_DIAGRAMS/state.md`) and a real enum in the schema.

| Code | Name | Meaning | Entered when | Next states |
|---|---|---|---|---|
| <STATUS_A> | <created> | <...> | <...> | <STATUS_B / cancelled> |

## 4. Type / category codes (verbatim)
| Code | Name | Used for | Special rules it triggers |
|---|---|---|---|
| <100> | <import> | <...> | <which fields/docs/validations differ> |

## 5. Reference / master data tables
> Lists that change over time → store **versioned**, used "as of" the business date.

| Table | What it holds | Format/encoding (if legacy) | Change frequency | Versioned? |
|---|---|---|---|---|
| <rate table> | <code → value> | <fixed-width legacy / CSV> | <often> | yes |

## 6. Formulas & calculations (exact)
> Capture the real formula, with units and rounding. One row per calculation; link the story that
> implements it.

| Name | Formula | Inputs | Units / rounding | Source | Story |
|---|---|---|---|---|---|
| <CIF value> | <FOB + insurance + freight> | <...> | <currency, 2dp> | <doc#> | <EPIC-06-S1> |

## 7. Abbreviations & internal shorthand
| Short | Full | Meaning |
|---|---|---|
| | | |

## 8. Open questions / contradictions
> Anything ambiguous or where two docs disagree. Mirror into `PROJECT_STATE.md` §4.

- Q-___: <term/rule> — <the ambiguity> — blocks: <station/story>.
