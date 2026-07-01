# Feature Catalog — Sample-Booking (the feature universe)

> Exhaustive inventory; the matrix samples this, `FEATURE_MAP.md` picks scope. ✅ full ⚠️ partial ❌ none.
> Class: TS table-stakes · D differentiator · DL delighter.

## Onboarding & Accounts
| # | Feature | C1 | C2 | C3 | Us | Class | Priority |
|---|---|---|---|---|---|---|---|
| 1 | Provider sign-up | ✅ | ✅ | ✅ | ✅ | TS | Must |
| 2 | 2-min guided setup | ⚠️ | ❌ | ⚠️ | ✅ | D | Must |
| 3 | Booking link / slug | ✅ | ✅ | ⚠️ | ✅ | TS | Must |

## Core booking
| 4 | Slot picker from availability | ✅ | ✅ | ✅ | ✅ | TS | Must |
| 5 | Deposit-to-confirm | ⚠️ | ✅ | ✅ | ✅ | D | Must |
| 6 | Auto-refund on attendance | ❌ | ❌ | ❌ | ✅ | DL | Must (wedge) |
| 7 | Availability rules / buffers / lead time | ✅ | ✅ | ✅ | ✅ | TS | Must |
| 8 | Cancellation policy + window | ⚠️ | ✅ | ✅ | ✅ | TS | Must |
| 9 | Group/class booking | ⚠️ | ✅ | ⚠️ | ⬜ | — | Phase 2 |

## Reminders & notifications
| 10 | SMS + email reminders | ✅ | ✅ | ✅ | ✅ | TS | Must |
| 11 | Mobile push (new booking) | ⚠️ | ⚠️ | ✅ | ✅ | D | Must |

## Clients
| 12 | Client list + history | ⚠️ | ✅ | ✅ | ✅ | TS | Must |
| 13 | Waitlist | ⚠️ | ⚠️ | ❌ | ⬜ | DL | Phase 2 |

## Integrations
| 14 | Google/Apple calendar sync | ✅ | ✅ | ✅ | ✅ | TS | Must |
| 15 | Zapier/webhooks | ✅ | ✅ | ⚠️ | ⬜ | — | Later |

## Trust
| 16 | PCI via Stripe | ✅ | ✅ | ✅ | ✅ | TS | Must |
| 17 | Data export | ✅ | ✅ | ⚠️ | ⬜ | TS | Should |

## Coverage summary
- Catalogued: 17 · table-stakes: 10 · differentiators: 3 · delighters: 2.
- **Missing table-stakes (❌ for us at start):** none after scope-lock (all Musts in v1 or Should).
- **White space (nobody ✅):** auto-refund-on-attend (#6) → our leapfrog.
