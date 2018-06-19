# LaTeX-Vorlage für die FOM Hochschule für Oekonomie & Management
[![Build Status](https://travis-ci.org/andygrunwald/FOM-LaTeX-Template.svg?branch=master)](https://travis-ci.org/andygrunwald/FOM-LaTeX-Template)
Eine [LaTeX](https://de.wikipedia.org/wiki/LaTeX)-Vorlage für den persönlichen Gebrauch für Haus-, Seminar-,Bachelor und Master-Arbeiten an der [FOM Hochschule für Oekonomie & Management](https://www.fom.de/).
Wie das **Ergebnis** aussieht, könnt ihr euch in der Datei [*thesis_main.pdf*](./thesis_main.pdf) ansehen.
Diese Vorlage hat weder einen Anspruch auf Richtigkeit, noch auf Vollständigkeit.
Verbesserungen sind jederzeit willkommen (siehe [Ich möchte mithelfen, diese Vorlage zu verbessern](#ich-möchte-mithelfen-diese-vorlage-zu-verbessern)).

---

### To Do

1. Readme verbessern
2. Beispiel PDF verbessern
4. Default Zitate und Literaturverzeichnis umbauen - in Arbeit

---

### Tutorial

Ein kurzes [Tutorial](#tutorial-jetbrains-intellij-idea) zu einem Setup, findest du [hier](#tutorial-jetbrains-intellij-idea).

---

## Inhaltsverzeichnis

1. [Für die eigene Arbeit nutzen](#für-die-eigene-arbeit-nutzen)
    1. [Klassischer Download](#klassischer-download)
    2. [Fork auf Github](#fork-auf-github)
2. [Vorlage personalisieren](#vorlage-personalisieren)
3. [Fußnoten](#fußnoten)
4. [Literaturverzeichnis](#literaturverzeichnis)
5. [Sperrvermerk](#sperrvermerk)
6. [Quellcode einbinden](#quellcode-einbinden)
7. [Vorraussetzungen](#vorraussetzungen)
    1. [LaTeX-Pakete](#latex-pakete)
8. [LaTeX zu PDF kompilieren](#latex-zu-pdf-kompilieren)
    1. [Docker unter Linux / Mac / Windows](#docker-unter-linux--mac--windows)
	  1. [Image selbst bauen](#image-selbst-bauen)
9. [IDE zur Bearbeitung nutzen](#ide-zur-bearbeitung-nutzen)
    1. [Texpad](#texpad)
    2. [Jetbrains IntelliJ IDEA](#jetbrains-intellij-idea)
        1. [Tutorial Jetbrains IntelliJ IDEA](#tutorial-jetbrains-intellij-idea)
        2. [IntelliJ IDEA Plug-Ins](#intellij-idea-plug-ins)
    3. [Bibliography Reference Manager](#bibliography-reference-manager) 
10. [Wörter Zählen](#wörter-zählen)
11. [Ich habe eine Frage oder ein Problem](#ich-habe-eine-frage-oder-ein-problem) 
12. [Bekannte Fehler](#bekannte-fehler) 
    1. [LaTeX / Fehler und Warnungen](#latex-/-fehler-und-warnungen) 
13. [Ich möchte mithelfen, diese Vorlage zu verbessern](#ich-möchte-mithelfen-diese-vorlage-zu-verbessern)
14. [Disclaimer](#disclaimer)
    1. [Andy](#Andy-original-template)
    1. [Dennis](#dennis-template-overhaul)
15. [Lizenz](#lizenz)

## Vorwort

Danke an Andy Grünwald für die Erstelleung des orginal Templates, auf welchem dieses LaTeX-Template basiert.

## Thesis- und/oder Hausarbeit-Modus

Das Template kann als Hausarbeit oder Thesis verwendet werden, dazu prüfe bitte das Template. Die Informationen sind im Qellcode (größtenteil aber nicht ausschliesslich in thesis_main.tex und Deine_Inhalte/Metainformationen.tex) kommentiert.
Die aktuelle Standarteinstellung ist HAUSARBEIT.

## Achtung

Dies soll eine LaTeX -Vorlage für den persönlichen Gebrauch werden. Sie hat weder einen Anspruch auf Richtigkeit, noch auf Vollständigkeit. 
Kontrolle und ggf. klärung mit deinem betreuenden Dozenten vor Abgabe sind notwendig.

## Änderungen am Original

### Build Tool arara

arara - The cool TeX automation Tool, ist auf [GitHub](https://github.com/cereda/arara) verfügbar. Via arara wird in der Präambel des thesis_main.tex Dokuments ein kleines Skript implementiert um dir die Arbeit zu erleichtern, in Sachen engine, compiling and cleaning. 

### FOM Leitafaden - Standort München

Das Template ist nach besten wissen und gewissen nach dem FOM Leitfaden 20.12.2016 Standort München erstellt. Solltest du Fehler entdecken, erstelle ein "new Issue" wie [hier](#ich-habe-eine-frage-oder-ein-problem) von Andy beschrieben.

### Dateistruktur

Es wurde das Verzeichnis "Deine_Inhalte" (In möglichst auffälliger schreibweise ;o) erstellt.
Hier liegt alles was die Inhalte deiner Hausarbeit oder Thesis angeht.

### Alles mögliche im Quelltext

Um nur ein Paar zu nennen.

1. Engine von PDF-LaTex auf XeLaTex gestellt
2. Seitengeomtetrie
3. Überschriften
4. Schrift
5. Schriftgröße
6. Leitfaden Anpassungen
...

## Für die eigene Arbeit nutzen

Aufgrund der gewählten [Lizenz](./LICENSE) [MIT Lizenz](https://en.wikipedia.org/wiki/MIT_License), darfst du diese Vorlage für den persönlichen oder kommerzielen Gebrauch nutzen und abändern.
Um dies zu tun gibt es mehrere Möglichkeiten, die wir nachfolgend kurz vorstellen.

**Generell gilt**:
Dieses Dokument beschreibt eine ganze Menge Details, die dir beim erstellen und bearbeiten des Dokument hilfreich sein könnten.
Leider wird es unmöglich sein, jede Frage abzudecken.
Solltest du uns kontaktieren wollen um eine Frage zu stellen, ein Problem mit zuteilen oder um einfach nur mal Danke sagen zu wollen, eröffne doch ein [neues Issue](https://github.com/andygrunwald/FOM-LaTeX-Template/issues/new) in diesem Projekt.

### Klassischer Download

Über den *Clone or Download* Button in der oberen rechten Ecke kannst du dir diese Vorlage herunterladen ([ZIP-Archiv](https://github.com/andygrunwald/FOM-LaTeX-Template/archive/master.zip)).
Danach kannst du, wie gewohnt, die Dateien lokal bearbeiten, deine Arbeit schreiben, Drucken und abgeben.

### Fork auf Github

Die bessere Alternative zum klassischen Download ist ein *Fork* auf Github.
Wie das im Detail funktioniert beschreibt der Artikel [Fork A Repo](https://help.github.com/articles/fork-a-repo/).
Das ganze hat primär zwei Vorteile:

* Du hast automatisch ein Backup deiner Arbeit auf Github
* Andere Personen / Studenten können sich deine Arbeit ansehen, diese verbessern, diese weiter verwenden (und ggf. Zeit sparen) oder daraus lernen (bedenke, all diese Vorteile hast du auch durch dieses Projekt)
* Wenn du es nicht mehr öffentlich zur Verfügung stellen kannst, kannst du das Projekt als *privat* markieren oder löschen

## Vorlage personalisieren

Wenn du diese Vorlage nutzt ist der erste Einstiegspunkt die Datei [`Deine_Inhalte/Metainformationen.tex`](./Deine_Inhalte/Metainformationen.tex).
In der Datei haben wir einige Variablen hinterlegt, die im Dokument (u.a. auf dem Deckblatt) genutzt werden.

Ersetze die Muster-Werte durch deine persönlichen Angaben und diese werden automatisch im Dokument verwendet.

## Fußnoten --- BAUSTELLE - IN ARBEIT #

Einige Professoren bevorzugen ein anderes Fußnoten-Format.
Aufbau der Fußnoten nach Variablennamen im Literaturverzeichnis:
```
Vgl.    Tanenbaum, Andrew,      Netzwerke,                      2003,   S. 69–98.
        [author]                [shorttitle]                    [year]  [pages]
```
Hinweis: Parameter sollten ohne Leerzeichen, vor der schließenden Eckigenklammer eingegeben werden.
Auch prüft das Skript selbständig nach "pages" in deinem Literaturverzeichnis oder nach einem ersten bzw. zweiten "Parameter"
in \footcite, in welchem du deine Seite manuell angegen haben könntest. Somit musst du nicht deklarieren ob deine Seiten
im Literaturverzeichnis stehen oder du sie manuell angeben möchtest. Übrigens Parameter befinden sich in ```[...]```.
Willst du den Wert "pages" aus dem Literaturverzeichnis überschreiben, musst du zwei Eckigeklammern schreiben
wie bei \footcite zu sehen. Aber auch bei \fulfootcite, die erste Klammer kann hier leer bleiben.

Fußnoten können mit u.a. `\footcite[Vgl.][S. 69-98]{Tanenbaum.2003}` genutzt werden und gibt folgendes aus:

```
Vgl. Tanenbaum, Andrew, Netzwerke, 2003, S. 69–98.
```
(Autor wird kursiv angezeigt)

Es besteht auch die Möglichkeit, den Vornamen des Autors mit auszugeben, Seiten aus dem Literaturverzeichnis zu beziehen und 'Vgl.' automatisch einzubinden.
Dazu kann der Custom-Befehl `\fullfootcite{Balzert.2008}` genutzt werden, der folgendes Resultat liefert:

```
Vgl. Balzert, Helmut u. a., Wissenschaftliches Arbeiten, 2008, S. 69. // TODO u. a. zu et al.
```
(Autor wird kursiv angezeigt)

--- BAUSTELLE - IN ARBEIT - ENDE

## Literaturverzeichnis

Einige Professoren bevorzugen ein sortiertes (Webseite, Buch, Artikel...) Literaturverzeichnis.
Dies kann mit folgender Änderung im Quellcode ([*thesis_main.tex*](./thesis_main.tex)) erreicht werden:

Zunächst diese Zeile auskommentieren:

```latex
%\printbibliography
```

Und die folgenden Zeilen einkommentieren und ggf. anpassen.

```latex
\printbibheading
\printbibliography[type=article,heading=subbibliography,title={Artikel}]
\printbibliography[type=book,heading=subbibliography,title={Bücher}]
\printbibliography[type=online,heading=subbibliography,title={Webseiten}]
```

## Sperrvermerk

Sollte ein Sperrvermerk für die Arbeit notwendig sein, so kann dieser durch einkommentieren der folgenden Zeile aktiviert werden: 

```latex
\input{kapitel/anhang/sperrvermerk}
```

Die Angaben zu Titel der Arbeit und Name der Firma werden dabei aus den Metadaten entnommen.

## Quellcode einbinden

Um euren Quellcode einzubinden, wurde bereits das Packet *listings* in der Datei [*thesis_main.tex*](./thesis_main.tex) eingebunden.
Dieses wird dort auch mit den Farben für Kommentare, Strings, etc konfiguriert.
Folgendermaßen könnt ihr Quellcode einbauen:

```latex
\lstinputlisting[language=Java]{./Deine_Inhalte/Quellcode/Dateiname.js}
```

Für [Javascript](https://de.wikipedia.org/wiki/JavaScript) gibt es noch keine eigene Sprache, daher benutzt am besten [Java](https://de.wikipedia.org/wiki/Java_(Programmiersprache)).
Für eine genauere Beschreibung empfehlen wir folgenden Artikel: [LaTeX/Source Code Listings @ Wikibooks](http://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings).

## Vorraussetzungen

### LaTeX-Pakete

LaTeX ist Grundvoraussetzung.
Wenn Du _[MikTex](http://miktex.org/)_ oder _[MacTex](http://tug.org/mactex/)_ verwendest, dann brauchst Du keine weiteren LaTeX-Pakete installieren.

Weiterhin wird _[Biblatex](http://www.ctan.org/pkg/biblatex)_ und _Biber_ (>= Version 1.8) für das Literaturverzeichnisses benötigt.

## LaTeX zu PDF kompilieren

Um die LaTeX-Dateien in eine PDF zu kompilieren müsst ihr unter **Windows** einfach die beiliegende `compile.bat` ausführen.
Benutzer von **macOS** und **Linux** verwenden bitte die ```compile.sh```.
Zum Kompilieren müssen die oben beschriebenen Vorraussetzungen erfüllt sein.

Wenn das kompilieren nicht ohne Fehler möglich ist, kontrolliert bitte ganz genau eure LaTeX-versionen.
Alternativ empfehlen wir das Dokument mit Docker (siehe unten) zu kompilieren.

### Docker unter Linux / Mac / Windows

Mit Docker wird das Dokument direkt in einem isolierten Container kompiliert.
In diesem Container sind alle Vorraussetzungen mit der richtigen Software und den richtigen Versionen gegeben.

Voraussetzung ist eine installierte [Docker engine](https://docs.docker.com/engine/installation/).

Um die **PDF ohne die Installation der LaTeX-Pakete zu kompilieren muss folgender Befehl in eurem Projekt-Ordner** ( da wo die compile.sh bzw compile.bat liegt) ausgeführt werden:

```
docker run -it --rm -v ${PWD}:/data andygrunwald/fom-latex-template
```
Den Befehl lasst ihr einfach über eure Kommandozeile bzw. PowerShell laufen (in Windows cmd.exe bzw. powershell.exe, beim Mac ist es das Terminal). Zum Projektordner könnt ihr kommen, indem ihr über den cd Befehl dorthin navigiert oder im Windows-Explorer in diesen Ordner wechselt und dann bei gedrückter Shift-Taste die rechte Maus-Taste klickt. Dort müsst ihr dann im Menü den Eintrag : "Öffne Kommandozeile hier" auswählen.

Wird Docker unter Windows 10 verwendet, muss der Daemon wie folgt konfiguriert werden:

![Docker Konfiguration unter Windows 10](https://cloud.githubusercontent.com/assets/6319666/17108377/7c3aef54-5293-11e6-95e3-bd99f42820f0.png)

Die benötigten Pakete befinden sich in dem Docker-Image, welches auf [Docker Hub unter andygrunwald/fom-latex-template](https://hub.docker.com/r/andygrunwald/fom-latex-template/) zur Verfügung steht.
Es wird bei der Ausführung automatisch heruntergeladen.

#### Image selbst bauen

Wenn du das Docker Image selbst bauen möchtest, kannst du es mit dem nachfolgenden Befehl tun:

```
docker build -t andygrunwald/fom-latex-template .
```

## IDE zur Bearbeitung nutzen

Prinzipiell reicht ein normaler Text-Editor zur Bearbeitung aus.
Jedoch kannst du zum schreiben der Arbeit auch ein IDE verwenden.
Hierzu gibt es nachfolgend einige Software:

- [TeXstudio](http://texstudio.sourceforge.net/) (Windows, macOS, Linux)
- [Texpad](https://www.texpadapp.com/) (macOS, iPad, iPhone)
- [Jetbrains IntelliJ IDEA](https://www.jetbrains.com/idea/) (macOS, Windows, Linux)

### Texpad

Für die Nutzung von Texpad unter macOS müssen einige Einstellungen beachtet werden.
Standardmäßig ist _biber_ nicht aktiviert.
Dies führt dazu, dass das Literaturverzeichnis einfach "verschwindet", wenn man mit Texpad kompliliert.
Daher musst Du unter _Preferences_ > _Typesettings_ > _Bibliography Compilation_ als Engine _biber_ auswählen.

### Jetbrains IntelliJ IDEA

Meine Empfehlung, IntelliJ IDEA von Jetbrains. Als Student kannst du eine [Studentenlizens](https://www.jetbrains.com/student/) bei Jetbrains beantragen
oder die kostenlose [Community-Version](https://www.jetbrains.com/idea/download/) nutzen. Wie schon von Andy beschrieben, könnt ihr unter einer Menge IDEs und Texteditoren wählen, aber dieses "How to" soll sich hier auf ein dediziertes Setup beschränken. 

#### Tutorial Jetbrains IntelliJ IDEA

1. Installiere LaTeX-Pakete in dem du [MikTex](http://miktex.org/) oder [MacTex](http://tug.org/mactex/) installierst
2. Wie von Andy unter [Fork auf Github](#fork-auf-github) beschrieben, empfehle ich dir das Template zu forken
3. Nun starte InelliJ IDEA und klicke auf "Check out from VCS" > "Github" 
4. Es öffnet sich ein neues Fenster, wähle hier Titel und Ort für dein Projekt, danach klicke auf "Clonen" 
5. In der Menüleiste wähle "IntelliJ IDEA" > "Preferences..." (Benamung kann unter Windows abweichen)
6. Links gehe auf "Tools" > "External Tools"
7. Nun siehst du in der rechten Hälfte des Fensters ein Plus + (links unten), klicke dort drauf
8. Hier musst du drei Felder ausfüllen
    1. Feld 1: "Name" bspw. "Create PDF from LaTeX Template"
    2. Feld 2: "Program" setze den Pfad auf "compiletool.sh" bspw. "~/IdeaProjects/FOM-LaTeX-Template/compiletool.sh"
    3. Feld 3: "Working Directory", dies ist der Pfad unter welchem deine PDF erscheint, setze den Pfad einfach auf das gleiche Verzeichniss in dem auch compiletool.sh liegt
9. Bestätige deine Eingaben zweimal mit "OK"
10. Ab jetzt kannst du deine PDF kompilieren in dem du in der Menüleiste auf "Tools" > "External Tools" > "Create PDF from LaTeX Template" (bzw. der Name welchen du bei "Feld 1" eingeben hast) klickst - Fertig!

#### IntelliJ IDEA Plug-Ins
 
Syntax highlighting, unterstützung von LaTeX-Dateien etc.
- [TeXiFy](https://plugins.jetbrains.com/plugin/9473-texify-idea)
- [LaTeX](https://plugins.jetbrains.com/plugin/7660-latex)

### Bibliography Reference Manager

Ich habe nicht alle Programme eingehend getestet, aber um dir einen Anhaltspunkt in deiner Wahl zu geben, ein paar Links in alphabetischer Reihenfolge:
- [Citavi](https://citavi.com/de)
- [JabRef](http://www.jabref.org)
- [Zotero](https://www.zotero.org/) 
    - [Zotero Artikel](https://tex.stackexchange.com/questions/402554/quick-citation-insert-from-zotero-5)
    - [Zotero Plug-in](https://github.com/retorquere/zotero-better-bibtex)

## Wörter Zählen

1. Um Wörter zu zählen downloade das Perl-Skript [TeXcount](http://app.uio.no/ifi/texcount/index.html)
von Einar Andreas Rødland.
2. Lege die Datei "texcount.pl" in das Verzeichnis in welchem auch "compiletool.sh" liegt. 
3. Fertig... das nächste mal wenn du deine PDF kompilierst werden auch die Worte gezählt.

## Ich habe eine Frage oder ein Problem

Ab und zu kommt es vor, dass es nicht klappt wie beschrieben oder man eine Frage hat.
Ich würde euch bitten mir nicht persönlich eine E-Mail zu schreiben, sondern lieber ein [neues Issue](https://github.com/andygrunwald/FOM-LaTeX-Template/issues/new) in diesem Projekt eröffnet.
Dies hat folgende Vorteile:

* andere Personen können zur Lösung beitragen (weil sie diese ggf. auch hatten)
* wir haben eine Dokumentation an vorhandenen und gelösten Fehlern / Fragen
* gelöste / wiederkehrende Probleme müssen nicht erneut beantwortet werden


## Bekannte Fehler

- In der thesis_main.log Datei steht: "! File ended while scanning use of \@writefile." => Lösung: "thesis_main.aux" Datei löschen.
- In der thesis_main.log Datei steht: "Underfull \hbox" => Lösung: Lies diesen [Artikel von texwelt.de](http://texwelt.de/wissen/fragen/20/was-bedeutet-underfulloverfull-hbox)

### LaTeX / Fehler und Warnungen

hier eine Liste von [LaTeX / Fehler und Warnungen](https://de.wikibooks.org/wiki/LaTeX/_Fehler_und_Warnungen#Undefined_control_sequence)
von [de.wikibooks.org](https://de.wikibooks.org/wiki/LaTeX/)

## Ich möchte mithelfen, diese Vorlage zu verbessern

Verbesserungen an dieser Vorlage sind stehts erwünscht und Willkommen.
Github (diese Plattform) selbst ist dafür gemacht um zusammen an Open Source Projekten zu arbeiten.
Deswegen werden Änderungen über [Pull Requests](https://github.com/andygrunwald/FOM-LaTeX-Template/pulls) sehr gerne entgegen genommen.

Wenn du das erste mal mit [Git](https://git-scm.com/), [Github](https://github.com/) und Pull Requests arbeitest, können dir folgende zwei Artikel weiter helfen:

* [Using pull requests](https://help.github.com/articles/using-pull-requests/)
* [Creating a pull request](https://help.github.com/articles/creating-a-pull-request/)

## Disclaimer 

#### Andy (Original Template)

Diese Vorlage wurde zu meiner Studiumszeit erstellt und genutzt.
Die Grundlage waren die damaligen Formatierungsregeln für Abschlussarbeiten der FOM (Standort Düsseldorf).
I.d.R. sind diese jedoch für jeden Standort gültig.
Ab und zu weichen einzelne Professoren davon ab.

Mein Studium habe ich inzwischen abgeschlossen und deswegen nutze ich diese Vorlage nicht mehr aktiv.
Jedoch wird sie von mehreren Personen genutzt, weiter gepflegt und angepasst.
Ich versuche das Projekt soweit wie zeitlich möglich weiter zu betreuen, bitte jedoch um Verständnis, 
wenn eine Antowrt nicht innerhalb einer Stunde vorliegt.

#### Dennis (Template Overhaul)

Diese Vorlage wurde zu meiner Studiumszeit erstellt und genutzt.
Die Grundlage waren die damaligen Formatierungsregeln für Abschlussarbeiten der FOM (Standort München).

Falls du nicht am Standort München studierst, prüfe ob dein Standort andere Layout Standarfs präferriert.

Kontrolle und eventuelle Absprachen mit dem betreuenden Dozenten sind notwendig und ratsam.
Ich versuche das Projekt soweit wie zeitlich möglich weiter zu betreuen, bitte jedoch um Verständnis, 
wenn eine Antowrt nicht innerhalb einer Stunde vorliegt.

## Lizenz

Dieses Projekt ist unter den Bedingungen der [MIT Lizenz](http://en.wikipedia.org/wiki/MIT_License) öffentlich verfügbar.
