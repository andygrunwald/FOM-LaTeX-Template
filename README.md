# LaTeX-Vorlage für die FOM Hochschule für Oekonomie & Management

[![Build Status](https://travis-ci.org/andygrunwald/FOM-LaTeX-Template.svg?branch=master)](https://travis-ci.org/andygrunwald/FOM-LaTeX-Template)

Eine [LaTeX](https://de.wikipedia.org/wiki/LaTeX)-Vorlage für den persönlichen Gebrauch für Haus-, Seminar-, Bachelor und Master-Arbeiten an der [FOM Hochschule für Oekonomie & Management](https://www.fom.de/).

Wie das **Ergebnis** aussieht, könnt ihr euch in der Datei [*thesis_main.pdf*](./thesis_main.pdf) ansehen.

Diese Vorlage hat weder einen Anspruch auf Richtigkeit, noch auf Vollständigkeit.
Verbesserungen sind jederzeit willkommen (siehe [Ich möchte mithelfen, diese Vorlage zu verbessern](#ich-möchte-mithelfen-diese-vorlage-zu-verbessern)).

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
7. [Einheitliche Schriftarten erzwingen](#einheitliche-schriftarten-erzwingen)
8. [Vorraussetzungen](#vorraussetzungen)
    1. [LaTeX-Pakete](#latex-pakete)
9. [LaTeX zu PDF kompilieren](#latex-zu-pdf-kompilieren)
    1. [Docker unter Linux / macOS / Windows](#docker-unter-linux--macos--windows)
    1. [Image selbst bauen](#image-selbst-bauen)
10. [IDE zur Bearbeitung nutzen](#ide-zur-bearbeitung-nutzen)
    1. [Texpad](#texpad)
11. [Ich habe eine Frage oder ein Problem](#ich-habe-eine-frage-oder-ein-problem) 
12. [Ich möchte mithelfen, diese Vorlage zu verbessern](#ich-möchte-mithelfen-diese-vorlage-zu-verbessern)
13. [Disclaimer](#disclaimer)
14. [Lizenz](#lizenz)

## Für die eigene Arbeit nutzen

Aufgrund der gewählten [Lizenz](./LICENSE) [MIT Lizenz](https://en.wikipedia.org/wiki/MIT_License), darfst du diese Vorlage für den persönlichen oder kommerziellen Gebrauch nutzen und abändern.
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

Wenn du diese Vorlage nutzt ist der erste Einstiegspunkt die Datei [`skripte/meta.tex`](./skripte/meta.tex).
In der Datei haben wir einige Variablen hinterlegt, die im Dokument (u.a. auf dem Deckblatt) genutzt werden.

Ersetze die Muster-Werte durch deine persönlichen Angaben und diese werden automatisch im Dokument verwendet.

## Fußnoten

Einige Professoren bevorzugen ein anderes Fußnoten-Format.
Das Standard-Format kann mit `\footcite[Vgl. ][Seite 1]{seiter2017business}` genutzt werden und gibt folgendes aus:

```
Vgl. Seiter et al. (2017), Seite 1.
```

Es besteht auch die Möglichkeit, den Vornamen des Autors mit auszugeben.
Dazu kann der Custom-Befehl `\fullfootcite[Vgl. ][Seite 1]{seiter2017business}` genutzt werden, der folgendes Resultat liefert:

```
Vgl. Seiter, Mischa et al. (2017), Seite 1.
```

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
\lstinputlisting[language=Java]{./Quellcode/Dateiname.js}
```

Für [Javascript](https://de.wikipedia.org/wiki/JavaScript) gibt es noch keine eigene Sprache, daher benutzt am besten [Java](https://de.wikipedia.org/wiki/Java_(Programmiersprache)).
Für eine genauere Beschreibung empfehlen wir folgenden Artikel: [LaTeX/Source Code Listings @ Wikibooks](http://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings).

## Einheitliche Schriftarten erzwingen

Durch die Kompilierung mit pdflatex kann es in der PDF zu unterschiedlichen Schriftarten kommen, da die voreingestellte Schriftart Serifen enthält. Mit den folgenden Zeilen kann in der Datei [*thesis_main.tex*](./thesis_main.tex) die Nutzung der Schfriftart Helvet erzwungen werden.

```latex
% Überschreibe die pdflatex default Schriftart mit helvet
\usepackage[scaled]{helvet}
\renewcommand\familydefault{\sfdefault}
```

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

### Docker unter Linux / macOS / Windows

Mit Docker wird das Dokument direkt in einem isolierten Container kompiliert.
In diesem Container sind alle Vorraussetzungen mit der richtigen Software und den richtigen Versionen gegeben.

Voraussetzung ist eine installierte [Docker engine](https://docs.docker.com/engine/installation/).

Um die **PDF ohne die Installation der LaTeX-Pakete zu kompilieren muss folgender Befehl in eurem Projekt-Ordner** ( da wo die compile.sh bzw compile.bat liegt) ausgeführt werden:

```
docker-compose up
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
- [Texpad](https://www.texpadapp.com/) (macOS, iOS)
- [Visual Studio Code](https://code.visualstudio.com/) (macOS, iOS, Linux)

### Texpad

Für die Nutzung von Texpad unter macOS müssen einige Einstellungen beachtet werden.
Standardmäßig ist _biber_ nicht aktiviert.
Dies führt dazu, dass das Literaturverzeichnis einfach "verschwindet", wenn man mit Texpad kompliliert.
Daher musst Du unter _Preferences_ > _Typesettings_ > _Bibliography Compilation_ als Engine _biber_ auswählen.

### Visual Studio Code

Wer eine etwas moderne IDE benutzen möchte, kann auch Visual Studio Code verwenden. Folgende Extension ist notwendig:

[Latex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

Mit Hilfe der Extension kann das Projekt kompiliert und als Vorschau angesehen werden. In der ```settings.json``` sind die Einstellungen der ```compile.sh``` für Latex Workshop hinterlegt.

## Ich habe eine Frage oder ein Problem

Ab und zu kommt es vor, dass es nicht klappt wie beschrieben oder man eine Frage hat.
Ich würde euch bitten mir nicht persönlich eine E-Mail zu schreiben, sondern lieber ein [neues Issue](https://github.com/andygrunwald/FOM-LaTeX-Template/issues/new) in diesem Projekt eröffnet.
Dies hat folgende Vorteile:

* andere Personen können zur Lösung beitragen (weil sie diese ggf. auch hatten)
* wir haben eine Dokumentation an vorhandenen und gelösten Fehlern / Fragen
* gelöste / wiederkehrende Probleme müssen nicht erneut beantwortet werden

## Ich möchte mithelfen, diese Vorlage zu verbessern

Verbesserungen an dieser Vorlage sind stets erwünscht und willkommen.
Github (diese Plattform) selbst ist dafür gemacht, um zusammen an Open Source Projekten zu arbeiten.
Deswegen werden Änderungen über [Pull Requests](https://github.com/andygrunwald/FOM-LaTeX-Template/pulls) sehr gerne entgegen genommen.

Wenn du das erste mal mit [Git](https://git-scm.com/), [Github](https://github.com/) und Pull Requests arbeitest, können dir folgende zwei Artikel weiter helfen:

* [Using pull requests](https://help.github.com/articles/using-pull-requests/)
* [Creating a pull request](https://help.github.com/articles/creating-a-pull-request/)

## Disclaimer

Diese Vorlage wurde zu meiner Studiumszeit erstellt und genutzt.
Die Grundlage waren die damaligen Formatierungsregeln für Abschlussarbeiten der FOM (Standort Düsseldorf).
I.d.R. sind diese jedoch für jeden Standort gültig.
Ab und zu weichen einzelne Professoren davon ab.

Mein Studium habe ich inzwischen abgeschlossen und deswegen nutze ich diese Vorlage nicht mehr aktiv.
Jedoch wird sie von mehreren Personen genutzt, weiter gepflegt und angepasst.
Ich versuche das Projekt soweit wie zeitlich möglich weiter zu betreuen, bitte jedoch um Verständnis, wenn eine Antwort nicht innerhalb einer Stunde vorliegt.

## Lizenz

Dieses Projekt ist unter den Bedingungen der [MIT Lizenz](http://en.wikipedia.org/wiki/MIT_License) öffentlich verfügbar.
