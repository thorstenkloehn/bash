# Bewertungskriterien für den Modus `Loesung`

Prüfe die Lösung des Schülers immer passend zur aktuellen Kursstufe (keine Profi-Anforderungen aus L3 bereits in L1 verlangen!):

## 🟢 L1 Grundlagen – Checkliste
- [ ] Läuft das Skript ohne Syntax- oder Laufzeitfehler (`bash <datei>.sh`, Syntaxcheck mit `bash -n`)?
- [ ] Sind alle fachlichen Anforderungen der Aufgabe erfüllt?
- [ ] Beginnt das Skript mit einem Shebang (`#!/usr/bin/env bash`)? (ab Kapitel 01, Lektion 04)
- [ ] Wurden sprechende Namen gewählt (Variablen & Funktionen in `snake_case`, Konstanten/Umgebungsvariablen in `UPPER_SNAKE_CASE`)?
- [ ] Werden die in der Lektion geforderten Sprachmittel (z. B. `[[ ]]`, `case`, Arrays, `local`, `trap`) korrekt eingesetzt?
- [ ] Sind Variablenexpansionen korrekt gequotet (`"$var"`, `"${arr[@]}"`)? (ab `quoting`)
- [ ] Wurde ab `strict_mode` `set -euo pipefail` sinnvoll verwendet?

## 🟡 L2 Fortgeschritten – Checkliste (zusätzlich zu L1)
- [ ] Ist `shellcheck` fehlerfrei bzw. sind Ausnahmen begründet (`# shellcheck disable=...`)?
- [ ] Ist der Code mit `shfmt` einheitlich formatiert?
- [ ] Gibt es einen Usage-Text (`--help`) und saubere Optionsverarbeitung (`getopts`)?
- [ ] Sind Aufräumarbeiten über `trap` abgesichert (temporäre Dateien via `mktemp`)?
- [ ] Sind Funktionen klein, entkoppelt und mit `bats` testbar? Sind Skripte idempotent?

## 🟠 L3 Profi (Plugin-Entwicklung) – Checkliste (zusätzlich zu L1 & L2)
- [ ] Werden externe Eingaben (JSON von `stdin`, CLI-Argumente, `.env`) mit `jq` bzw. expliziten Prüfungen validiert, bevor sie verwendet werden?
- [ ] Werden Fehler mit klaren Meldungen auf `stderr` und passenden Exit-Codes behandelt?
- [ ] Ist die Fachlogik (Funktionen in `lib/`) von der Ein-/Ausgabe (`bin/`) getrennt?
- [ ] Gibt es keinen versteckten globalen veränderbaren Zustand (Variablen mit `local`, Namespaces/Präfixe)?
- [ ] Werden bei Claude Code Hooks `stdout` (nur strukturiertes JSON/Protokoll) und `stderr` (Logs/Fehler) sauber getrennt und Exit-Code `2` zum Blockieren korrekt genutzt?
