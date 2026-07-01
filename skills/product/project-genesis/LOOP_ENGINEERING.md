# Loop Engineering — the ReAct execution substrate

> How the whole kit *runs*. Agentic work is a **loop, not a script**, so the kit engineers the loop
> explicitly: durable state, a small context per turn, a **Reason → Act → Observe** step, guardrails,
> stop conditions, and a trace. Every agent and every station obeys this. Read it once; it's the
> operating system under the pipeline.

---

## 1. The ReAct micro-loop (every agent, every step)

```
   ┌──────────► REASON ──────► ACT ──────► OBSERVE ──────┐
   │           (Thought)     (one step)   (verify+log)    │
   │                                                      │
   └──────────────── decide: loop / advance / escalate ◄──┘
```

- **Reason (Thought).** State the step's goal, your hypothesis, the plan, and the **expected result +
  which exit gate it must satisfy.** Predicting the outcome *before* acting is what makes Observe
  meaningful — without a prediction you can't tell success from drift.
- **Act.** Take **exactly one step** — produce/modify one artifact, call one skill, spawn one
  subagent, or ask the founder one decision. One action per turn keeps the loop debuggable and
  reversible.
- **Observe.** Read the **actual** result; compare it to the expected; check the station's **exit
  gate + the invariants** (§4); record a one-line observation (with a severity if it's a finding).
  The **Red-Team is part of Observe** at any gate — an observation with no Red-Team challenge isn't an
  observation, it's a rubber stamp.
- **Decide.** Gate met → **advance**. Not met → **loop** (re-Reason with the new observation). Blocked
  or it's a founder call → **escalate**. Never advance past an unobserved gate.

Each turn appends one **ReAct trace** line (§5): `Thought → Action → Observation → Decision`.

---

## 2. The engineered macro-loop (the venture loop)

The pipeline (V · Validate → Feature Discovery → 1–9 → M · Monetize, then re-loop) is **one big loop**.
Engineer it with the five parts every robust loop needs:

| Part | In this kit |
|---|---|
| **State** (single source of truth) | `PROJECT_STATE.md` — station status, version, gaps, grade, assumptions, open questions, **loop log**. Durable across sessions. |
| **Context per iteration** | only what *this* step needs — the lowest affected station's inputs + the dictionary + the specific gap. Not the whole repo. |
| **Transition function** | the **re-run map** (which stations to re-touch for a given gap — see RELOOP / REVIEW_LOG). |
| **Termination** | zero open High · no open Red-Team High · **grade ≥ target** · gate met. (§ stop conditions) |
| **Observability** | the **scorecard trend**, the **gap burn-down**, rounds-to-A. Flat trend = thrashing. |

**One iteration of the macro-loop:** read State → pick the lowest affected station → run that station's
ReAct micro-loop → run the review (panel + Red-Team) ReAct round → score → write State → decide.

---

## 2A. The Goal Loop (the kit's named operating loop)

The founder kicks the loop with a **goal prompt** — a high-level outcome, *not* step-by-step
instructions (e.g. *"validate and scope a launch-ready MVP for `<domain>`"*, *"get Phase 1 to grade
A"*, *"reach a GO decision this week"*). The Orchestrator decomposes the goal and drives this loop
until the goal's stop conditions (§3) hold:

```
   ┌─► REVIEW & LEARN ─► TRIGGER ─► INVESTIGATE ─► ACT ─► BACKLOG ─► ASSIGN ─┐
   │   read state +      goal /      Reason +       do     capture    dispatch │
   │   learn from        gap /       research /     the     work as    to roster │
   │   last round        event       diagnose       work    tasks      agents    │
   └────────────────────────────────────  loop  ◄────────────────────────────────┘
```

| Stage | What happens | ReAct mapping |
|---|---|---|
| **Review & Learn** | Read `PROJECT_STATE.md`; learn from the last round (what worked, what regressed); compact closed rounds. | Observe (carry-over) |
| **Trigger** | What fires this turn: the **goal**, the highest open gap, a Red-Team High, a new variant, or a schedule. | — |
| **Investigate** | Diagnose the trigger: gather just-enough context, run `deep-research`/competitor work, root-cause the gap; form the hypothesis + expected result + gate. | **Reason** |
| **Act** | Take the **one** step — run the affected station / produce the artifact / fix. | **Act** |
| **Backlog** | Capture results + every new finding: gaps → `PROJECT_STATE` gap log; work → `07_BACKLOG` stories; assumptions → register. | Observe → record |
| **Assign** | Dispatch each backlog item to the right roster agent (prefer parallel subagents); the Red-Team takes the gate. | Act (dispatch) |
| **→ Loop** | Score, write state, decide (advance / loop / escalate), return to Review & Learn. | **Decide** |

**Goal-prompt assumption.** The founder gives **goals, not tasks**. The Orchestrator turns the goal
into triggers, investigates, acts, backlogs the rest, and assigns — pausing only at **founder gates**
(GO/NO-GO, scope-lock, pricing, launch, unresolved Red-Team High). The goal is recorded at the top of
`PROJECT_STATE.md`; every turn serves it; the loop halts when the goal's stop conditions are met.

## 3. Stop conditions (so the loop always terminates)

A round/slice is **done** when **all** hold:
- gap/bug log: **zero High/Med open**
- Red-Team: **no open High challenge**
- every story meets **Definition of Done**; regression baseline **green**
- **grade ≥ target** (A to advance a phase · S to launch/fundraise)
- the panel + the `<domain>-specialist` signed the current version

If a stop condition can't be met, the loop **escalates** (founder decision or change of approach) — it
does **not** spin. See §4.4.

---

## 4. Loop-engineering principles (the guardrails)

1. **One source of truth.** Read `PROJECT_STATE.md` at the **start** of every iteration; write it at the
   **end**. The loop has no memory except the state — so the state must be honest.
2. **One action per turn.** Predict → act → verify. No blind multi-step leaps past a gate.
3. **Idempotent re-entry.** Re-running a station is safe: **supersede + version**, never duplicate or
   silently overwrite. You can always re-enter at the lowest affected station.
4. **Bounded iteration + thrashing detection.** If the grade isn't climbing / the gap count isn't
   falling across **N rounds (default 3)**, **stop and change approach** (or escalate) — don't keep
   spinning the same loop.
5. **Context compaction.** On long runs, summarize closed rounds into `PROJECT_STATE.md` and drop their
   detail from the working context. **Keep the trace, shed the noise** — a bloated context is a slow,
   drifting loop.
6. **Guardrails every Observe.** The kit's invariants are checked on every pass: validate-before-build ·
   dictionary-is-the-naming-authority · capture-hard-rules-exactly · versioned reference data ·
   server-authoritative · audit/version everything.
7. **Human checkpoints are hard stops.** Founder-decision gates pause the loop unconditionally: GO/NO-GO,
   scope-lock, pricing, launch, and any unresolved **Red-Team High**.
8. **Fail → backoff → escalate.** A failed action earns **one** re-Reason; still failing → log it and
   escalate. No infinite retry.
9. **No silent turns.** Every iteration emits an observation. The trace **is** the audit log.
10. **The Red-Team is in the loop, not beside it.** It runs inside Observe at every gate.

---

## 5. The ReAct trace format

Append one block per iteration to the **loop log** in `PROJECT_STATE.md` (and to `REVIEW_LOG.md` for
review rounds):

```
[R<round>.<iter>] Stage <Review&Learn|Trigger|Investigate|Act|Backlog|Assign> · Station <V|1..9|M> · v<n> · <date>
Trigger:       <what fired this turn — the goal / a gap / a Red-Team High / a new variant>
Investigate:   <hypothesis · expected result + the exit gate it must satisfy>          (Reason)
Act:           <the ONE step taken — artifact / skill / subagent / founder ask>
Observe+Learn: <actual result · gate met? · grade · finding (severity) · invariant check>
Backlog→Assign:<new items captured → which roster agent gets each>
Decision:      advance → <next> | loop → re-run <stations> | escalate → <founder decision>
```

This trace makes a long, multi-session build **replayable and auditable** — anyone can read the log and
know exactly what was tried, what was observed, and why the loop moved where it did.

---

## 6. How it maps to the kit

- **Each station = one ReAct cycle.** Reason about the inputs → Act to produce the artifact → Observe
  against the exit gate. The station's "Exit gate" is the Observe check.
- **The review loop (Station 8) = ReAct rounds.** Reason (which gap is highest) → Act (fix + re-run the
  affected stations) → Observe (panel + Red-Team + score the rubric) → decide.
- **The bookends (Validate, Monetize) = ReAct cycles whose Observe is a founder gate.**
- **The Orchestrator runs the macro-loop**; **each agent runs its own ReAct micro-loop** inside its step
  (see `agents/ROSTER.md`).

> The point of loop engineering: the kit doesn't "try to do a good job" — it runs a **bounded,
> observable, terminating loop** that drives the grade up until the stop conditions are met, then halts.
