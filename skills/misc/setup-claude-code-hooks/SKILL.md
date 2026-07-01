---
name: setup-claude-code-hooks
description: >-
  Install this repo's Claude Code hooks — a git guardrail that blocks dangerous commands (force-push,
  reset --hard, clean -f, checkout ., branch -D, rm -rf /) and a lint-on-stop check. Use when setting
  up a new machine or repo, or when you want an agent to stop being able to nuke your git history.
  Triggers: "install the hooks", "set up git guardrails", "block dangerous git", "add claude code hooks".
---

# Setup Claude Code Hooks

Wires the scripts in **`hooks/`** into Claude Code so they run automatically.

## What you get
- **`hooks/git-guardrail.sh`** — a **PreToolUse** hook (matcher `Bash`) that **blocks** dangerous
  commands before they execute: `git push --force`, `git reset --hard`, `git clean -f…`,
  `git checkout .`, `git branch -D`, remote-branch deletes, and `rm -rf /…`. (`--force-with-lease` is allowed.)
- **`hooks/lint-on-stop.sh`** — a **Stop** hook that runs the skills linter and warns (non-blocking).

## Install
1. Make them executable:
   ```bash
   chmod +x hooks/*.sh
   ```
2. Add to **`.claude/settings.json`** (repo-local) or `~/.claude/settings.json` (global) — use an
   absolute path to the scripts:
   ```json
   {
     "hooks": {
       "PreToolUse": [
         { "matcher": "Bash", "hooks": [
           { "type": "command", "command": "$CLAUDE_PROJECT_DIR/hooks/git-guardrail.sh" } ] }
       ],
       "Stop": [
         { "hooks": [
           { "type": "command", "command": "$CLAUDE_PROJECT_DIR/hooks/lint-on-stop.sh" } ] }
       ]
     }
   }
   ```
3. Restart the session (hooks load at startup). Test: ask the agent to `git push --force` — it should be blocked.

## Notes
- Hooks are a Claude Code feature; the exact `settings.json` schema can evolve — **verify against the
  current Claude Code hooks docs** before relying on it in CI.
- Keep hooks fast and side-effect-free on `PreToolUse`; they run on every matching tool call.
- To remove: delete the entries from `settings.json`.
