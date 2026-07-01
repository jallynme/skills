# V · VALIDATE — Sample-Booking (filled example)

**Project:** Sample-Booking · **Version:** v2 · **Gate owner:** Founder · **Status:** ✅ GO (2026-06-28)

## 1. Problem & customer
- **Problem:** Solo service providers lose 15–30% of revenue to no-shows and spend ~5 hrs/week on
  phone/DM scheduling back-and-forth.
- **Who has it (ICP):** Solo providers who charge per appointment — hair stylists, massage therapists,
  tutors, personal trainers, indie clinicians. 1 person, no front desk, books from their phone.
- **What they do today:** DMs + a paper book or Google Calendar; some use Calendly (not payment-aware)
  or Square (too heavy/retail-first).
- **Why now:** Instagram/TikTok DMs are the new front desk; phone-first solos want a booking link they
  paste in bio that *also* takes a deposit.
- **Evidence it's real:** 12 problem interviews (10/12 named no-shows as their #1 pain); r/smallbusiness
  threads; Calendly's own reviews complaining "no deposits."

## 2. Wedge & value
- **The wedge:** booking link + **deposit-to-confirm** that auto-refunds on attendance — kills no-shows
  without nagging clients.
- **Value, quantified:** recovering even 2 no-shows/week at $40 = ~$4,000/yr; the tool costs $228/yr.
- **Positioning:** For **solo service providers** who **lose money to no-shows**, **Sample-Booking** is a
  **phone-first booking link** that **takes a deposit to confirm**, unlike **Calendly** (no payments) or
  **Square** (retail-heavy).

## 3. Market size (rough, with math)
> Used the deep-research skill for provider counts + competitor pricing.
- **TAM:** ~4.0M US solo personal-service providers × $228/yr = ~$910M.
- **SAM:** phone-first, payment-taking solos ≈ 1.2M × $228 = ~$275M.
- **SOM (12–24 mo):** 8,000 paying × $228 = ~$1.8M ARR.

## 4. Business model (canvas, compressed)
| Revenue | Pricing | Key costs | Channels | Unfair advantage |
|---|---|---|---|---|
| Subscription + payments | $19/mo flat; 0% booking fee | Stripe fees, infra, CAC | IG/TikTok creators, app stores, SEO | deposit-auto-refund UX nobody does well on mobile |

## 5. Pricing & willingness-to-pay
- **Hypothesized price:** $19/mo flat. **Anchored to:** one recovered no-show/month pays for it 2×.
- **WTP signal:** fake-door landing page → **6.1% sign-up** (target was 3%); 4/12 interviewees pre-committed.

## 6. Riskiest assumptions → `ASSUMPTION_REGISTER.md`
- A-001 solos will pay $19/mo to kill no-shows — 🟢 validated (interviews + fake door).
- A-002 clients will accept paying a deposit to book — 🟡 testing (concierge test with 1 stylist, 20 bookings).
- A-003 deposit-refund-on-attendance is legal/clean with Stripe — 🟢 validated (Counsel + Stripe docs).

## 7. Kill criteria (set before starting)
- Stop if client deposit-acceptance < 60% in the concierge test, **or** CAC > $80 with no organic channel.

## 8. Go / No-Go decision (Founder)
- **Red-Team's strongest challenge:** "Calendly adds deposits and crushes you." **Answer:** their core
  is teams/scheduling; deposits are a checkbox, not phone-first UX — and their mobile is 3.4★. We win on
  the solo+mobile+deposit wedge, not on calendars.
- **Decision:** ✅ **GO** — 2026-06-28 — riskiest assumptions tested with real signal; wedge is defensible.
