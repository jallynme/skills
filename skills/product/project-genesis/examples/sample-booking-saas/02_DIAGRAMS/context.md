# Context diagram — Sample-Booking (Station 2)

```mermaid
flowchart LR
    Client([Client<br/>books via link]) -->|picks slot, pays deposit| App
    Provider([Provider<br/>solo owner]) -->|sets availability, marks attended| App
    App[Sample-Booking<br/>web + mobile] -->|PaymentIntent / refund| Stripe[(Stripe)]
    App -->|reminders| Notif[SMS · Email · Push]
    App -->|calendar sync| Cal[(Google / Apple Calendar)]
    App --> DB[(PostgreSQL)]
    Worker[[Reminder worker]] --> Notif
    App -.enqueue.-> Worker
```

**Surfaces:** customer web booking page · provider mobile app (push) · minimal provider web settings.
No admin portal in v1 (solo). External systems: Stripe, calendar providers, notification channels.
