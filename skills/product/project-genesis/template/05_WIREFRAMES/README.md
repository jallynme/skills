# 05 · WIREFRAMES

Produced at Station 5. **Single-file HTML per surface, shadcn style** (self-contained — open in a
browser). Default surfaces (build the ones that apply):
- `customer.html` — the end-user **web** app
- `admin.html` — the admin/back-office portal
- `mobile.html` — the **mobile app** (phone viewport ~390px; native-style nav/tab bar) — if mobile is a surface

(Swap for Figma Make / v0 / Penpot if you prefer — note the swap in `PROJECT_STATE.md`.)

**Mobile, if it's a surface:** design phone-first (thumb-reachable primary action, bottom tab/nav,
native patterns); show the key mobile states (offline, loading, push-permission, empty); and decide
which flows are mobile vs. web-only in `../V_VALIDATE/FEATURE_MAP.md`. Record the mobile stack
(React Native/Expo, Flutter, or PWA) in `PROJECT_STATE.md`.

**Build to the flows, not to taste:**
- Walk every core flow from `02_DIAGRAMS/flows.md` end-to-end — no dead-ends.
- Every major entity in `04_DATA_MODEL/schema.prisma` gets **create / list / detail** screens.
- Use the real terms from `03_DICTIONARY` and realistic sample data.
- Design with i18n in mind (all source languages); keep an a11y baseline.

**Gate (interface-completeness):** every core flow clicks through; each major entity has its CRUD
screens; no flow leads to a missing screen.
