#!/usr/bin/env bash
set -euo pipefail

# Dev-only: symlink every skill in this repo (except deprecated/) into the
# local skill directories, so `git pull` keeps your own install current.

REPO="$(cd "$(dirname "$0")/.." && pwd)"
DESTS=("$HOME/.claude/skills" "$HOME/.agents/skills")

for DEST in "${DESTS[@]}"; do
  mkdir -p "$DEST"
  while IFS= read -r -d '' skill_md; do
    src="$(dirname "$skill_md")"
    name="$(basename "$src")"
    ln -sfn "$src" "$DEST/$name"
    echo "linked $name -> $src ($DEST)"
  done < <(find "$REPO/skills" -name SKILL.md -not -path '*/deprecated/*' -print0)
done
