# Metrics Tree — Sample-Booking (defined before build, Station M pre-work)

> Metrics defined pre-build so v1 ships instrumented. Owned by Head of Data.

## 1. North Star
- **NSM:** **confirmed bookings per active provider per week.** Rises only when providers get real
  value (clients actually booking + paying deposits).
- **Kill metric:** if median active provider < 1 confirmed booking/week after 4 weeks → stop.

## 2. KPI tree
```
        NSM: confirmed bookings / active provider / week
        /              |                    \
  Acquisition      Activation            Retention/Revenue
  provider signups  reach "aha"           weekly-active providers
      |            (first confirmed         + paid conversion + no-show rate ↓
  creator CTR      booking w/ deposit)
```
| Layer | KPI | Target |
|---|---|---|
| Acquisition | provider signups/wk | 50 |
| Activation | % who get 1st confirmed booking in 7d | 40% |
| Retention | weekly-active providers | 60% |
| Revenue | free→paid conversion | 8% |
| Value proof | no-show rate | ↓ from ~20% to < 8% |

## 3. Event taxonomy
| Event | Fires when | Props | Story | KPI |
|---|---|---|---|---|
| `provider_signed_up` | signup done | source | EPIC-01 | Acquisition |
| `availability_set` | first availability saved | — | EPIC-01-S1 | Activation |
| `booking_confirmed` | deposit paid → CONFIRMED | service, amount | EPIC-02-S1 | **NSM** |
| `appointment_completed` | attended, refunded | — | EPIC-03-S1 | value |
| `no_show_marked` | no-show retained | — | EPIC-03-S2 | value |
| `subscription_started` | provider pays $19 | — | (billing) | Revenue |

## 4. Rule
Every Station-7 story touching a tracked step lists its event in §6 and a QA check that it fires.
`booking_confirmed` is the activation + North-Star event — must be verified.
