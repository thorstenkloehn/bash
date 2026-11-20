# Lernfortschritt – Bash-Kurs (Ziel: Eigene Claude Code Hooks & Plugins)

> **Hinweis für KI-Agenten:** Lies diese Datei zu Beginn jeder Sitzung, um zu wissen, in welchem Kapitel und in welcher Lektion der Schüler gerade arbeitet. Jede Lektion behandelt **nur ein einzelnes, anfängerfreundliches Thema**. Aktualisiere den Status, sobald eine Lektion über `Loesung` erfolgreich abgeschlossen wurde.

**Aktuelle Lektion:** `kurs/L1_Grundlagen/Kapitel_01_Erste_Schritte_Terminal/Lektion_01_echo_hallo_welt`

---

## 🟢 L1 Grundlagen (Anfänger – 1 Konzept pro Lektion)

### Kapitel 01: Erste Schritte im Terminal (`Kapitel_01_Erste_Schritte_Terminal`)
- [ ] `Lektion_01_echo_hallo_welt` – Erste Ausgabe mit `echo`, Kommentare (`#`) & Shebang (`#!/usr/bin/env bash`)
- [ ] `Lektion_02_navigation_pwd_ls_cd` – Im Dateisystem navigieren (`pwd`, `ls`, `cd`)
- [ ] `Lektion_03_dateien_mkdir_touch_cp_mv_rm` – Dateien & Ordner verwalten (`mkdir`, `touch`, `cp`, `mv`, `rm`)
- [ ] `Lektion_04_skript_ausfuehren_chmod` – Skripte ausführbar machen & starten (`chmod +x`, `./skript.sh`)
- [ ] `Lektion_05_hilfe_man_help` – Hilfe finden (`man`, `--help`, `help`, Tab-Vervollständigung)

### Kapitel 02: Variablen & Benutzereingabe (`Kapitel_02_Variablen_und_Eingabe`)
- [ ] `Lektion_01_variablen` – Variablen anlegen und lesen (`name="Otto"`, `$name`)
- [ ] `Lektion_02_quoting` – Anführungszeichen: `"..."` vs. `'...'` & Escapes
- [ ] `Lektion_03_eingabe_read` – Benutzereingabe mit `read` (`-p`, `-r`)
- [ ] `Lektion_04_arithmetik` – Rechnen mit `$(( ))` (`+`, `-`, `*`, `/`, `%`)
- [ ] `Lektion_05_argumente` – Skript-Argumente (`$1`, `$#`, `$@`, `$0`)

### Kapitel 03: Kontrollfluss (Entscheidungen & Schleifen) (`Kapitel_03_Kontrollfluss`)
- [ ] `Lektion_01_if_else` – Entscheidungen mit `if` / `else` und `[[ ]]`
- [ ] `Lektion_02_elif_und_logik` – `elif` & Logik (`&&`, `||`, `!`)
- [ ] `Lektion_03_datei_tests` – Datei-Tests (`-e`, `-f`, `-d`, `-r`, `-x`, `-z`, `-n`)
- [ ] `Lektion_04_for_schleife` – `for`-Schleifen (Listen, Globbing, `{1..5}`, C-Stil)
- [ ] `Lektion_05_while_schleife` – `while`-Schleifen sowie `break` und `continue`
- [ ] `Lektion_06_case_esac` – Mehrfachauswahl mit `case` / `esac`

### Kapitel 04: Arrays & String-Operationen (`Kapitel_04_Arrays_und_Strings`)
- [ ] `Lektion_01_arrays_grundlagen` – Indizierte Arrays (`arr=(a b c)`, `${arr[0]}`, `+=`)
- [ ] `Lektion_02_arrays_durchlaufen_slicing` – Arrays durchlaufen (`"${arr[@]}"`) & Slicing (`${arr[@]:1:2}`)
- [ ] `Lektion_03_assoziative_arrays` – Assoziative Arrays (`declare -A`) – Schlüssel-Wert-Paare
- [ ] `Lektion_04_string_operationen` – Parameter-Expansion (`${#var}`, `${var#...}`, `${var%...}`, `${var//a/b}`)

### Kapitel 05: Funktionen & Sichtbarkeit (`Kapitel_05_Funktionen`)
- [ ] `Lektion_01_erste_funktion` – Eigene Funktionen schreiben und aufrufen
- [ ] `Lektion_02_parameter_rueckgabe` – Parameter (`$1`) & Rückgabe (`return`, `echo` + `$(...)`)
- [ ] `Lektion_03_standardwerte` – Standardwerte mit `${1:-default}`
- [ ] `Lektion_04_local_scope` – Sichtbarkeit: `local` vs. globale Variablen

### Kapitel 06: Basis-Fehlerbehandlung (`Kapitel_06_Fehlerbehandlung`)
- [ ] `Lektion_01_exit_codes` – Exit-Codes (`$?`, `exit`, `||`-Fehlerabfang)
- [ ] `Lektion_02_strict_mode` – Strikter Modus: `set -euo pipefail`
- [ ] `Lektion_03_trap_cleanup` – Aufräumen mit `trap ... EXIT` und `mktemp`

