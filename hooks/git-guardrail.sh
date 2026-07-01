#!/usr/bin/env bash
# Claude Code PreToolUse hook — block dangerous git commands before they run.
# Install: see skills/misc/setup-claude-code-hooks. Wire under hooks.PreToolUse (matcher: "Bash").
# Protocol: reads the tool-call JSON on stdin; exit 2 + stderr message = BLOCK.
set -uo pipefail

input="$(cat)"
if command -v jq >/dev/null 2>&1; then
  cmd="$(printf '%s' "$input" | jq -r '.tool_input.command // empty')"
else
  cmd="$(printf '%s' "$input" \
    | grep -oE '"command"[[:space:]]*:[[:space:]]*"([^"\\]|\\.)*"' | head -1 \
    | sed -E 's/.*"command"[[:space:]]*:[[:space:]]*"//; s/"$//')"
fi
[ -z "$cmd" ] && exit 0

block() { echo "🛑 git-guardrail blocked a dangerous command: $1" >&2
          echo "   If you really mean it, run it yourself in a terminal." >&2; exit 2; }

case "$cmd" in
  *"git push"*"--force-with-lease"*) : ;;                    # allow the safe force
  *"git push"*"--force"*|*"git push"*" -f "*|*"git push -f"*) block "force push" ;;
esac
case "$cmd" in
  *"git reset --hard"*)                 block "git reset --hard (discards commits/changes)" ;;
  *"git clean -"*"f"*)                  block "git clean -f… (deletes untracked files)" ;;
  *"git checkout ."*|*"git checkout -- ."*) block "git checkout . (discards working changes)" ;;
  *"git branch -D "*)                   block "git branch -D (force-deletes a branch)" ;;
  *"git push"*"origin"*":"*)            block "git push origin :branch (deletes a remote branch)" ;;
  *"rm -rf "*"/"*)                      block "rm -rf on an absolute path" ;;
esac
exit 0
