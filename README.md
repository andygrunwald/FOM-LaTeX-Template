# FOM – LaTeX-Vorlage
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

## Fußnoten
Einige Professoren bevorzugen ein anderes Fußnoten-Format. Das Standard-Format kann mit `\footcite[Vgl. ][Seite 1]{Balzert.2008}` genutzt werden und gibt folgendes aus:

```Vgl. Balzert et al. (2008), Seite 1.```

Es besteht auch die Möglichkeit, den Vornamen des Autors mit auszugeben. Dazu kann ein der Custom-Command `\fullfootcite[Vgl. ][Seite 1]{Balzert.2008}` genutzt werden der folgendes Resultat liefert:
```Vgl. Balzert, Helmut et al. (2008), Seite 1.
```

## IDE nutzen
Zum schreiben der Arbeit könnt Ihr auch einen IDE verwenden. Hierzu gibt es nachfolgend einige Software:

- [TeXstudio](http://texstudio.sourceforge.net/) (Windows, Mac OSX, Linux)
- [Texpad](https://www.texpadapp.com/) (Mac OSX, iPad, iPhone)

### Texpad
Für die Nutzung von Texpad unter Mac OSX müssen einige Einstellungen beachtet werden. Standardmäßig ist _biber_ nicht aktiviert. Dies führt dazu, dass das Literaturverzeichnis einfach "verschwindet", wenn man mit Texpad kompliliert. Daher musst Du unter _Preferences_ > _Typesettings_ > _Bibliography Compilation_ als Engine _biber_ auswählen.
