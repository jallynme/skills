# CLAUDE.md — Sample-Booking (worked example)

> Per-project context (filled). This is what an agent reads first when working this project.

## What it is
Sample-Booking — a phone-first appointment-booking tool for **solo service providers** whose wedge is
**deposit-to-confirm with auto-refund on attendance** (kills no-shows). Web booking page + provider
mobile app. Fictional example project.

## Current state
See `PROJECT_STATE.md`. Phase 1 (walking skeleton) at **grade A**, one Med UX gap open (G-003, mobile
offline state). Validate = GO; Launch = pending Phase 1 close + channel proof (A-004).

## Repo map
`V_VALIDATE/` (GO + scope) · `01_KNOWLEDGE` · `02_DIAGRAMS` (state machine) · `03_DICTIONARY` (naming
authority) · `04_DATA_MODEL/schema.prisma` (11 models) · `05_WIREFRAMES` · `06_SDLC` (4 phases) ·
`07_BACKLOG` (14 stories) · `08_REVIEW` (2 rounds) · `09_SPECIALIST/booking-ops-specialist` ·
`_EVAL/SCORECARD.md` · `M_MONETIZE/METRICS_TREE.md`.

## Working rules (project-specific)
1. **Server-authoritative** slot holds (Redis SETNX + 15-min TTL); one booking per slot.
2. **Times in the provider's timezone**; snapshot it on the Appointment (G-001 lesson).
3. **Deposit at booking, auto-refunded on attendance**; retain on no-show per the policy in effect.
4. **Stripe webhook is source of truth** (idempotent); card data never stored.
5. Domain specialist (`booking-ops-specialist`) signs off anything touching deposits/refunds/policy.

## Loop
Run the Goal Loop toward the 🎯 goal in `PROJECT_STATE.md` (get Phase 1 to a clean grade A → close G-003).
