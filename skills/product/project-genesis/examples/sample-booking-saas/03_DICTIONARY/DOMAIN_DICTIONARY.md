# Domain Dictionary — Sample-Booking (filled example)

> The naming authority. Schema fields, API names, and UI copy all use these terms.

## 1. Core terms
| Term | Canonical (schema) | Plain meaning | Source |
|---|---|---|---|
| Provider | `Provider` | the solo business owner who offers appointments | interviews |
| Client | `Client` | the person booking an appointment | interviews |
| Service | `Service` | a bookable offering (e.g. "60-min massage") with duration + price | competitor scan |
| Appointment | `Appointment` | a booked slot between a Provider and a Client for a Service | core |
| Availability | `AvailabilityRule` | when a Provider can be booked (hours, buffers, lead time) | Calendly reviews |
| Deposit | `Deposit` | partial payment taken to confirm; auto-refunded on attendance | the wedge |
| No-show | `status = NO_SHOW` | client didn't attend; deposit retained per policy | interviews |

## 2. Actors / roles
| Actor | Plain meaning | RBAC role |
|---|---|---|
| Provider | business owner (solo) | `PROVIDER` |
| Client | books appointments (no account required) | `CLIENT` (guest) |

## 3. Lifecycle statuses (Appointment) — verbatim
| Code | Name | Meaning | Entered when | Next |
|---|---|---|---|---|
| `PENDING` | pending deposit | slot held, awaiting deposit | client picks slot | `CONFIRMED` / `EXPIRED` |
| `CONFIRMED` | confirmed | deposit paid, slot locked | deposit succeeds | `COMPLETED` / `CANCELLED` / `NO_SHOW` |
| `COMPLETED` | completed | client attended; deposit auto-refunded | provider marks attended | — |
| `CANCELLED` | cancelled | cancelled within policy window | client/provider cancels | — |
| `NO_SHOW` | no-show | client didn't attend; deposit retained | provider marks no-show | — |
| `EXPIRED` | expired | deposit not paid in 15 min hold | timeout | — |

## 4. Type / category codes
| Code | Name | Used for | Special rule |
|---|---|---|---|
| `STANDARD` | standard appt | 1 client, 1 slot | default |
| `GROUP` | group/class | many clients, 1 slot | Phase 2 — capacity > 1 |

## 5. Reference / master data
| Table | Holds | Versioned? |
|---|---|---|
| `Service` | provider's offerings (price, duration) | per-provider, edit-tracked |
| cancellation policy | window + refund rule | yes (as-of booking date) |

## 6. Formulas
| Name | Formula | Notes | Story |
|---|---|---|---|
| Deposit amount | `service.price × depositPct` (default 20%, min $5) | rounded to cents | EPIC-02-S1 |
| Refund on attend | full deposit | auto on `COMPLETED` | EPIC-02-S1 |

## 7. Open questions
- Q-001 (resolved): deposit at booking, auto-refund on attendance.