### Kapitel 07: Ein-/Ausgabe, Pipes & Module (`Kapitel_07_Ein_Ausgabe_und_Module`)
- [ ] `Lektion_01_umleitung_stdout_stderr` – Umleitungen (`>`, `>>`, `<`, `2>`, `2>&1`)
- [ ] `Lektion_02_pipes` – Programme verketten mit Pipes (`|`)
- [ ] `Lektion_03_heredoc` – Here-Documents (`<<EOF`) & Here-Strings (`<<<`)
- [ ] `Lektion_04_source_bibliothek` – Code auf mehrere Dateien aufteilen (`source` / `.`)

---

## 🟡 L2 Fortgeschritten

### Kapitel 01: Textverarbeitung (`Kapitel_01_Textverarbeitung`)
- [ ] `Lektion_01_grep_regex` – Suchen mit `grep` & regulären Ausdrücken
- [ ] `Lektion_02_sed_grundlagen` – Texte ersetzen mit `sed`
- [ ] `Lektion_03_awk_grundlagen` – Spalten verarbeiten mit `awk`
- [ ] `Lektion_04_cut_sort_uniq_tr` – `cut`, `sort`, `uniq`, `tr`, `wc`, `head`, `tail`

### Kapitel 02: Qualität & saubere Skripte (`Kapitel_02_Qualitaet`)
- [ ] `Lektion_01_shellcheck` – Statische Analyse mit `shellcheck`
- [ ] `Lektion_02_shfmt_stil` – Formatierung mit `shfmt` & Stilregeln
- [ ] `Lektion_03_usage_getopts` – Optionen parsen mit `getopts` & `--help`/Usage-Text
- [ ] `Lektion_04_sicheres_quoting` – Sicheres Quoting, Leerzeichen in Namen & `--`

### Kapitel 03: Projektstruktur & Testing (`Kapitel_03_Projekt_und_Testing`)
- [ ] `Lektion_01_projektstruktur_git` – Projektstruktur (`bin/`, `lib/`, `test/`) & Git
- [ ] `Lektion_02_bats_grundlagen` – Tests mit `bats-core`
- [ ] `Lektion_03_bats_mocks_fixtures` – Setup/Teardown, Fixtures & Mocks in `bats`
- [ ] `Lektion_04_makefile_automatisierung` – Automatisierung mit `make` (`lint`, `test`, `install`)

### Kapitel 04: Prozesse & Architektur (`Kapitel_04_Moderne_Architektur`)
- [ ] `Lektion_01_subshells_substitution` – Subshells, `$(...)` & Process Substitution `<(...)`
- [ ] `Lektion_02_jobs_und_signale` – Hintergrundjobs (`&`, `wait`), Signale & `kill`
- [ ] `Lektion_03_namerefs_funktionsbibliotheken` – Funktionsbibliotheken, Namensräume & `declare -n`
- [ ] `Lektion_04_idempotenz_dry_run` – Idempotente Skripte & `--dry-run`-Modus

---

## 🟠 L3 Profi (Claude Code Plugins, Hooks & Tools)

### Kapitel 01: Daten, Konfiguration & Fehler (`Kapitel_01_Daten_Config_und_Fehler`)
- [ ] `Lektion_01_jq_json` – JSON verarbeiten mit `jq`
- [ ] `Lektion_02_config_env_toml` – Konfiguration: `.env`-Dateien, Umgebungsvariablen & TOML/INI lesen
- [ ] `Lektion_03_validierung_eingaben` – Eingaben validieren & Fehlerkonventionen (Exit-Codes, `die()`)

### Kapitel 02: CLI, Logging & Parallelität (`Kapitel_02_CLI_Logging_und_Parallel`)
- [ ] `Lektion_01_cli_subcommands` – CLI-Tool mit Subcommands (`tool build`, `tool test`)
- [ ] `Lektion_02_logging_stderr` – Logging nach `stderr` mit Log-Levels & Farben
- [ ] `Lektion_03_xargs_parallel` – Parallelisieren mit `xargs -P` & `wait`
- [ ] `Lektion_04_curl_http_apis` – HTTP & APIs mit `curl` + `jq`

### Kapitel 03: Claude Code Plugin Meisterkurs (`Kapitel_03_Claude_Code_Plugin_Meisterkurs`)
- [ ] `Lektion_01_clean_plugin_architektur` – Saubere Plugin-Architektur (Ordner, `plugin.json`, Skripte)
- [ ] `Lektion_02_claude_code_hooks_bash` – Claude Code Hooks in Bash (JSON von `stdin`, Exit-Code `2`, `stdout`/`stderr`)
- [ ] `Lektion_03_slash_commands_skills` – Eigene Slash-Commands & Skills mit Bash-Helfern
- [ ] `Lektion_04_plugin_paketieren_release` – Plugin paketieren & veröffentlichen (Git-Tag, Release)

