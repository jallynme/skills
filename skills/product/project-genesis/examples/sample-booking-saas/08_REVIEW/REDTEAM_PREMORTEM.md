# Red-Team / Pre-mortem Log — Sample-Booking (filled example)

---

## Round 1 — 2026-06-29 — gate: Validate + Station 8 — v2

### Pre-mortem
- **Headline:** "Sample-Booking shut down — Calendly shipped deposits and we had no moat."
- **Cause 1:** wedge was a feature, not a workflow. **Cause 2:** couldn't reach solos cheaply. **Cause 3:** clients refused deposits.

### Challenges
| ID | Challenge | Sev | To clear, prove… | Answer | Status |
|---|---|---|---|---|---|
| RT-01 | Calendly adds deposits and crushes us | High | our wedge survives a fast-follow | deposits are a checkbox for them; our win is **auto-refund + phone-first UX**; their mobile is 3.4* | answered |
| RT-02 | Clients won't pay to book | High | ≥60% accept in a real test | concierge test 17/20 = 85% (A-002) | answered |
| RT-03 | No cheap channel to solos | Med | one channel with < $80 CAC | creator test 3 signups on $50 → promising, scaling (A-004) | 🟡 monitoring |
| RT-04 | "We build it because AI makes it easy" | Med | real pull | 6.1% fake-door sign-up | answered |

### Verdict: **can't kill it** — wedge + WTP evidence hold. GO. (RT-03 stays watched.)

---

## Round 2 — 2026-06-30 — gate: Station 8 — v3
- No new High. RT-03 (channel/CAC) remains the top open risk → tracked in the assumption register, not a build blocker.
- Blocks grade-A "clean" only via G-003 (Med UX), which is a Design fix, not a thesis risk.
