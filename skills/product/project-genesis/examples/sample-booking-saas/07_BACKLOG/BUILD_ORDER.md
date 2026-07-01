# BUILD_ORDER — Sample-Booking (Station 7)

> Dependency order; the walking skeleton first, then depth. No forward dependencies.

## Phase 0 — Foundations
1. EPIC-01-S1 availability → 2. EPIC-01-S2 services → 3. EPIC-01-S3 booking link
   (+ auth/provider profile from platform setup)

## Phase 1 — Walking skeleton (thinnest end-to-end)
4. **EPIC-02-S1 book with deposit** (the core loop) →
5. EPIC-03-S1 attend → refund →
6. EPIC-02-S2 reminders →
7. EPIC-04-S1 mobile push →
8. EPIC-03-S2 no-show → retain →
9. EPIC-04-S2 client list

## Phase 1 — hardening
10. EPIC-03-S3 policy engine → 11. EPIC-02-S3 reschedule → 12. EPIC-04-S3 offline states (G-003)

## Phase 2+
group bookings · staff calendars · waitlist · packages.

**Walking skeleton = 4→5→6:** a client can book, pay a deposit, get reminded, attend, and be
auto-refunded — the whole wedge, end-to-end, on web + mobile.
