# 05 · WIREFRAMES — Sample-Booking (Station 5, v2)

> Built as single-file HTML per surface (shadcn style). In a real run these are `.html` files you open
> in a browser; here we list the screens produced and the open gap.

## Surfaces built
- **`customer.html`** (booking page) — service picker → slot grid → deposit checkout → confirmation.
  States: available/held/soldout, payment error, confirmed, **offline** (queued).
- **`mobile.html`** (provider app, ~390px, bottom tab nav) — Today · Calendar · Clients · Settings;
  push permission prompt; "New booking" push → detail; mark attended/no-show.
- **provider web settings** (in `customer.html` shell) — availability, services, booking link, policy.

## Flow coverage (from `02_DIAGRAMS/flows.md`)
Book → deposit → confirm ✅ · attend → refund ✅ · no-show → retain ✅ · reschedule ✅.

## Gate & open item
Interface-completeness ✅ on web. **G-003 (Med, open):** mobile booking lacks an **offline /
"pending sync" confirmation** state — Design to add the pattern, then QA verifies the event. Blocks the
v3 "clean" grade-A sign-off.
