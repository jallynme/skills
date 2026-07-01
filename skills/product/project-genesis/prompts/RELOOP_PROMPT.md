# Re-loop prompt — drive the Goal Loop until the goal is met

Paste this to run the loop toward a goal. The kit's engineered loop (`LOOP_ENGINEERING.md`): you give
a **GOAL** (not tasks); the Orchestrator drives **Review & Learn → Trigger → Investigate → Act →
Backlog → Assign → loop**, on **ReAct** turns, until the goal's stop conditions hold.

---

```
Re-loop <PROJECT_NAME>. GOAL: <what "done" looks like — or "use the GOAL in PROJECT_STATE.md">.
Run the Goal Loop one round at a time and log a trace line per turn.

REVIEW & LEARN
  Open PROJECT_STATE.md. Show me a short table: station status + version + current grade
  (_EVAL/SCORECARD.md); the open gap/bug log (id · station · severity); open Red-Team High challenges
  (REDTEAM_PREMORTEM.md) + unvalidated High assumptions; slices not DONE; open questions for me.
  Note what changed since last round (the "learn"); compact closed rounds into state.

TRIGGER
  Pick what fires this turn toward GOAL: (a) the highest-severity open gap / Red-Team High, or
  (b) the next slice (phase / variant / surface). Wait for my pick if it's a founder call.

INVESTIGATE  (Reason: state hypothesis + expected result + the gate it must hit)
  Diagnose the trigger; gather just-enough context; use deep-research / competitor work if needed.
  Map to the lowest affected station:
    - validation / business-model / pricing gap → V_VALIDATE → affected build stations
    - feature / scope gap                       → V Feature Discovery (COMPETITOR_FEATURE_MATRIX / FEATURE_MAP)
    - vocabulary/term gap                       → 3 → 4 → 7
    - flow/screen gap                           → 2 → 5 → 7
    - domain-rule/calc gap                      → 3 → 4 → 6 → 7
    - data-integrity/model gap                  → 4 → 7
    - a new variant/type                        → 2 → 3 → 4 → 5 → 7
    - GTM / unit-economics / metrics gap        → M_MONETIZE

ACT  (one step)
  Re-run ONLY the affected stations. Bump the version on every artifact you touch; supersede, never
  silently overwrite.

BACKLOG
  Capture results + every new finding: gaps → PROJECT_STATE gap log; new work → 07_BACKLOG stories;
  new assumptions → ASSUMPTION_REGISTER.md.

ASSIGN  (dispatch the panel — prefer parallel subagents)
  Send each item to the right roster agent (agents/ROSTER.md): CPO, CTO, QA, CFO, CMO, Counsel, Data
  + the <domain>-specialist. The Red-Team attacks the gate (REDTEAM_PREMORTEM.md). Update REVIEW_LOG.md,
  keep the regression baseline green, and score this round into _EVAL/SCORECARD.md (lower of my score
  and the Red-Team's stands).

LOOP — decide & report
  THIS ROUND IS CLEAN when ALL hold: zero open High/Med · no open Red-Team High · every story meets
  DoD · baseline green · grade ≥ target · panel + <domain>-specialist signed.
  Clean → bump version, mark the slice DONE, advance toward GOAL (next slice / M·Monetize / handoff pack).
  Not clean → loop again from TRIGGER. If thrashing (grade flat over 3 rounds) → change approach or
  escalate to me. Bring me only founder decisions. Report: the turn's trace line · gap counts by
  severity · the new grade. Stop when GOAL's stop conditions are met.
```

---

## Tips for driving the loop
- Keep rounds **small** — one trigger per turn. **Predict (Investigate) before you Act**, verify on Observe.
- The **Red-Team runs inside the loop** at every gate — a gate with no challenge wasn't reviewed.
- Watch the **grade trend** in `_EVAL/SCORECARD.md`; flat = thrashing, not progress.
- Every turn appends a **trace line** to the loop log in `PROJECT_STATE.md` — no silent turns.
- When a slice is clean, that's the moment to optionally generate the **engineering handoff pack**.
