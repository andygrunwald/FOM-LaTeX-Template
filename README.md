# LaTeX-Vorlage für die FOM Hochschule für Oekonomie & Management

[![Build Status](https://travis-ci.org/andygrunwald/FOM-LaTeX-Template.svg?branch=master)](https://travis-ci.org/andygrunwald/FOM-LaTeX-Template)

Eine [LaTeX](https://de.wikipedia.org/wiki/LaTeX)-Vorlage für den persönlichen Gebrauch für Haus-, Seminar-,Bachelor und Master-Arbeiten an der [FOM Hochschule für Oekonomie & Management](https://www.fom.de/).

Diese Vorlage hat weder einen Anspruch auf Richtigkeit, noch auf Vollständigkeit.
Verbesserungen sind jederzeit willkommen (siehe TODO LINK).

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

Wenn du diese Vorlage nutzt ist der erste Einstiegspunkt die Datei [`skripte/meta.tex`](./skripte/meta.tex).
In der Datei haben wir einige Variablen hinterlegt, die im Dokument (u.a. auf dem Deckblatt) genutzt werden.

Ersetze die Muster-Werte durch deine persönlichen Angaben und diese werden automatisch im Dokument verwendet.

## Fußnoten

Einige Professoren bevorzugen ein anderes Fußnoten-Format.
Das Standard-Format kann mit `\footcite[Vgl. ][Seite 1]{Balzert.2008}` genutzt werden und gibt folgendes aus:

```
Vgl. Balzert et al. (2008), Seite 1.
```

Es besteht auch die Möglichkeit, den Vornamen des Autors mit auszugeben.
Dazu kann der Custom-Befehl `\fullfootcite[Vgl. ][Seite 1]{Balzert.2008}` genutzt werden, der folgendes Resultat liefert:

```
Vgl. Balzert, Helmut et al. (2008), Seite 1.
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

## Vorraussetzungen

### LaTeX-Pakete

LaTeX ist Grundvoraussetzung.
Wenn Du _[MikTex](http://miktex.org/)_ oder _[MacTex](http://tug.org/mactex/)_ verwendest, dann brauchst Du keine weiteren LaTeX-Pakete installieren.

Weiterhin wird _[Biblatex](http://www.ctan.org/pkg/biblatex)_ und _Biber_ (>= Version 1.8) für das Literaturverzeichnisses benötigt.

## LaTeX zu PDF kompilieren

Um die LaTeX-Dateien in eine PDF zu kompilieren müsst ihr unter **Windows** einfach die beiliegende `compile.bat` ausführen.
Benutzer von **Mac OSX** und **Linux** verwenden bitte die ```compile.sh```.
Zum Kompilieren müssen die oben beschriebenen Vorraussetzungen erfüllt sein.

Wenn das kompilieren nicht ohne Fehler möglich ist, kontrolliert bitte ganz genau eure LaTeX-versionen.
Alternativ empfehlen wir das Dokument mit Docker (siehe unten) zu kompilieren.

### Docker unter Linux / Mac / Windows

Mit Docker wird das Dokument direkt in einem isolierten Container kompiliert.
In diesem Container sind alle Vorraussetzungen mit der richtigen Software und den richtigen Versionen gegeben.

Voraussetzung ist eine installierte [Docker engine](https://docs.docker.com/engine/installation/).

Mit dem Befehl

```
docker run -it -v `pwd`:/data andygrunwald/fom-latex-template
```

kann das Dokument ohne die Installation der LaTeX-Pakete in das PDF-Format kompiliert werden.
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

- [TeXstudio](http://texstudio.sourceforge.net/) (Windows, Mac OSX, Linux)
- [Texpad](https://www.texpadapp.com/) (Mac OSX, iPad, iPhone)

### Texpad

Für die Nutzung von Texpad unter Mac OSX müssen einige Einstellungen beachtet werden.
Standardmäßig ist _biber_ nicht aktiviert.
Dies führt dazu, dass das Literaturverzeichnis einfach "verschwindet", wenn man mit Texpad kompliliert.
Daher musst Du unter _Preferences_ > _Typesettings_ > _Bibliography Compilation_ als Engine _biber_ auswählen.

## License

Dieses Projekt ist unter den Bedingungen der [MIT Lizenz](http://en.wikipedia.org/wiki/MIT_License) öffentlich verfügbar.
