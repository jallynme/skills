# EPIC-02-S1 — Book an appointment with deposit-to-confirm
**Epic:** EPIC-02 Booking · **Phase:** 1 · **Priority:** Must · **Estimate:** 5 pts · **Status:** `in progress`

## 1. Story
**As a** Client, **I want** to pick a slot and pay a deposit to confirm, **so that** my appointment is
locked in and the provider knows I'm serious.

## 2. Context & rationale
The wedge: deposit-to-confirm kills no-shows (validated in `V_VALIDATE/VALIDATION_BRIEF.md`). The
deposit is auto-refunded on attendance, so clients aren't out of pocket — that's what makes them accept
it (assumption A-002). Without this, we're just another free booking link.

## 3. Scope
- **In scope:** slot selection from availability, 15-min hold, Stripe deposit, status PENDING→CONFIRMED,
  confirmation + reminder scheduling.
- **Out of scope:** group bookings (Phase 2), rescheduling (EPIC-02-S3).

## 4. Acceptance Criteria (Gherkin)
### AC1 — happy path
- **Given** a provider with availability and a service priced $40 (20% deposit = $8)
  **When** a client picks an open slot and pays the $8 deposit
  **Then** the appointment becomes `CONFIRMED`, the slot is locked, and SMS+email confirmations send.
### AC2 — edge: hold expiry
- **Given** a client picked a slot (status `PENDING`) **When** 15 minutes pass without payment
  **Then** the appointment becomes `EXPIRED` and the slot is released.
### AC3 — negative: double-book / tz
- **Given** a slot already `CONFIRMED` **When** another client tries the same slot
  **Then** booking is blocked with "that time was just taken," and times are computed in the provider's
  timezone (no cross-tz off-by-hours — guards G-001).

## 5. Test Cases
| TC | Scenario | Steps | Expected |
|---|---|---|---|
| TC-EPIC-02-S1-1 | happy | book + pay $8 | CONFIRMED, slot locked, 2 confirmations |
| TC-EPIC-02-S1-2 | edge | hold 15 min, no pay | EXPIRED, slot freed |
| TC-EPIC-02-S1-3 | negative | book taken slot | blocked + message |
| TC-EPIC-02-S1-4 | tz | provider CT, client ET | stored/displayed correctly |

## 6. Technical notes
- **Data model:** `Appointment` (status, startAt, endAt, timezone), `Deposit` (amountCents, status), `Service.priceCents`, `Provider.depositPct`.
- **API/behaviour:** server holds slot (Redis SETNX on `providerId:startAt`, 15-min TTL); Stripe PaymentIntent; on success → `CONFIRMED` + schedule `Reminder` rows. Server-authoritative.
- **Screens:** `mobile.html` booking flow + `customer.html` booking page (offline/confirm states — see G-003).
- **Domain rules:** deposit = `price × depositPct` (min $5); refund on `COMPLETED`. Times in provider tz.
- **Edge cases:** payment fails → stay PENDING; concurrent book → lock wins; DST boundary.

## 7. Dependencies
- **Depends on:** EPIC-01 (provider availability), Stripe integration spike.
- **Blocks:** EPIC-02-S2 (reminders), EPIC-03 (no-show/refund).

## 8. Definition of Done
- [x] AC demoable · [ ] tests pass (TC-4 pending) · [x] code review · [ ] no regression (baseline green)
- [x] i18n EN · a11y basics · [x] observability (booking funnel events) · [x] CHANGELOG
- [x] domain specialist (booking-ops) sign-off on deposit/refund flow

## 9. Links
- Schema: `../../04_DATA_MODEL/schema.prisma` · Dictionary: `../../03_DICTIONARY/DOMAIN_DICTIONARY.md` · Validate: `../../V_VALIDATE/VALIDATION_BRIEF.md`

## 10. Tasks (4 lanes)
- 🟦 **FE-customer:** booking page slot picker + Stripe deposit + confirm/offline states.
- 🟪 **FE-admin:** `N/A` (solo — no admin surface in v1).
- 🟩 **BE-API:** slot hold (SETNX+TTL), PaymentIntent, status transition, reminder scheduling, tz handling.
- 🟧 **QA:** automate TC-1..4; add G-001 (tz) + G-002 (refund window) regression cases.
