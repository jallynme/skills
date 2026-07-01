#!/usr/bin/env bash
# Claude Code Stop hook — run the skills integrity linter and report (advisory, non-blocking).
# Install: see skills/misc/setup-claude-code-hooks. Wire under hooks.Stop.
set -uo pipefail

LINT="skills/product/project-genesis/scripts/lint.sh"
[ -f "$LINT" ] || exit 0

if bash "$LINT" >/tmp/skills-lint.out 2>&1; then
  echo "✅ skills lint clean"
else
  echo "⚠️  skills lint found issues — run: bash $LINT" >&2
  tail -n 20 /tmp/skills-lint.out >&2 || true
fi
exit 0
