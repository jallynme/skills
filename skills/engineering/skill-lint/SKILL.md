---
name: skill-lint
description: >-
  Lint a skills repo for structure and integrity before you ship or publish it. Checks every SKILL.md
  for valid frontmatter (name matches folder, trigger-rich description), resolves relative links,
  verifies `<placeholder>` consistency, and finds orphan resources. Use before a release, after adding
  or editing a skill, or when `npx skills add` behaves oddly. Triggers: "lint the skills", "check my
  SKILL.md", "is this skill repo valid", "skill lint", "validate skills before release".
---

# skill-lint

Integrity check for a `skills/<category>/<name>/SKILL.md` repo (the skills.sh layout).

## What it checks
1. **Frontmatter present & valid** — every `SKILL.md` starts with `---` YAML containing `name:` and a
   non-empty `description:`. The `name` should match the folder name.
2. **Description triggers** — the `description` lists real trigger phrases (not one vague sentence). A
   skill with a weak description won't auto-activate — flag anything under ~2 lines or with no "use
   when / triggers".
3. **Relative links resolve** — every `](path)` and referenced resource exists relative to its file.
4. **Placeholder consistency** — project-specific values use `<angle-brackets>`; no bare `PROJECT_NAME`.
5. **No orphan resources** — bundled files are referenced by their `SKILL.md` (warn if not).

## Run it
```bash
# repo-wide integrity (reuses the project-genesis linter):
npm run lint

# frontmatter sweep across all skills:
for f in $(find skills -name SKILL.md); do
  head -1 "$f" | grep -q '^---' || echo "MISSING frontmatter: $f"
  grep -q '^name:' "$f" || echo "MISSING name: $f"
  grep -q '^description:' "$f" || echo "MISSING description: $f"
done
```

## Fixing common failures
- **"never triggers"** → rewrite `description` with explicit "Use when… Triggers: …" phrases.
- **"broken link"** → make the path relative to the skill folder (skills must be self-contained so
  `npx skills add` can copy just the folder).
- **"unwrapped placeholder"** → wrap it: `PROJECT_NAME` → `<PROJECT_NAME>`.

## Note
Lint checks **structure** (frontmatter, links, placeholders). Review the **design** separately — tool
choices, the loop, context use, and safety — before you ship a skill.
