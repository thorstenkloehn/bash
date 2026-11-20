# 🐚 Interaktiver Bash-Kurs: Von Null zu eigenen Claude Code Hooks & Plugins

In diesem Projekt ist die **KI dein Programmierlehrer** und **du bist der Schüler**. Du lernst Bash Schritt für Schritt: Grundlagen (`L1`), fortgeschrittene Techniken (`L2`) und Entwicklung eigener **Claude Code Hooks, CLI-Tools und Plugins** (`L3`).

Umfang: **14 Kapitel, 58 kurze Lektionen** – jede Lektion behandelt genau ein Thema. Alle Ordner unter [`kurs/`](./kurs/) starten leer, du schreibst den Code selbst.

## 🚀 Ablauf pro Lektion

| Schritt | Chat-Befehl | Slash-Command | Was passiert? |
| :--- | :--- | :--- | :--- |
| **1. Starten** | `Aufgabe_Lesen` | `/aufgabe` | Der Lehrer liest [`FORTSCHRITT.md`](./FORTSCHRITT.md), erklärt das Thema kurz (max. 20 % Theorie, kein Code-Spoiler) und stellt eine kleine Aufgabe. |
| **2. Üben** | `Aktives_Coden` | `/aktiv` | *(Optional)* Active Recall: Beispiel lesen, ausblenden, aus dem Gedächtnis nachbauen. |
| **3. Hilfe** | `Frage` | `/frage` | Nach mindestens 5 Minuten eigenem Versuch gibt es einen gezielten Tipp. |
| **4. Abgeben** | `Loesung` | `/loesung` | Prüft deine `aufgabe.sh`, gibt Feedback und hakt die Lektion ab. |
| **Testlauf** | `Bash_Run` | `/bash-run` | Führt `bash aufgabe.sh` im Lektionsordner aus, ohne zu bewerten. |
| **Text prüfen** | `Ueberprüfen` | `/ueberpruefen` | Rechtschreibung, Grammatik, Zeichensetzung. |

## 🧰 Voraussetzungen
* Linux/macOS-Terminal (oder WSL) mit `bash` ≥ 4 (für assoziative Arrays)
* Ab L2: `shellcheck`, `shfmt`, `bats`, `make`
* Ab L3: `jq`, `curl`, `git`

## 📚 Dateien
* [ROADME.md](./ROADME.md) – Lernpfad
* [FORTSCHRITT.md](./FORTSCHRITT.md) – Stand mit Checkboxen
* [plan.md](./plan.md) – Struktur & Agenten-Architektur
* [AGENTS.md](./AGENTS.md) / [CLAUDE.md](./CLAUDE.md) / [GEMINI.md](./GEMINI.md) – Lehrer-Regeln
