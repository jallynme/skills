# Sample-Booking — Master SDLC Spec (filled example, Station 6 · v1)

## 1. How to use
Phases → 2-week sprints. Stories in `07_BACKLOG/`. Gates per `GRADE_RUBRIC.md`.

## 2. Vision · users
- **Vision:** the phone-first booking link that takes a deposit and kills no-shows for solo providers.
- **Users:** Provider (solo, mobile), Client (guest, books via link).
- **Success:** confirmed bookings/active provider/week (North Star); no-show rate ↓.

## 3. Architecture + NFRs
- **Surfaces:** customer web booking page · provider **mobile app** (React Native/Expo) · minimal provider web settings. No admin (solo).
- **Stack:** Next.js (web) · Expo (mobile) · Prisma/PostgreSQL · Redis + BullMQ (reminder worker) · Stripe.
- **Patterns:** server-authoritative slot hold (SETNX+TTL), idempotent payment webhooks, versioned cancellation policy, audit log.
- **NFRs:** booking p95 < 500ms · Stripe PCI (no card data stored) · i18n EN (TH later) · a11y AA.
- **Mobile NFRs:** offline booking-view + queued actions · push · app-store review + OTA · deep links to a booking.

## 4. Phases (each shippable)
| Phase | Theme | Exit criteria |
|---|---|---|
| 0 | Foundations | auth, provider profile, availability, CI, health |
| 1 | **Walking skeleton** | **book → deposit → CONFIRMED → reminder → attend/refund, on web + mobile** |
| 2 | Depth | group bookings, staff calendars, waitlist |
| 3 | Growth | referrals, packages/memberships |

## 5. DoR / DoD
- **DoR:** actor+value, in/out scope, ≥3 Gherkin ACs, deps known, specialist consulted, estimate.
- **DoD:** ACs demoable, tests pass, review, no regression, i18n, a11y, events fire, CHANGELOG, specialist sign-off.

## 6. Epics → stories (outline)
- **EPIC-01 Provider & availability** — S1 set availability, S2 services, S3 booking-link/slug.
- **EPIC-02 Booking** — S1 book with deposit, S2 reminders, S3 reschedule.
- **EPIC-03 No-show & refunds** — S1 attend→refund, S2 no-show→retain, S3 policy engine.
- **EPIC-04 Mobile** — S1 push new-booking, S2 client list, S3 offline/confirm states.

## 7. Traceability (excerpt)
| Story | Screen | Model | Test |
|---|---|---|---|
| EPIC-02-S1 | booking page / mobile | Appointment, Deposit | TC-EPIC-02-S1-1..4 |

## 8. Test strategy
Unit (deposit math, tz), integration (hold→pay→confirm), e2e (book on mobile). Regression baseline:
`test/booking_validation.json` + expected results. Specialist gates domain correctness (refund policy).

## 9. Risk register (top)
| Risk | L | I | Mitigation |
|---|---|---|---|
| Stripe refund edge cases | M | H | spike + test matrix; specialist sign-off |
| Client deposit resistance | M | H | concierge test (A-002); clear "refunded when you show" copy |
