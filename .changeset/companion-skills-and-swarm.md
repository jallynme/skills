---
"jallynme-skills": patch
---

project-genesis: wire in external **companion skills** and expand the agent swarm.

- **Companion skills manifest** (`COMPANION_SKILLS.md`): 11 optional, least-privilege external skill
  packs the swarm can call for depth, each mapped to a station/agent — spec-kit, addyosmani/agent-skills,
  superpowers, graphify, claude-obsidian, kepano/obsidian-skills, agency-agents, andrej-karpathy-skills,
  headroom, caveman, claude-mem. Wired through SKILL.md (§0.5 swaps + new §0.7 + §5 pointer),
  `agents/ROSTER.md` (the `Backed by` column), and both READMEs. Fallback to the defaults if a pack
  isn't installed; the domain specialist + Red-Team still own the gate.
- **Five new sub-agents** (build & launch specialists) in `agents/`: Security Engineer/AppSec,
  DevOps/SRE, AI/ML Engineer, Technical Writer, Customer Success — each registered in ROSTER (tiers,
  roster table, dispatch map incl. new Handoff + Post-launch rows) and the SKILL §0.6 swarm table.
- **Emoji cleanup**: removed all emoji across the repo except the semantic set — ✅ done, ⬜ todo,
  🔴🟡🟢 RAG severity, 🟦🟪🟩🟧 task lanes, 🟨 WIP, 🔁 loop — replacing the rest with meaning-preserving
  ASCII (e.g. matrix legends `~ partial`/`x none`/`? unknown`, script output `OK:`/`FAIL:`).
