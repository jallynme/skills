# Red-Team / Pre-mortem Log — <PROJECT_NAME>

> Run by the **Red-Team agent** at every gate (and always at the Validate and Launch gates). Its job
> is to break it. A gate with no logged challenge here has not been reviewed. Each challenge needs a
> "to clear this, prove X" — answered with **evidence, not opinion.**

---

## Round <n> — <date> — gate: <Validate / Station N / Launch> — version v<x>

### Pre-mortem
> "It is 12 months from now and this failed. Write the post-mortem headline and the three causes."
- **Headline:** <…>
- **Cause 1:** <…>  **Cause 2:** <…>  **Cause 3:** <…>

### Challenges
| ID | Challenge (this fails because…) | Severity | To clear it, prove… | Evidence / answer | Status |
|---|---|---|---|---|---|
| RT-01 | <riskiest unvalidated assumption> | High | <the test + threshold> | <result> | open |
| RT-02 | <competitor/incumbent response> | Med | <…> | | open |
| RT-03 | <"we're doing this because it's cheap with AI, not because it matters"> | Med | <user pull> | | open |
| RT-04 | <regulatory/compliance landmine> | High | <Counsel check> | | open |
| RT-05 | <unit-economics break> | High | <CFO model> | | open |

### Verdict
- **Strongest unanswered challenge:** <…>
- **Can the Red-Team break it?** ⬜ Yes (gate blocked — see open Highs) · ⬜ No, and here's why: <…>

> Feed every High here into `PROJECT_STATE.md` (gap log) and `ASSUMPTION_REGISTER.md`. Don't argue
> the Red-Team down — out-evidence it.

---

<!-- Copy the Round block per gate. Keep all rounds — the audit trail of what you stress-tested. -->
