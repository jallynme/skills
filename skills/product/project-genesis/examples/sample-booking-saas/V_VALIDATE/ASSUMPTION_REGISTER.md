# Assumption Register — Sample-Booking (filled example)

> The riskiest beliefs, their status, the cheapest test, and the result. Red-Team attacks the riskiest
> unvalidated one first. Legend: 🔴 unvalidated · 🟡 testing · 🟢 validated · ⚫ invalidated.

| ID | Assumption | Type | If wrong… | Risk | Status | Cheapest test | Result / evidence | Owner |
|---|---|---|---|---|---|---|---|---|
| A-001 | Solos will pay $19/mo to kill no-shows | Viability | model collapses | High | 🟢 | 12 interviews + fake-door landing | 6.1% sign-up (target 3%); 4/12 pre-committed | CFO |
| A-002 | Clients will pay a deposit to book | Desirability | wedge fails | High | 🟡 | concierge test, 1 stylist, 20 bookings | 17/20 accepted (85%) — above 60% kill line | CMO |
| A-003 | Deposit-refund-on-attend is clean with Stripe | Legal/Feasibility | can't ship wedge | High | 🟢 | Counsel + Stripe refund docs + test charge | works via PaymentIntent + refund | Counsel |
| A-004 | We can reach solos via IG/TikTok creators | Desirability | no growth | High | 🟡 | $50 creator shoutout test | 22 clicks, 3 signups — promising, needs scale | CMO |
| A-005 | Calendar sync is table-stakes we must have | Feasibility | scope wrong | Med | 🟢 | Feature Discovery (every rival has it) | confirmed → moved to Must | CPO |

## Burn-down
- Open High assumptions: **0** (A-001/A-003 validated; A-002/A-004 in 🟡 testing but above kill lines).
- Invalidated (saved us building): none this round.

> Mirrors into `PROJECT_STATE.md` §3–§4. A-002 and A-004 stay 🟡 until the concierge/creator tests scale.
