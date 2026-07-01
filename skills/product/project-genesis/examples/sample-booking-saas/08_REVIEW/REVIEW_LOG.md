# Review Log — Sample-Booking (filled example, Station 8)

> Panel from `agents/ROSTER.md`. "Clean" = zero High/Med open · no Red-Team High · grade ≥ target ·
> panel + specialist signed.

---

## Round 1 — 2026-06-29 — version v2

### Panel findings
| ID | Agent | Sev | Artifact | Finding | Fix | Status |
|---|---|---|---|---|---|---|
| R1-01 | CTO | High | 04_DATA_MODEL | Appointment has no timezone → cross-tz off by hours | add `timezone` snapshot | closed (v3) |
| R1-02 | QA | High | 07_BACKLOG/EPIC-03 | refund-window AC missing | add AC + TC | closed (v2) |
| R1-03 | Counsel | Med | V_VALIDATE | "refunded when you show" copy must not imply guaranteed refund on late-cancel | tighten policy copy | closed |
| R1-04 | CFO | Low | M_MONETIZE | verify Stripe fee doesn't break margin at $19 | model it | closed |

### Red-Team → `REDTEAM_PREMORTEM.md` — 1 High raised (Calendly adds deposits), answered with the mobile+wedge argument.

### Grade — v2 = **B+** (Buildable/Viable held it back; tz bug + refund AC open).

### Sign-off (v2)
CPO ✅ · Specialist ✅ · CTO ✅ · QA ⬜ (tz) · CFO ✅ · CMO ✅ · Counsel ✅ · Data ⬜ · Red-Team ⬜ → **loop**

---

## Round 2 — 2026-06-30 — version v3

### Panel findings
| ID | Agent | Sev | Artifact | Finding | Fix | Status |
|---|---|---|---|---|---|---|
| R2-01 | Design | Med | 05_WIREFRAMES | mobile booking has no offline/confirmation state | add states (G-003) | **open** |

### Red-Team — no new High; prior challenge answered (benchmark shows Calendly mobile 3.4★).

### Regression baseline — 🟢 green; added tz + refund-window cases so they can't return.

### Grade — v3 = **A** (all High closed; one Med UX gap open).

### Sign-off (v3)
CPO ✅ · Specialist ✅ · CTO ✅ · QA ✅ · CFO ✅ · CMO ✅ · Counsel ✅ · Data ✅ · Red-Team ⬜ (awaits G-003)

**Round result:** 🟨 not clean — 1 Med open (G-003). Loop → re-run 5 → 7, then re-review to close A.
