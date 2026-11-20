---
name: ueberpruefen
description: >-
  Überprüft und korrigiert deutsche Texte auf Grammatik, Rechtschreibung und Zeichensetzung.
  Verwende diesen Skill immer, wenn der Nutzer "Ueberprüfen", "Überprüfen" oder eine Korrektur
  von Rechtschreibung, Grammatik und Interpunktion anfordert.
---

# Skill: ueberpruefen (Grammatik, Rechtschreibung & Zeichensetzung)

Dieser Skill dient dazu, Texte oder Dateien präzise auf **deutsche Grammatik**, **Rechtschreibung** (nach aktueller Duden-Empfehlung) und **Zeichensetzung** (Kommasetzung, Punkt, Gedankenstriche usw.) zu prüfen und zu korrigieren.

## Vorgehensweise

1. **Prüfgegenstand ermitteln:**
   - **Text im Chat:** Wenn der Nutzer einen Text direkt mitgibt, prüfe diesen Text.
   - **Datei im Projekt:** Wenn der Nutzer eine Datei nennt (z. B. eine `.md`- oder `.py`-Datei mit Kommentaren/Docstrings), lies die Datei zuerst ein.
   - **Kein Text angegeben:** Wenn der Nutzer nur `Ueberprüfen` schreibt, prüfe seinen letzten Textbeitrag bzw. frage kurz nach, welcher Text oder welche Datei geprüft werden soll.

2. **Prüfungsschwerpunkte:**
   - **Rechtschreibung:** Tippfehler, Groß- und Kleinschreibung, Getrennt- und Zusammenschreibung, `das` vs. `dass`, `ss` vs. `ß`.
   - **Grammatik:** Kasus (4 Fälle), Kongruenz (Subjekt-Verb-Übereinstimmung), Zeitformen, Satzbau und Wortstellung.
   - **Zeichensetzung:** Kommas bei Nebensätzen, Infinitivgruppen, Aufzählungen und Einschüben sowie korrekte Schlusszeichen und Anführungszeichen.
   - **Code & Formatierung bewahren:** Falls Markdown oder Code-Blöcke enthalten sind, lasse Variablennamen, Befehle und Code-Syntax unverändert und korrigiere nur die natürlichsprachlichen Texte/Kommentare.

3. **Ausgabeformat:**
   Gib das Ergebnis übersichtlich in drei Teilen aus:
   - **Korrigierte Version:** Der fertig korrigierte Text (direkt kopierbar; bei einer Datei auf Wunsch auch direkt in der Datei gespeichert).
   - **Wichtigste Korrekturen (Kurzüberblick):** Eine knappe Stichpunktliste (`Vorher` -> `Nachher`) mit einer kurzen Begründung (z. B. *Komma vor Nebensatz mit „weil“*, *Großschreibung bei Substantivierung*).
   - **Fazit:** Falls der Text bereits fehlerfrei ist, bestätige dies kurz und freundlich.
