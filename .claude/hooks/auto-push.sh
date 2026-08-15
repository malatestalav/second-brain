#!/usr/bin/env bash
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:$PATH"
set +e

VAULT_DIR="/Users/antoniomalatesta/Desktop/Second Brain"
cd "${CLAUDE_PROJECT_DIR:-$VAULT_DIR}" || exit 0

LOG="$VAULT_DIR/.claude/hooks/auto-push.log"
ts() { date '+%Y-%m-%d %H:%M:%S'; }

# Non è un repo git
git rev-parse --git-dir >/dev/null 2>&1 || { echo "$(ts) skip: non repo git" >> "$LOG"; exit 0; }

# Non ha remote 'origin'
git remote get-url origin >/dev/null 2>&1 || { echo "$(ts) skip: no origin" >> "$LOG"; exit 0; }

# GUARDIA: agisci solo su questo repo, mai su altri
git remote get-url origin 2>/dev/null | grep -q "second-brain" || { echo "$(ts) skip: repo diverso" >> "$LOG"; exit 0; }

# Stage all changes
git add -A 2>>"$LOG"

# Se non c'è nulla da committare, prova a pushare i commit pendenti
if git diff --cached --quiet; then
  echo "$(ts) niente da committare" >> "$LOG"
  git push origin HEAD >>"$LOG" 2>&1 && echo "$(ts) push pendenti: OK" >> "$LOG"
  exit 0
fi

# Commit
git commit -m "auto: $(ts)" >>"$LOG" 2>&1 && echo "$(ts) commit: OK" >> "$LOG"

# Push
git push origin HEAD >>"$LOG" 2>&1 && echo "$(ts) push: OK" >> "$LOG" || echo "$(ts) push FALLITO (offline?)" >> "$LOG"

exit 0
