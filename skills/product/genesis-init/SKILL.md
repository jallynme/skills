---
name: genesis-init
description: >-
  Initialize a new project-genesis project in the current folder — scaffold the template, set the goal,
  and get ready to run the venture loop. Use at the very start of a new build. Triggers: "init project
  genesis", "/genesis-init", "start a new project here", "scaffold project-genesis in this folder", "set
  up the venture kit", "new venture <name>". Requires the `project-genesis` skill installed alongside it
  (for the template + loop). After init, run `/genesis-interview` (from just an idea) or drop docs in
  00_INTAKE/ and run the loop.
---

# /genesis-init — scaffold a project-genesis project here

Sets up a fresh project so the swarm can run the venture loop against it.

## 1. Gather the minimum (ask only what's missing — keep it to three)
- **PROJECT_NAME** — a short folder name, no spaces (e.g. `acme-booking`).
- **GOAL** — one line, what "done" looks like (default: *"validate + scope a launch-ready MVP"*).
- **DOMAIN** — one line (e.g. *"appointment booking for solo providers"*). *"not sure yet"* is fine —
  `/genesis-interview` will research it.

> Don't interrogate here. This is scaffolding; the thinking happens in `/genesis-interview` or the loop.

## 2. Scaffold
- If the `project-genesis` skill ships `scripts/bootstrap.sh`, run it:
  ```bash
  bash <path-to>/project-genesis/scripts/bootstrap.sh <PROJECT_NAME>
  ```
- Otherwise, copy the `project-genesis` skill's **`template/`** into `<PROJECT_NAME>/` (the stations
  `V_VALIDATE` · `00_INTAKE` … `09_SPECIALIST` · `M_MONETIZE` · `_EVAL` + `CLAUDE.md` +
  `PROJECT_STATE.md`) and replace `<PROJECT_NAME>` placeholders with the real name.
- **Do not overwrite** an existing `<PROJECT_NAME>/` — stop and ask if it exists.

## 3. Seed the state
Open `<PROJECT_NAME>/PROJECT_STATE.md` and set: the **🎯 Goal**, **Project**, and **Domain** at the top.
Leave every station `⬜ todo`.

## 4. Tell the user what's next (two paths)
- **From just an idea →** run **`/genesis-interview`** — answer a few one-liners; it does the deep
  research + competitor analysis and fills Validate + Feature Discovery for you. *(recommended)*
- **From existing material →** drop your docs into `<PROJECT_NAME>/00_INTAKE/`, then say
  *"run Project Genesis on `<PROJECT_NAME>`"* (or paste `project-genesis/prompts/00_KICKOFF.md`).

## Output
A ready-to-run project folder + a one-line status: *"`<PROJECT_NAME>` initialized · goal set · next: `/genesis-interview`."*
