# E · EXECUTIVE SUMMARY (CEO one-pager)

Produced at **Station E** — a synthesis bookend that runs **after Station 9** and **before the
M · Monetize/Launch gate**, and is **refreshed at every version bump**. It's the single page a CEO,
founder, or investor reads to understand the venture at a glance.

**Output:** `EXECUTIVE_SUMMARY.html` — one self-contained HTML page (copy nothing else). Same stack
as the wireframes: **1-page HTML · Tailwind (CDN) · shadcn-style tokens · plain HTML, no React/TS**,
plus **Mermaid (CDN)** for the diagram. Opens in a browser and prints to a clean PDF.

**It must be:**
- **Humanized** — lead with the story (problem → who → why now → what we built → the one proof
  number → the ask). Write like a person briefing the CEO, not a status dump.
- **Best-visualized** — every section earns a visual: KPI cards, a **roadmap timeline** (phase status
  done/in-progress/next), a **status board** (working / in-flight / risks & asks), and **one diagram**.
- **Sourced** — pull real numbers from `../PROJECT_STATE.md`, `../06_SDLC/SDLC_MASTER_SPEC.md`,
  `../_EVAL/SCORECARD.md`, `../M_MONETIZE/METRICS_TREE.md`. Every claim traces to one of these.

**Lead / review:** CPO + CMO (with the Orchestrator), attacked by Red-Team; see `../../agents/ROSTER.md`.

**Skills to invoke for depth** (don't improvise these):
- **`product-management:stakeholder-update`** — the humanized executive narrative + the ask.
- **`product-management:roadmap-update`** — the phase roadmap + current status.
- **`frontend-design`** — make the HTML distinctive and genuinely well-visualized, not templated.
- **Mermaid** (built in) or **`figma:figma-generate-diagram`** — the one at-a-glance diagram.

**Gate:** a non-technical reader understands *what we're building, where we are, and what we need*
in under two minutes; every number traces to a source; it prints clean. This is a required input to
the **M** launch gate.
