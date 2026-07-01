#!/usr/bin/env bash
# Project Genesis — kit integrity linter.
# Checks: (1) no project fingerprints, (2) <PROJECT_NAME> placeholder consistency in prompts,
#         (3) relative markdown links resolve, (4) every roster agent file exists.
# Usage: scripts/lint.sh   (exit 0 = clean, 1 = problems)
set -uo pipefail
cd "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROBLEMS=0

echo "== 1) fingerprints (should be none) =="
HITS=$(grep -rniwE 'eximpify|eximpifly|thai|customs|pdpa|declaration|tariff' \
        --include='*.md' --include='*.prisma' . | grep -v '^./dist/' || true)
if [ -n "$HITS" ]; then echo "$HITS"; echo "  ✗ fingerprints found"; PROBLEMS=$((PROBLEMS+1)); else echo "  ✓ clean"; fi

echo "== 2) bare PROJECT_NAME in prompts (should be wrapped <PROJECT_NAME>) =="
BARE=$(grep -rnE '(^|[^<])PROJECT_NAME([^>]|$)' prompts/ || true)
if [ -n "$BARE" ]; then echo "$BARE"; echo "  ✗ unwrapped placeholders"; PROBLEMS=$((PROBLEMS+1)); else echo "  ✓ consistent"; fi

echo "== 3) relative markdown links resolve =="
BROKEN=$(mktemp)
while IFS= read -r f; do
  dir=$(dirname "$f")
  grep -oE '\]\([^)]+\)' "$f" 2>/dev/null | sed -E 's/^\]\(//; s/\)$//' | while IFS= read -r link; do
    case "$link" in http*|\#*|mailto:*|"") continue;; esac
    target="${link%%#*}"
    case "$target" in *'<'*|*'>'*) continue;; esac          # skip <placeholder> links in templates
    case "$target" in *.md|*.prisma|*.html|*.sh) ;; *) continue;; esac
    [ -e "$dir/$target" ] || echo "$f → $link" >> "$BROKEN"
  done
done < <(find . -name '*.md' -not -path './dist/*')
if [ -s "$BROKEN" ]; then cat "$BROKEN"; echo "  ✗ broken links"; PROBLEMS=$((PROBLEMS+1)); else echo "  ✓ all links resolve"; fi
rm -f "$BROKEN"

echo "== 4) roster agent files exist =="
MISS=0
for a in $(grep -oE '`[a-z-]+\.md`' agents/ROSTER.md | tr -d '`' | sort -u); do
  [ -f "agents/$a" ] || { echo "  missing agents/$a"; MISS=$((MISS+1)); }
done
if [ "$MISS" -gt 0 ]; then echo "  ✗ $MISS missing"; PROBLEMS=$((PROBLEMS+1)); else echo "  ✓ all present"; fi

echo "----"
if [ "$PROBLEMS" -eq 0 ]; then echo "✅ LINT PASS — kit is clean."; exit 0
else echo "❌ LINT: $PROBLEMS problem group(s)."; exit 1; fi
