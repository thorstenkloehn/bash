# Plan: Multi-Agent Projekt- & Kursstruktur für den Bash-Programmierkurs

## 1. Rollen
* **KI-Agent (Lehrer):** Erklärt Konzepte anfängerfreundlich, gibt kleine Aufgaben (immer nur **1 Konzept pro Lektion**) und prüft Lösungen – **niemals** wird fertiger Lösungscode vorweggenommen.
* **Schüler:** Schreibt den Code selbstständig in den Lektionsordnern.

**Ziel:** Ein interaktiver Bash-Kurs, der bei **Null** startet und kleinschrittig bis zu eigenen **Claude Code Hooks, CLI-Tools und Plugins** führt (siehe [ROADME.md](./ROADME.md)). Umgewandelt aus dem Python-Kurs `eigene_Kurs_Programmieren.md`.

## 2. Der Lehrer-Skill & seine 4 Modi (`bash-lehrer`)
1. **`Aufgabe_Lesen`** (`/aufgabe`) – max. 20 % Theorie, kleine Aufgabe, kein Lösungscode.
2. **`Frage`** (`/frage`) – Denkanstöße nach mindestens 5 Minuten eigenem Versuch.
3. **`Loesung`** (`/loesung`) – prüft `.sh`-Dateien (`bash -n`, ausführen, ab L2 `shellcheck`) und schaltet [FORTSCHRITT.md](./FORTSCHRITT.md) weiter.
4. **`Aktives_Coden`** (`/aktiv`) – Active Recall: Beispiel lesen, ausblenden, aus dem Gedächtnis nachbauen.

Zusätzlich: **`Ueberprüfen`** (`/ueberpruefen`) für Rechtschreibung, Grammatik und Zeichensetzung.

## 3. Multi-Agent Skill-Architektur
| KI-Tool | Basis-Regeln | Skill-Pfad | Commands |
| :--- | :--- | :--- | :--- |
| **Antigravity CLI / Codex** | `AGENTS.md` / `GEMINI.md` | `.agents/skills/bash-lehrer/SKILL.md` | `Aufgabe_Lesen`, `Frage`, `Loesung`, `Aktives_Coden` |
| **Claude Code** | `CLAUDE.md` | `.claude/skills/bash-lehrer/SKILL.md` | `/aufgabe`, `/frage`, `/loesung`, `/aktiv` (`.claude/commands/`) |
| **GitHub Copilot** | `.github/copilot-instructions.md` | `.github/skills/bash-lehrer/SKILL.md` | `/aufgabe`, … (`.github/prompts/`) |

## 4. Ordnerstruktur (`kurs/`) – 14 Kapitel, 58 Lektionen
Alle Lektionsordner starten leer (nur `.gitkeep`). Aufgaben werden als `aufgabe.sh` im jeweiligen Ordner gelöst.

```text
kurs/
├── L1_Grundlagen/
│   ├── Kapitel_01_Erste_Schritte_Terminal/
│   │   ├── Lektion_01_echo_hallo_welt/
│   │   ├── Lektion_02_navigation_pwd_ls_cd/
│   │   ├── Lektion_03_dateien_mkdir_touch_cp_mv_rm/
│   │   ├── Lektion_04_skript_ausfuehren_chmod/
│   │   ├── Lektion_05_hilfe_man_help/
│   ├── Kapitel_02_Variablen_und_Eingabe/
│   │   ├── Lektion_01_variablen/
│   │   ├── Lektion_02_quoting/
│   │   ├── Lektion_03_eingabe_read/
│   │   ├── Lektion_04_arithmetik/
│   │   ├── Lektion_05_argumente/
│   ├── Kapitel_03_Kontrollfluss/
│   │   ├── Lektion_01_if_else/
│   │   ├── Lektion_02_elif_und_logik/
│   │   ├── Lektion_03_datei_tests/
│   │   ├── Lektion_04_for_schleife/
│   │   ├── Lektion_05_while_schleife/
│   │   ├── Lektion_06_case_esac/
│   ├── Kapitel_04_Arrays_und_Strings/
│   │   ├── Lektion_01_arrays_grundlagen/
│   │   ├── Lektion_02_arrays_durchlaufen_slicing/
│   │   ├── Lektion_03_assoziative_arrays/
│   │   ├── Lektion_04_string_operationen/
│   ├── Kapitel_05_Funktionen/
│   │   ├── Lektion_01_erste_funktion/
│   │   ├── Lektion_02_parameter_rueckgabe/
│   │   ├── Lektion_03_standardwerte/
│   │   ├── Lektion_04_local_scope/
│   ├── Kapitel_06_Fehlerbehandlung/
│   │   ├── Lektion_01_exit_codes/
│   │   ├── Lektion_02_strict_mode/
│   │   ├── Lektion_03_trap_cleanup/
│   ├── Kapitel_07_Ein_Ausgabe_und_Module/
│   │   ├── Lektion_01_umleitung_stdout_stderr/
│   │   ├── Lektion_02_pipes/
│   │   ├── Lektion_03_heredoc/
│   │   ├── Lektion_04_source_bibliothek/
├── L2_Fortgeschritten/
│   ├── Kapitel_01_Textverarbeitung/
│   │   ├── Lektion_01_grep_regex/
│   │   ├── Lektion_02_sed_grundlagen/
│   │   ├── Lektion_03_awk_grundlagen/
│   │   ├── Lektion_04_cut_sort_uniq_tr/
│   ├── Kapitel_02_Qualitaet/
│   │   ├── Lektion_01_shellcheck/
│   │   ├── Lektion_02_shfmt_stil/
│   │   ├── Lektion_03_usage_getopts/
│   │   ├── Lektion_04_sicheres_quoting/
│   ├── Kapitel_03_Projekt_und_Testing/
│   │   ├── Lektion_01_projektstruktur_git/
│   │   ├── Lektion_02_bats_grundlagen/
│   │   ├── Lektion_03_bats_mocks_fixtures/
│   │   ├── Lektion_04_makefile_automatisierung/
│   ├── Kapitel_04_Moderne_Architektur/
│   │   ├── Lektion_01_subshells_substitution/
│   │   ├── Lektion_02_jobs_und_signale/
│   │   ├── Lektion_03_namerefs_funktionsbibliotheken/
│   │   ├── Lektion_04_idempotenz_dry_run/
├── L3_Profi_Plugin_Entwicklung/
│   ├── Kapitel_01_Daten_Config_und_Fehler/
│   │   ├── Lektion_01_jq_json/
│   │   ├── Lektion_02_config_env_toml/
│   │   ├── Lektion_03_validierung_eingaben/
│   ├── Kapitel_02_CLI_Logging_und_Parallel/
│   │   ├── Lektion_01_cli_subcommands/
│   │   ├── Lektion_02_logging_stderr/
│   │   ├── Lektion_03_xargs_parallel/
│   │   ├── Lektion_04_curl_http_apis/
│   ├── Kapitel_03_Claude_Code_Plugin_Meisterkurs/
│   │   ├── Lektion_01_clean_plugin_architektur/
│   │   ├── Lektion_02_claude_code_hooks_bash/
│   │   ├── Lektion_03_slash_commands_skills/
│   │   ├── Lektion_04_plugin_paketieren_release/
```
