# 07 · BACKLOG — Sample-Booking (filled example)

> **14 stories · 4 epics.** Each card: Story · Context · Scope · AC (Gherkin ≥3) · TC · Tech notes ·
> Deps · DoD · Links · §10 Tasks (4 lanes). Build order in `BUILD_ORDER.md`.

## EPIC-01 — Provider & availability `EPIC-01-provider/` (Phase 0)
- [EPIC-01-S1 — Set weekly availability + buffers + lead time](EPIC-01-provider/EPIC-01-S1.md)
- EPIC-01-S2 — Create services (name, duration, price)
- EPIC-01-S3 — Booking link / slug + branded page

## EPIC-02 — Booking `EPIC-02-booking/` (Phase 1)
- [EPIC-02-S1 — Book with deposit-to-confirm](EPIC-02-booking/EPIC-02-S1.md)
- EPIC-02-S2 — Schedule + send reminders (SMS/email/push)
- EPIC-02-S3 — Reschedule within policy

## EPIC-03 — No-show & refunds (Phase 1)
- EPIC-03-S1 — Mark attended → auto-refund deposit
- EPIC-03-S2 — Mark no-show → retain deposit
- EPIC-03-S3 — Versioned cancellation-policy engine

## EPIC-04 — Mobile (Phase 1)
- EPIC-04-S1 — Push notification on new booking
- EPIC-04-S2 — Client list + one-tap rebook
- EPIC-04-S3 — Offline / confirmation states (**G-003 open**)

## Gate
Every story ≥3 Gherkin + DoD, traces to a screen + a schema model; build order has no forward deps.
