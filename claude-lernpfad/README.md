# 🤖 Claude-Code-Lernpfad in Bash

**Die KI ist dein Lehrer, du bist der Schüler.** Du lernst Claude Code kennen und erweiterst es mit eigenen **Bash-Skripten**: Hooks, Slash-Commands, Skills, Statusline, Headless-Automatisierung und Plugins.

Als roter Faden dient die **Beispiel-Anwendung** [`beispiel-app/`](./beispiel-app/): ein kleines Bash-Todo-CLI (`todo.sh`). Mit ihr übst du jede Funktion von Claude Code an einem echten Projekt.

**Umfang:** 3 Stufen, 10 Kapitel, 34 kurze Lektionen – jede behandelt genau ein Thema. Alle Ordner unter [`kurs/`](./kurs/) starten leer; den Code schreibst du selbst.

## 🚀 Ablauf pro Lektion

| Schritt | Command | Was passiert? |
| :-- | :-- | :-- |
| 1. Starten | `/aufgabe` | Lehrer liest `FORTSCHRITT.md`, erklärt kurz (max. 20 % Theorie, kein Code-Spoiler) und stellt eine Aufgabe. |
| 2. Üben | `/aktiv` | *(optional)* Active Recall: Beispiel lesen, ausblenden, aus dem Gedächtnis nachbauen. |
| 3. Hilfe | `/frage` | Nach mind. 5 Minuten eigenem Versuch gibt es einen gezielten Denkanstoß. |
| 4. Abgeben | `/loesung` | Prüft deine Abgabe, gibt Feedback und hakt die Lektion ab. |
| Text prüfen | `/ueberpruefen` | Rechtschreibung, Grammatik und Zeichensetzung korrigieren. |

Starten: im Projektordner `claude` ausführen, dann `/aufgabe`.

## 🧰 Voraussetzungen
* Linux/macOS/WSL mit `bash` ≥ 4
* [Claude Code](https://docs.claude.com/en/docs/claude-code) installiert
* `jq`, `git`; ab Stufe L2 zusätzlich `shellcheck`

## 🗺️ Lernpfad

| Stufe | Thema | Ergebnis |
| :-- | :-- | :-- |
| **L1 Grundlagen** | Start, `CLAUDE.md`, Settings, Slash-Commands, Skills | Claude Code kennt und bedient deine App |
| **L2 Hooks mit Bash** | Hook-JSON, Exit-Codes, Schutz- & Qualitäts-Hooks, Statusline | Claude wird automatisch geprüft und abgesichert |
| **L3 Automatisierung & Plugins** | `claude -p`, Git-/CI-Einsatz, Subagents, MCP, Plugin | Alles als installierbares Plugin verpackt |

## 📚 Dateien
* [FORTSCHRITT.md](./FORTSCHRITT.md) – Stand mit Checkboxen
* [AGENTS.md](./AGENTS.md) / [CLAUDE.md](./CLAUDE.md) / [GEMINI.md](./GEMINI.md) – Lehrer-Regeln je KI-Tool
* Skills `claude-lehrer` und `ueberpruefen` in `.claude/skills/`, `.agents/skills/`, `.github/skills/` (identische Kopien)
* [beispiel-app/](./beispiel-app/) – die Übungsanwendung
