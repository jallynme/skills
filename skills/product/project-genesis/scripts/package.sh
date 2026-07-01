#!/usr/bin/env bash
# Project Genesis — package the installable skill + the portable kit.
# Usage:  scripts/package.sh
set -euo pipefail

KIT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$KIT_ROOT"
mkdir -p dist

# 1) Installable orchestrator skill  (.skill = a zip of the skill directory)
rm -f dist/project-genesis.skill
( cd skills && zip -rq "../dist/project-genesis.skill" project-genesis -x '*.DS_Store' )

# 2) Portable full kit (keep this in your workspace — it holds the agents/templates/playbook)
rm -f dist/project-genesis-kit.zip
zip -rq dist/project-genesis-kit.zip . -x 'dist/*' -x '*.DS_Store' -x '.git/*'

cat <<EOF
✅ dist/project-genesis.skill     → install via Settings → Capabilities (auto-triggers the workflow)
✅ dist/project-genesis-kit.zip   → the full portable kit (agents · templates · playbook · prompts)

Note: the .skill is the trigger/orchestrator; the roster, templates, and LOOP_ENGINEERING live in the
kit folder. Keep the kit in your workspace so the skill's references resolve.
EOF
