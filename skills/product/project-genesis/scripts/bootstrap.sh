#!/usr/bin/env bash
# Project Genesis — scaffold a new project from the kit template.
# Usage:  scripts/bootstrap.sh <PROJECT_NAME> [target_dir]
#   <PROJECT_NAME>  name of the new project folder (no spaces)
#   [target_dir]    where to create it (default: current directory)
set -euo pipefail

KIT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="${1:?usage: bootstrap.sh <PROJECT_NAME> [target_dir]}"
TARGET="${2:-$PWD}"
DEST="$TARGET/$NAME"

if [ -e "$DEST" ]; then
  echo "$DEST already exists — choose another name or remove it first."; exit 1
fi

cp -R "$KIT_ROOT/template" "$DEST"

# Seed the project name into the scaffolded files (portable sed: BSD/macOS + GNU).
find "$DEST" -type f \( -name '*.md' -o -name '*.prisma' \) -exec sed -i.bak "s/<PROJECT_NAME>/$NAME/g" {} +
find "$DEST" -name '*.bak' -delete

cat <<EOF
✅ Created $DEST  (from the kit template)

Next:
  1) Drop your source docs in:  $DEST/00_INTAKE/
  2) Start the run — either:
       • paste  $KIT_ROOT/prompts/00_KICKOFF.md  (set GOAL + DOMAIN + big-picture features), or
       • say:   "run Project Genesis on $NAME"
  3) The swarm runs V·Validate → Feature Discovery → 1–9 → M·Monetize, stopping at your gates.

Tip: keep this kit folder in your workspace so the agents/, playbook, and LOOP_ENGINEERING resolve.
EOF
