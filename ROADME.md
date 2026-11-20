# Bash-Lernpfad Roadmap (Anfängerfreundlich: Kapitel & Einzel-Lektionen)
**Ziel:** Schritt für Schritt von Null bis zu eigenen **Claude Code Hooks, CLI-Tools und Plugins** in Bash

---

## 🟢 L1 Grundlagen (Anfänger – 1 Konzept pro Lektion)

### Kapitel 01: Erste Schritte im Terminal
- **Lektion 01:** Erste Ausgabe mit `echo`, Kommentare (`#`) & Shebang (`#!/usr/bin/env bash`)
- **Lektion 02:** Im Dateisystem navigieren (`pwd`, `ls`, `cd`)
- **Lektion 03:** Dateien & Ordner verwalten (`mkdir`, `touch`, `cp`, `mv`, `rm`)
- **Lektion 04:** Skripte ausführbar machen & starten (`chmod +x`, `./skript.sh`)
- **Lektion 05:** Hilfe finden (`man`, `--help`, `help`, Tab-Vervollständigung)

### Kapitel 02: Variablen & Benutzereingabe
- **Lektion 01:** Variablen anlegen und lesen (`name="Otto"`, `$name`)
- **Lektion 02:** Anführungszeichen: `"..."` vs. `'...'` & Escapes
- **Lektion 03:** Benutzereingabe mit `read` (`-p`, `-r`)
- **Lektion 04:** Rechnen mit `$(( ))` (`+`, `-`, `*`, `/`, `%`)
- **Lektion 05:** Skript-Argumente (`$1`, `$#`, `$@`, `$0`)

### Kapitel 03: Kontrollfluss (Entscheidungen & Schleifen)
- **Lektion 01:** Entscheidungen mit `if` / `else` und `[[ ]]`
- **Lektion 02:** `elif` & Logik (`&&`, `||`, `!`)
- **Lektion 03:** Datei-Tests (`-e`, `-f`, `-d`, `-r`, `-x`, `-z`, `-n`)
- **Lektion 04:** `for`-Schleifen (Listen, Globbing, `{1..5}`, C-Stil)
- **Lektion 05:** `while`-Schleifen sowie `break` und `continue`
- **Lektion 06:** Mehrfachauswahl mit `case` / `esac`

### Kapitel 04: Arrays & String-Operationen
- **Lektion 01:** Indizierte Arrays (`arr=(a b c)`, `${arr[0]}`, `+=`)
- **Lektion 02:** Arrays durchlaufen (`"${arr[@]}"`) & Slicing (`${arr[@]:1:2}`)
- **Lektion 03:** Assoziative Arrays (`declare -A`) – Schlüssel-Wert-Paare
- **Lektion 04:** Parameter-Expansion (`${#var}`, `${var#...}`, `${var%...}`, `${var//a/b}`)

### Kapitel 05: Funktionen & Sichtbarkeit
- **Lektion 01:** Eigene Funktionen schreiben und aufrufen
- **Lektion 02:** Parameter (`$1`) & Rückgabe (`return`, `echo` + `$(...)`)
- **Lektion 03:** Standardwerte mit `${1:-default}`
- **Lektion 04:** Sichtbarkeit: `local` vs. globale Variablen

### Kapitel 06: Basis-Fehlerbehandlung
- **Lektion 01:** Exit-Codes (`$?`, `exit`, `||`-Fehlerabfang)
- **Lektion 02:** Strikter Modus: `set -euo pipefail`
- **Lektion 03:** Aufräumen mit `trap ... EXIT` und `mktemp`

### Kapitel 07: Ein-/Ausgabe, Pipes & Module
- **Lektion 01:** Umleitungen (`>`, `>>`, `<`, `2>`, `2>&1`)
- **Lektion 02:** Programme verketten mit Pipes (`|`)
- **Lektion 03:** Here-Documents (`<<EOF`) & Here-Strings (`<<<`)
- **Lektion 04:** Code auf mehrere Dateien aufteilen (`source` / `.`)

## 🟡 L2 Fortgeschritten

### Kapitel 01: Textverarbeitung
- **Lektion 01:** Suchen mit `grep` & regulären Ausdrücken
- **Lektion 02:** Texte ersetzen mit `sed`
- **Lektion 03:** Spalten verarbeiten mit `awk`
- **Lektion 04:** `cut`, `sort`, `uniq`, `tr`, `wc`, `head`, `tail`

### Kapitel 02: Qualität & saubere Skripte
- **Lektion 01:** Statische Analyse mit `shellcheck`
- **Lektion 02:** Formatierung mit `shfmt` & Stilregeln
- **Lektion 03:** Optionen parsen mit `getopts` & `--help`/Usage-Text
- **Lektion 04:** Sicheres Quoting, Leerzeichen in Namen & `--`

### Kapitel 03: Projektstruktur & Testing
- **Lektion 01:** Projektstruktur (`bin/`, `lib/`, `test/`) & Git
- **Lektion 02:** Tests mit `bats-core`
- **Lektion 03:** Setup/Teardown, Fixtures & Mocks in `bats`
- **Lektion 04:** Automatisierung mit `make` (`lint`, `test`, `install`)

### Kapitel 04: Prozesse & Architektur
- **Lektion 01:** Subshells, `$(...)` & Process Substitution `<(...)`
- **Lektion 02:** Hintergrundjobs (`&`, `wait`), Signale & `kill`
- **Lektion 03:** Funktionsbibliotheken, Namensräume & `declare -n`
- **Lektion 04:** Idempotente Skripte & `--dry-run`-Modus

## 🟠 L3 Profi (Claude Code Plugins, Hooks & Tools)

### Kapitel 01: Daten, Konfiguration & Fehler
- **Lektion 01:** JSON verarbeiten mit `jq`
- **Lektion 02:** Konfiguration: `.env`-Dateien, Umgebungsvariablen & TOML/INI lesen
- **Lektion 03:** Eingaben validieren & Fehlerkonventionen (Exit-Codes, `die()`)

### Kapitel 02: CLI, Logging & Parallelität
- **Lektion 01:** CLI-Tool mit Subcommands (`tool build`, `tool test`)
- **Lektion 02:** Logging nach `stderr` mit Log-Levels & Farben
- **Lektion 03:** Parallelisieren mit `xargs -P` & `wait`
- **Lektion 04:** HTTP & APIs mit `curl` + `jq`

### Kapitel 03: Claude Code Plugin Meisterkurs
- **Lektion 01:** Saubere Plugin-Architektur (Ordner, `plugin.json`, Skripte)
- **Lektion 02:** Claude Code Hooks in Bash (JSON von `stdin`, Exit-Code `2`, `stdout`/`stderr`)
- **Lektion 03:** Eigene Slash-Commands & Skills mit Bash-Helfern
- **Lektion 04:** Plugin paketieren & veröffentlichen (Git-Tag, Release)

