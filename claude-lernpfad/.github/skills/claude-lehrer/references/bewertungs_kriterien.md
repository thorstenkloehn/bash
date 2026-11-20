# Bewertungskriterien

## Immer
- Aufgabe erfüllt, Skript/Config läuft fehlerfrei (`bash -n`, Testaufruf).
- Shebang `#!/usr/bin/env bash`, Variablen in Anführungszeichen.
- Lesbare Namen, kurze Kommentare dort, wo es nötig ist.

## Ab L2 (Hooks)
- `shellcheck` ohne Warnungen.
- Eingabe von stdin mit `jq` gelesen, nicht per `grep`/`sed` aus JSON gefischt.
- Korrekte Exit-Codes: `0` = ok, `2` = blockieren (Grund auf `stderr`).
- Hook verträgt leere/fremde Eingaben ohne Absturz (`set -euo pipefail`, Defaults).
- Hook ist schnell und hat keine Nebenwirkungen außerhalb des Projekts.

## Ab L3 (Automatisierung, Plugins)
- Keine Geheimnisse im Code; Pfade über `$CLAUDE_PROJECT_DIR` bzw. `${CLAUDE_PLUGIN_ROOT}`.
- Ausgaben maschinenlesbar (`--output-format json`), Fehler mit Exit-Code ≠ 0.
- Plugin-Struktur vollständig und installierbar.
