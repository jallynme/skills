# EPIC-01-S1 — Set weekly availability + buffers + lead time
**Epic:** EPIC-01 Provider · **Phase:** 0 · **Priority:** Must · **Estimate:** 3 pts · **Status:** `done`

## 1. Story
**As a** Provider, **I want** to set my weekly hours, buffers, and minimum lead time, **so that**
clients can only book slots I can actually keep.

## 2. Context & rationale
Availability is the precondition for every booking. Calendly/Acuity reviews cite "double-booked me"
and "booked with no notice" — buffers + lead time fix both (from `01_KNOWLEDGE`, competitor scan).

## 3. Scope
- **In scope:** weekly recurring hours per weekday, buffer between appointments, minimum lead time.
- **Out of scope:** date-specific overrides / holidays (EPIC-01-S4, Phase 2), multi-staff.

## 4. Acceptance Criteria (Gherkin)
### AC1 — happy
- **Given** a provider **When** they set Mon–Fri 9:00–17:00 with a 15-min buffer and 2-hour lead time
  **Then** the booking page offers only those slots, spaced by service duration + buffer, ≥2h out.
### AC2 — edge: buffer
- **Given** a 60-min service + 15-min buffer **When** 10:00 is booked **Then** the next offered slot is 11:15, not 11:00.
### AC3 — negative: lead time
- **Given** a 2-hour lead time **When** a client loads the page at 14:00 **Then** no slot before 16:00 is offered.

## 5. Test Cases
| TC | Scenario | Expected |
|---|---|---|
| TC-EPIC-01-S1-1 | set hours | only in-hours slots shown |
| TC-EPIC-01-S1-2 | buffer | gaps respect buffer |
| TC-EPIC-01-S1-3 | lead time | early slots hidden |

## 6. Technical notes
- **Model:** `AvailabilityRule` (weekday, startMin, endMin, bufferMin, leadTimeMin).
- **Behaviour:** slot generation is server-side in the provider's timezone; the page renders what the server returns.
- **Screens:** provider web settings · booking page slot grid.
- **Edge cases:** DST, overnight ranges (disallow v1), zero availability (empty state).

## 7. Dependencies
- **Depends on:** provider profile (timezone). **Blocks:** EPIC-02-S1 (booking needs slots).

## 8. Definition of Done
- [x] ACs demoable · [x] tests pass · [x] review · [x] no regression · [x] i18n · [x] a11y · [x] events · [x] CHANGELOG

## 9. Links
- Schema: `../../04_DATA_MODEL/schema.prisma` · Dictionary: `../../03_DICTIONARY/DOMAIN_DICTIONARY.md`

## 10. Tasks (4 lanes)
- 🟦 FE-customer: slot grid on booking page.
- 🟪 FE-admin: `N/A` (solo).
- 🟩 BE-API: availability CRUD + server-side slot generation (tz-aware).
- 🟧 QA: automate TC-1..3; DST edge case.
