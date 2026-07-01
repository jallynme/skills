# Feature Map — <PROJECT_NAME>  (Station V — Feature Discovery)

> The decision artifact for the **lean start**: you give the **domain + big-picture features**; the
> swarm (Competitor Analyst + CPO + deep-research) researches and **proposes a full feature set**;
> you pick the scope. This feeds Station 1 (knowledge), Station 6 (phases), and Station 7 (backlog).
>
> Owned by **CPO + Competitor Analyst**, attacked by **Red-Team** ("which of these is scope creep?").

## 1. Founder input (the big picture — what you told the swarm)
- **Domain:** <one line>
- **Big-picture features I want:** <the 2–5 things you came in with>
- **Hard constraints / non-goals:** <…>

## 2. Researched + suggested features (the swarm's proposal)
> Classified by **Kano** (Basic = table-stakes, Performance = more-is-better, Delighter = wow) and
> **MoSCoW** for this build. "Source" = competitor/review/research evidence (no opinion-only rows).
> ⭐ = the swarm is *suggesting* this; you didn't ask for it.

| Feature | From | Kano | MoSCoW (v1) | Surface (Web / Mobile / Admin) | Effort | Why / evidence | Decision |
|---|---|---|---|---|---|---|---|
| <core action> | founder | Performance | Must | Web + Mobile | M | the wedge | ⬜ in / ⬜ out |
| <auth/SSO> | competitors | Basic | Must | all | S | table-stakes | ⬜ |
| ⭐ <thing you didn't mention> | research | Basic | Must | Web | M | market expects it | ⬜ |
| ⭐ <differentiator idea> | reviews of C2 | Delighter | Should | Mobile | L | their #1 complaint | ⬜ |
| <nice-to-have> | competitor | Performance | Could | Web | M | parity later | ⬜ |
| <out-of-scope-for-now> | founder | — | Won't (v1) | — | — | defer | ⬜ |

## 3. The wedge (must be explicit)
- **We win because:** <the 1 differentiator + 1 delighter we go deep on> — everything else is parity.

## 4. Chosen scope → walking skeleton
- **v1 / walking skeleton (Must, thinnest end-to-end):** <list>
- **Next (Should):** <list> · **Later (Could):** <list> · **Won't (now):** <list>
- **Per surface:** Web = <…> · Mobile = <…> · Admin = <…>

## 5. Sign-off
- Red-Team scope challenge: <which "Must" is actually a "Should"?> · answered: <…>
- **Founder decision (scope locked for v1):** ⬜ approved — date <…>

> Locked scope flows into Station 6 (phase plan) and Station 7 (epics/stories). Re-open this map via
> the loop when research or users change the picture.
