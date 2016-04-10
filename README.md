# FOM – LaTeX-Vorlage

[![Build Status](https://travis-ci.org/andygrunwald/FOM-LaTeX-Template.svg?branch=master)](https://travis-ci.org/andygrunwald/FOM-LaTeX-Template)

Dies soll eine LaTeX-Vorlage für den persönlichen Gebrauch werden. Sie kann für eine Bachelor/Master-Arbeit an der FOM Hochschule, aber auch für Hausarbeiten, verwendet werden.

Diese Vorlage hat weder einen Anspruch auf Richtigkeit, noch auf Vollständigkeit. Verbesserungen sind jederzeit willkommen.

## Vorlage personalisieren

Damit der Einstieg in die LaTeX-Vorlage so einfach wie möglich ist, haben wir in der Datei ```skripte/meta.tex``` einige "Variablen" hinterlegt. Dort kannst Du Deine Informationen für das Deckblatt hinterlegen und musst nicht lange nach der entsprechenden Stelle im Quelltext suchen.

## Vorraussetzungen

### LaTeX-Pakete

Diese LaTeX-Vorlage verwendet verschiedene Pakate. Wenn Du _[MikTex](http://miktex.org/)_ oder _[MacTex](http://tug.org/mactex/)_ verwendest, dann brauchst Du keine weiteren LaTeX-Pakete installieren.

### Zusatzsoftware

Für die Erstellung des Literaturverzeichnisses wird _[Biblatex](http://www.ctan.org/pkg/biblatex)_ und _Biber_ (>= Version 1.8, siehe [#10](https://github.com/andygrunwald/FOM-LaTeX-Template/issues/10)) benötigt.

## Kompilieren

Um die LaTeX-Dateien in eine PDF zu kompilieren müsst ihr unter **Windows** einfach die beiliegende ```compile.bat``` ausführen. Benutzer von **Mac OSX** und **Linux** verwenden bitte die ```compile.sh```. Zum Kompilieren muss bereits MikTex komplett installiert sein, damit auch das Literaturverzeichnis kompiliert wird.

### Kompilieren mit Docker unter Linux

Mit der Datei ```compile-docker.sh``` kann das Dokument ohne die Installation der LaTeX-Pakete durchgeführt werden. Die benötigten Pakete befinden sich in dem Docker-Image texlive (https://registry.hub.docker.com/u/koep/texlive/). Kompiliert wird das Dokument direkt in einem isolierten Container.

Voraussetzung ist eine aktuelle Docker Version (https://docs.docker.com/installation/).
Getestet unter Fedora 21 (Kernel 3.19.1).

## Fußnoten

Einige Professoren bevorzugen ein anderes Fußnoten-Format. Das Standard-Format kann mit `\footcite[Vgl. ][Seite 1]{Balzert.2008}` genutzt werden und gibt folgendes aus:

```
Vgl. Balzert et al. (2008), Seite 1.
```

Es besteht auch die Möglichkeit, den Vornamen des Autors mit auszugeben. Dazu kann ein der Custom-Command `\fullfootcite[Vgl. ][Seite 1]{Balzert.2008}` genutzt werden der folgendes Resultat liefert:
```
Vgl. Balzert, Helmut et al. (2008), Seite 1.
```

## Literaturverzeichnis

Einige Professoren bevorzugen ein sortiertes (Webseite, Buch, Artikel...) Literaturverzeichnis.

Dies kann mit folgender Änderung im Quellcode (thesis_main.tex) erreicht werden:

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

Sollte ein Sperrvermerk für die Arbeit notwendig sein, so kann dieser durch einkommentieren dieser Zeile aktiviert werden. Die Angaben zu Titel der Arbeit und Name der Firma werden dabei aus den Metadaten entnommen.

```latex
\input{kapitel/anhang/sperrvermerk}
```

## Quellcode einbinden

Um euren Quellcode einzubinden, wurde bereits das Packet *listings* in der Datei thesis_main.tex eingebunden.
Dieses wird dort auch mit den Farben für Kommentare, Strings, etc konfiguriert.
Folgendermaßen könnt ihr Quellcode einbauen:
Für Javascript gibt es noch keine eigene Sprache, daher benutzt am besten *Java*

```latex
\lstinputlisting[language=Java]{./Quellcode/Dateiname.js}
```

Für eine genauere Beschreibung empfehlen wir folgenden Artikel: [LaTeX/Source Code Listings @ Wikibooks](http://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings).

## IDE nutzen

Zum schreiben der Arbeit könnt Ihr auch einen IDE verwenden. Hierzu gibt es nachfolgend einige Software:

- [TeXstudio](http://texstudio.sourceforge.net/) (Windows, Mac OSX, Linux)
- [Texpad](https://www.texpadapp.com/) (Mac OSX, iPad, iPhone)

### Texpad

Für die Nutzung von Texpad unter Mac OSX müssen einige Einstellungen beachtet werden. Standardmäßig ist _biber_ nicht aktiviert. Dies führt dazu, dass das Literaturverzeichnis einfach "verschwindet", wenn man mit Texpad kompliliert. Daher musst Du unter _Preferences_ > _Typesettings_ > _Bibliography Compilation_ als Engine _biber_ auswählen.

## License

This project is released under the terms of the [MIT license](http://en.wikipedia.org/wiki/MIT_License).