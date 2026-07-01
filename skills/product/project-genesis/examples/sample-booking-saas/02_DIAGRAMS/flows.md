# Core flows — Sample-Booking (Station 2)

## Happy path — book with deposit
```mermaid
sequenceDiagram
    participant C as Client
    participant A as App (server-authoritative)
    participant S as Stripe
    C->>A: open booking link, pick service + slot
    A->>A: hold slot (Redis SETNX, 15-min TTL) → PENDING
    A->>S: create PaymentIntent (deposit)
    C->>S: pay deposit
    S-->>A: webhook: succeeded
    A->>A: status → CONFIRMED, lock slot, schedule reminders
    A-->>C: confirmation (SMS + email)
    A-->>A: push to provider ("New booking")
```

## Variant — hold expiry
Client picks slot but doesn't pay within 15 min → job flips PENDING → EXPIRED, releases the slot.

## Variant — attend vs no-show
Provider marks attended → COMPLETED, deposit auto-refunded. Marks no-show → NO_SHOW, deposit retained
per the cancellation policy in effect at booking time.
