# ERD — Sample-Booking (Station 2, first cut → schema in Station 4)

```mermaid
erDiagram
    Provider ||--o{ Service : offers
    Provider ||--o{ AvailabilityRule : has
    Provider ||--o{ Client : owns
    Provider ||--o{ Device : "push tokens"
    Client   ||--o{ Appointment : books
    Service  ||--o{ Appointment : "booked as"
    Appointment ||--|| Deposit : "confirmed by"
    Appointment ||--o{ Reminder : schedules
    Provider ||--o{ Appointment : "provides"
```

Notes: `Appointment` carries a `timezone` snapshot (guards cross-tz bugs). One strategy-driven
`Appointment` (type STANDARD|GROUP) rather than a table per service. See `04_DATA_MODEL/schema.prisma`.
