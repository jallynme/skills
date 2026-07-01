# Knowledge Index — Sample-Booking (filled example, Station 1)

> Extracted from `00_INTAKE/` (12 interview notes, a competitor scan, and 30 sample DM-booking
> transcripts). **FigJam board:** https://figjam.example/sample-booking (frames mirror the sections below).

## Source manifest
| Doc | What it is | Language | Authority |
|---|---|---|---|
| interviews.md | 12 solo-provider problem interviews | EN | authoritative (primary) |
| dm-transcripts/ | 30 real IG/DM booking threads | EN | authoritative (behavioral) |
| competitor-scan.md | Calendly/Acuity/Square/SimplyBook notes | EN | draft (to verify in Feature Discovery) |

## Extracted knowledge (six buckets → board frames)
### Actors
- **Provider** (solo owner, books from phone) · **Client** (books via link, no account) · Stripe (payments) · SMS/email/push providers.

### Entities
- Provider · Service · AvailabilityRule · Client · Appointment · Deposit · Reminder · Device (push).

### Processes / flows
- **Book**: client opens link → picks service+slot → 15-min hold → pays deposit → CONFIRMED → reminders scheduled.
- **Attend/no-show**: provider marks attended → deposit auto-refunded; or no-show → deposit retained per policy.
- **Cancel/reschedule**: within policy window → refund; outside → retain.

### Business rules
- Deposit = `price × depositPct` (default 20%, min $5). Hold expires in 15 min. Times in provider's timezone.
- Refund on attendance; retain on no-show/late-cancel. (source: interviews + Stripe refund docs)

### Codes & statuses
- Appointment: PENDING · CONFIRMED · COMPLETED · CANCELLED · NO_SHOW · EXPIRED (full detail → `03_DICTIONARY`).

### Edge cases & open questions
- Concurrent booking of the same slot (→ lock). DST boundaries. Partial refunds. Deposit-at-booking vs at-no-show (→ Q-001, resolved).

## Contradictions found
| # | Doc A | Doc B | Resolution |
|---|---|---|---|
| 1 | competitor-scan: "deposits standard" | interviews: "nobody I use takes deposits" | Deposits exist but poorly done on mobile → our wedge (confirmed in benchmark). |

## Gate
Every intake doc represented ✅ · contradictions/unknowns logged in `PROJECT_STATE.md` ✅.
