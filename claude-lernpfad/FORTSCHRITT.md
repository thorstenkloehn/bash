# Lernfortschritt – Claude-Code-Lernpfad in Bash

> **Hinweis für KI-Agenten:** Lies diese Datei zu Beginn jeder Sitzung. Jede Lektion behandelt **genau ein Thema**. Hake eine Lektion erst ab, wenn `/loesung` erfolgreich war, und setze dann `Aktuelle Lektion` auf die nächste.

**Aktuelle Lektion:** `kurs/L1_Grundlagen/Kapitel_01_Erste_Schritte/Lektion_02_prompts_und_dateien`

---

## L1 Grundlagen


### Kapitel 01 Erste Schritte
- [x] `Lektion_01_installation_start` – Claude Code installieren, `claude` starten, erste Frage stellen
- [ ] `Lektion_02_prompts_und_dateien` – Gute Prompts, Dateien mit `@datei` referenzieren
- [ ] `Lektion_03_berechtigungen` – Permission-Modi, `/permissions`, erlaubte Befehle
- [ ] `Lektion_04_sitzungen` – `/clear`, `/compact`, `--continue`, `--resume`

### Kapitel 02 Kontext CLAUDE md
- [ ] `Lektion_01_claude_md_anlegen` – `CLAUDE.md` für die Beispiel-App schreiben
- [ ] `Lektion_02_imports_und_regeln` – `@`-Imports, Projekt- vs. Nutzer-Regeln
- [ ] `Lektion_03_settings_json` – `.claude/settings.json`: Berechtigungen & Umgebungsvariablen

### Kapitel 03 Slash Commands
- [ ] `Lektion_01_erster_command` – Eigenen Command in `.claude/commands/` anlegen
- [ ] `Lektion_02_argumente` – `$ARGUMENTS` und Frontmatter (`description`)
- [ ] `Lektion_03_bash_in_commands` – Shell-Ausgaben im Command einbinden (`!`-Syntax)

### Kapitel 04 Skills
- [ ] `Lektion_01_erster_skill` – `SKILL.md` mit `name` und `description`
- [ ] `Lektion_02_skill_mit_skript` – Skill mit Hilfsskript in Bash
---

## L2 Hooks_mit_Bash


### Kapitel 01 Hook Grundlagen
- [ ] `Lektion_01_hook_events` – Hook-Events im Überblick (`PreToolUse`, `PostToolUse`, …)
- [ ] `Lektion_02_stdin_json_jq` – Hook-Eingabe (JSON) von stdin mit `jq` lesen
- [ ] `Lektion_03_exit_codes` – Exit-Code 0 / 2, `stderr` als Feedback an Claude
- [ ] `Lektion_04_hook_registrieren` – Hook in `settings.json` eintragen und testen

### Kapitel 02 Schutz Hooks
- [ ] `Lektion_01_gefaehrliche_befehle_blocken` – `PreToolUse`: `rm -rf` & Co. blockieren
- [ ] `Lektion_02_geheime_dateien_schuetzen` – Zugriff auf `.env` & Schlüssel verhindern
- [ ] `Lektion_03_json_entscheidung` – Strukturierte JSON-Antwort (`permissionDecision`)

### Kapitel 03 Qualitaets Hooks
- [ ] `Lektion_01_shellcheck_nach_edit` – `PostToolUse`: `shellcheck` nach jeder Änderung
- [ ] `Lektion_02_tests_automatisch` – Tests der Beispiel-App automatisch starten
- [ ] `Lektion_03_prompt_hook` – `UserPromptSubmit`: Kontext automatisch ergänzen

### Kapitel 04 Statusline und Logging
- [ ] `Lektion_01_statusline` – Eigene Statusline als Bash-Skript
- [ ] `Lektion_02_audit_log` – Alle Tool-Aufrufe in eine Logdatei schreiben
---

## L3 Automatisierung_und_Plugins


### Kapitel 01 Headless und Skripte
- [ ] `Lektion_01_claude_p` – `claude -p`: Claude in Bash-Skripten aufrufen
- [ ] `Lektion_02_output_format_json` – `--output-format json` mit `jq` auswerten
- [ ] `Lektion_03_pipes_und_batch` – Pipes & Schleifen: Code-Review über viele Dateien
- [ ] `Lektion_04_git_hook_ci` – Git-Hook & CI-Job mit Claude

### Kapitel 02 Subagents und MCP
- [ ] `Lektion_01_subagent_anlegen` – Eigenen Subagent in `.claude/agents/`
- [ ] `Lektion_02_mcp_server_einbinden` – MCP-Server mit `claude mcp add` einbinden
- [ ] `Lektion_03_mcp_server_in_bash` – Minimalen MCP-Server in Bash verstehen

### Kapitel 03 Plugin bauen
- [ ] `Lektion_01_plugin_struktur` – Plugin-Ordner & `plugin.json`
- [ ] `Lektion_02_plugin_inhalte` – Commands, Skills und Hooks ins Plugin packen
- [ ] `Lektion_03_marketplace_release` – Marketplace-Datei & Release
