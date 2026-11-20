#!/usr/bin/env bash
# todo.sh – kleine Todo-Verwaltung (Übungsanwendung für den Lernpfad)
set -euo pipefail

DATA_DIR="${TODO_DIR:-$(dirname "${BASH_SOURCE[0]}")/.todo-data}"
FILE="$DATA_DIR/todos.txt"

usage() {
  cat <<'U'
Benutzung: todo.sh <befehl> [argument]
  add <text>   Aufgabe hinzufügen
  list         Alle Aufgaben anzeigen
  done <nr>    Aufgabe als erledigt markieren
  help         Diese Hilfe
U
}

cmd_add() {
  [[ $# -ge 1 ]] || { echo "Fehler: Text fehlt" >&2; return 1; }
  printf '[ ] %s\n' "$*" >> "$FILE"
  echo "Hinzugefügt: $*"
}

cmd_list() {
  [[ -s "$FILE" ]] || { echo "Keine Aufgaben."; return 0; }
  nl -w2 -s'. ' "$FILE"
}

cmd_done() {
  local nr="${1:-}"
  [[ "$nr" =~ ^[0-9]+$ ]] || { echo "Fehler: Nummer fehlt" >&2; return 1; }
  [[ -s "$FILE" ]] && (( nr >= 1 && nr <= $(wc -l < "$FILE") )) \
    || { echo "Fehler: Aufgabe $nr existiert nicht" >&2; return 1; }
  sed -i "${nr}s/^\[ \]/[x]/" "$FILE"
  echo "Erledigt: Nr. $nr"
}

main() {
  mkdir -p "$DATA_DIR"; touch "$FILE"
  local cmd="${1:-help}"; shift || true
  case "$cmd" in
    add)  cmd_add "$@" ;;
    list) cmd_list ;;
    done) cmd_done "$@" ;;
    help|-h|--help) usage ;;
    *) echo "Unbekannter Befehl: $cmd" >&2; usage >&2; exit 1 ;;
  esac
}
main "$@"
