#!/usr/bin/env bash
# Einfacher Test ohne Zusatzwerkzeuge: ./tests/test.sh
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export TODO_DIR="$(mktemp -d)"; trap 'rm -rf "$TODO_DIR"' EXIT
t="$here/todo.sh"; fail=0
check() { if [[ "$2" == "$3" ]]; then echo "ok   $1"; else echo "FAIL $1: erwartet '$2', erhalten '$3'"; fail=1; fi; }

check "leere Liste"   "Keine Aufgaben."   "$("$t" list)"
"$t" add "Milch kaufen" >/dev/null
check "add + list"    " 1. [ ] Milch kaufen" "$("$t" list)"
"$t" done 1 >/dev/null
check "done"          " 1. [x] Milch kaufen" "$("$t" list)"
"$t" done 9 2>/dev/null && rc=0 || rc=$?
check "done ungültig" "1" "$rc"
exit "$fail"
