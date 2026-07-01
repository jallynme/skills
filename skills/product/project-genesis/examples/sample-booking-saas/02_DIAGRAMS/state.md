# State diagram — Appointment lifecycle (Station 2)

> Matches the status codes in `03_DICTIONARY`. Every state reachable; no invalid transitions.

```mermaid
stateDiagram-v2
    [*] --> PENDING: client picks slot (15-min hold)
    PENDING --> CONFIRMED: deposit paid
    PENDING --> EXPIRED: 15 min, no payment
    CONFIRMED --> COMPLETED: provider marks attended (deposit auto-refunded)
    CONFIRMED --> CANCELLED: cancel within policy window (refund)
    CONFIRMED --> NO_SHOW: client didn't attend (deposit retained)
    EXPIRED --> [*]
    COMPLETED --> [*]
    CANCELLED --> [*]
    NO_SHOW --> [*]
```

**Invariants:** deposit is `HELD` in PENDING/CONFIRMED, `REFUNDED` on COMPLETED/CANCELLED-in-window,
`CAPTURED` on NO_SHOW. A slot is locked only while `CONFIRMED`. Times computed in the provider's timezone.
