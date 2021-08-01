# LaTeX-Vorlage für die FOM Hochschule für Oekonomie & Management

[![Build](https://github.com/andygrunwald/FOM-LaTeX-Template/actions/workflows/Check.yml/badge.svg)](https://github.com/andygrunwald/FOM-LaTeX-Template/actions/workflows/Check.yml)

Eine [LaTeX](https://de.wikipedia.org/wiki/LaTeX)-Vorlage für den persönlichen Gebrauch für Haus-, Seminar-, Bachelor und Master-Arbeiten an der [FOM Hochschule für Oekonomie & Management](https://www.fom.de/).

Wie das **Ergebnis** aussieht, könnt ihr euch in der Datei [*thesis_main.pdf*](./thesis_main.pdf) ansehen.

Diese Vorlage hat weder einen Anspruch auf Richtigkeit, noch auf Vollständigkeit.
Verbesserungen sind jederzeit willkommen (siehe [Ich möchte mithelfen, diese Vorlage zu verbessern](#ich-möchte-mithelfen-diese-vorlage-zu-verbessern)).

---

## Inhaltsverzeichnis

1. [Für die eigene Arbeit nutzen](#für-die-eigene-arbeit-nutzen)
    1. [Klassischer Download](#klassischer-download)
    2. [Fork auf Github](#fork-auf-github)
1. [Vorlage personalisieren](#vorlage-personalisieren)
1. [Dokumentensprache](#dokumentensprache)
1. [TextCommands](#textcommands)
1. [Zitation](#zitation)
    1. [Chicago-Style in Fußnoten](#chicago-style-in-fußnoten)
    2. [IEEE-Style im Text](#ieee-style-im-text)
1. [Inhaltsverzeichnis Latex](#inhaltsverzeichnis-latex)
1. [Literaturverzeichnis](#literaturverzeichnis)
1. [Sperrvermerk](#sperrvermerk)
1. [Quellcode einbinden](#quellcode-einbinden)
1. [Schriftarten](#schriftarten)
1. [PlantUML](#plantuml)
1. [LaTeX zu PDF kompilieren](#latex-zu-pdf-kompilieren)
    1. [Docker unter Linux / macOS / Windows](#docker-unter-linux--macos--windows)
    2. [LaTeX-Pakete](#latex-pakete)
    3. [Image selbst bauen](#image-selbst-bauen)
    4. [Fehlerbehandlung](#fehlerbehandlung)
1. [LaTeX mit Windows Subsystem for Linux kompilieren](#latex-mit-windows-subsystem-for-linux-kompilieren)
1. [IDE zur Bearbeitung nutzen](#ide-zur-bearbeitung-nutzen)
    1. [Texpad](#texpad)
    2. [Visual Studio Code](#visual-studio-code)
1. [Wörter zählen](#wörter-zählen)
    1. [TeXcount](#texcount)
    2. [Unix / macOS Script](#unix--macos-script)
1. [Ich habe eine Frage oder ein Problem](#ich-habe-eine-frage-oder-ein-problem)
1. [Ich möchte mithelfen, diese Vorlage zu verbessern](#ich-möchte-mithelfen-diese-vorlage-zu-verbessern)
1. [Disclaimer](#disclaimer)
1. [Lizenz](#lizenz)

## Für die eigene Arbeit nutzen

Aufgrund der gewählten [Lizenz](./LICENSE) [MIT Lizenz](https://en.wikipedia.org/wiki/MIT_License), darfst du diese Vorlage für den persönlichen oder kommerziellen Gebrauch nutzen und abändern.
Um dies zu tun, gibt es mehrere Möglichkeiten, die wir nachfolgend kurz vorstellen.

**Generell gilt**:
Dieses Dokument beschreibt eine ganze Menge Details, die dir beim Erstellen und bearbeiten des Dokuments hilfreich sein könnten.
Leider wird es unmöglich sein, jede Frage abzudecken.
Solltest du uns kontaktieren wollen, um eine Frage zu stellen, ein Problem mit zuteilen oder um einfach nur mal Danke sagen zu wollen, eröffne doch ein [neues Issue](https://github.com/andygrunwald/FOM-LaTeX-Template/issues/new) in diesem Projekt.

### Klassischer Download

Über den *Clone or Download* Button in der oberen rechten Ecke kannst du dir diese Vorlage herunterladen ([ZIP-Archiv](https://github.com/andygrunwald/FOM-LaTeX-Template/archive/master.zip)).
Danach kannst du, wie gewohnt, die Dateien lokal bearbeiten, deine Arbeit schreiben, Drucken und abgeben.

### Fork auf Github

Die bessere Alternative zum klassischen Download ist ein *Fork* auf Github.
Wie das im Detail funktioniert beschreibt der Artikel [Fork A Repo](https://help.github.com/articles/fork-a-repo/).
Das Ganze hat primär zwei Vorteile:

* Du hast automatisch ein Backup deiner Arbeit auf Github
* Andere Personen / Studenten können sich deine Arbeit ansehen, diese verbessern, diese weiter verwenden (und ggf. Zeit sparen) oder daraus lernen (bedenke, all diese Vorteile hast du auch durch dieses Projekt)
* Wenn du es nicht mehr öffentlich zur Verfügung stellen kannst, kannst du das Projekt als *privat* markieren oder löschen

## Vorlage personalisieren

Wenn du diese Vorlage nutzt, ist der erste Einstiegspunkt die Datei [`skripte/meta.tex`](./skripte/meta.tex).
In der Datei haben wir einige Variablen hinterlegt, die im Dokument (u. a. auf dem Deckblatt) genutzt werden.

Ersetze die Muster-Werte durch deine persönlichen Angaben und diese werden automatisch im Dokument verwendet.

## Dokumentensprache

Die Vorlage ist sowohl auf Deutsch, als auch auf Englisch umgesetzt. Dadurch wird das Titelblatt, Verzeichnisüberschriften und auch der Inhalt des Literaturverzeichnisses auf die englische Sprache umgestellt.
Um die Datei auf Englisch zu kompilieren, muss mit docker-compose folgender Befehl umgesetzt werden:
```
docker-compose run --service-ports fom ./compile.sh en
```
Ohne Docker muss die Datei mit der compile.sh folgendermaßen aufgerufen werden:
```
./compile.sh en
```
Für die Batch-Datei ist das Kompilieren auf Englisch über folgenden Workaround möglich.
1. Suche in der thesis_main.tex nach der Codezeile `%\def\FOMEN{}`
2. Entkommentiere diese Codezeile, indem du das Prozentzeichen entfernst
3. Kompiliere neu

Anmerkung: Der beschriebene Workaround funktioniert auch, wenn du Overleaf oder einen anderen TEX-Editor verwendest und die compile.bat nicht benötigst.

Nach dem kompilieren findet sich das Ergebnis in der Datei [`thesis_main.pdf`](./thesis_main.pdf). Die [`thesis_englisch.pdf`](./thesis_englisch.pdf) ist nur dazu da auf Github die Möglichkeit aufzuzeigen.

## TextCommands

Das Arbeiten mit Commands innerhalb des Textes kann eine schöne Möglichkeit darstellen um:
- Wörter oder Abkürzungen, welche häufig falsch geschrieben werden, einmalig zu definieren
- bestimmte Wörter die z. B. einfach zu lang sind durch ein Kürzel schneller schreiben zu können
- Wörter oder Abkürzungen die häufig verwendet werden nie an der falschen Stelle zu trenen

In meinen Arbeiten haben ich gemerkt, dass es sinnvoll ist verschiedene standard Abkürzungen zu verwenden und diese nur einmalig zu definieren. Beispielsweise habe ich die Abkürzung von "zum Beispiel" --> "z. B." immer ohne Leerzeichen geschrieben. Allerdings ist die Schreibweise mit Leerzeichen [wesentlich korrekter](https://de.wiktionary.org/wiki/z._B.#:~:text=Anmerkung%3A,z.B.). Einmal richtig definiert, lässt sich die Abkürzung "z. B." im Text-File einfach durch folgenden Code aufrufen:
```
\zb
```
Man sparrt sich sogar 2 Tastaturanschläge ;-)

Auf der Seite skripte\textcommands.tex befinden sich zwei Bereiche:
- common textCommands
- project individual textCommands

Hier könnt ihr die verschiedenen Commands definieren und dann sind sie auch zentral an einer Stelle verfügbar und pflegbar.

TextCommands können bei Bedarf auch zweisprachig gepflegt werden:
```
\newcommand{\vglf}{\langde{Vgl.}\langen{compare}}
```

## Zitation
Es gibt viele Zitationsstile, deshalb schaut ihr am besten in den für euch gültigen Leitfaden und sprecht dann die präferierte/vorgegebene Zitationsweise mit eurem Dozenten ab.

### Chicago-Style in Fußnoten
**Achtung, nicht für Arbeiten in der Wirtschaftspsychologie**

Das Standard-Format kann mit `\footcite[Vgl. ][Seite 1]{Balzert.2008}` genutzt werden und gibt Folgendes aus:

```
Vgl. Balzert et al. (2008), Seite 1.
```

Es besteht auch die Möglichkeit, den Vornamen des Autors mit auszugeben.
Dazu kann der Custom-Befehl `\fullfootcite[Vgl. ][Seite 1]{Balzert.2008}` genutzt werden, der folgendes Resultat liefert:

```
Vgl. Balzert, Helmut et al. (2008), Seite 1.
```

Wird die englische Version genutzt, muss "Vgl." durch "compare" und "S." durch "p." ersetzt werden.
Beim verwenden von [Textcommands](#textcommands) müssen "Vgl." und "S." nicht manuell geändert werden. Dies wird automatisch erledigt.
Beispiel für die Verwendung von Textcommands (der Output sieht wie oben aus):
```
\footcite[\vglf][\pagef 1]{Balzert.2008}
```

### IEEE-Style im Text
**Achtung, nur im Hochschulbereich IT-Management**

Der IEEE Zitationsstil wird hauptsächlich in technischen Studiengängen verwendet und ist ein sehr einfacher Zitationsstil, da hier nicht auf Dinge wie z.B. "vgl."/"ebd." geachtet werden muss. Ein direktes Zitat steht in Anführungszeichen. Wird ohne Anführungszeichen zitiert weiß man, dass es ein indirektes Zitat ist ("vgl." kann dann weg gelassen werden). Normalerweise müssten auch keine Seitenzahlen angegeben werden, jedoch steht im aktuellen Leitfaden des Hochschulbereichs IT-Management, dass bei jeglicher Zitationsweise die Seitenzahl anzugeben ist, deshalb auch bei IEEE.
Um IEEE zu nutzen, müssen die Optionen des package BibLaTeX (`\usepackage[options]{biblatex}`) in der `thesis_main.tex` angepasst werden:
```
\usepackage[
backend=biber,
style=ieee,
maxcitenames=3,	% mindestens 3 Namen ausgeben bevor et. al. kommt
maxbibnames=999,
date=iso,
seconds=true, %werden nicht verwendet, so werden aber Warnungen unterdrückt.
urldate=iso,
dashed=false,
autocite=inline,
useprefix=true, % 'von' im Namen beachten (beim Anzeigen)
mincrossrefs = 1
]{biblatex}%iso dateformat für YYYY-MM-DD
```
Des Weiteren müssen die Modifikationen für BibLaTeX auskommentiert werden:
```
%\input{skripte/modsBiblatex2018}
```
Nach dem Auskommentieren der Modifikationen für das Literaturverzeichnis stimmt es leider nicht mehr zu 100% mit den Vorgaben überein, wobei der Leitfaden hier auch sehr vage formuliert ist. Am besten mit dem Dozenten sprechen, ob das BibLaTeX-Format passt. 

Durch das Auskommentieren der BibLaTeX Modifikationen müssen im Anschluss folgende Zeilen hinzugefügt werden:
```
%% et al. anstatt u. a. bei mehr als drei Autoren.
\DefineBibliographyStrings{ngerman}{ 
	andothers = {{et\,al\adddot}},             
}
\DefineBibliographyStrings{english}{ 
	andothers = {{et\,al\adddot}},             
}
```

Im Text kann anschließend mit `\cite[S.~99]{Kornmeier2018}` oder `\cite[S.~99-102]{Kornmeier2018}` oder `\cite{Kornmeier2018}` zitiert werden:
```
Im Text kann anschließend mit [1, S. 99] oder [1, S. 99-102] oder [1] zitiert werden.
```

## Inhaltsverzeichnis Latex

**Ebene des ausgegebenen Inhaltsverzeichnis einstellen**<br>
Bis zu welcher Ebene das Inhaltsverzeichnis aufgelistet wird, kann über tocdepth Parameter eingestellt werden
```latex
\setcounter{tocdepth}{4}
```

**Tabellen- und Abbildungsverzeichnis im Inhaltsverzeichnis**<br>
Die Anzeige des Tabbellen- und des Abbildungsverzeichnis lässt sich gleich am Anfang in der \documentclass einstellen.

**Glossar im Inhaltsverzeichnis**<br>
Folgenden Eintrag auskommentieren, damit das Glossar nicht im Inhaltsverzeichnis angezeigt wird
```latex
\glstoctrue
```

**Symbolverzeichnis**<br>
Damit das Symbolverzeichnis nicht mehr angezeigt wird, folgendes auskommentieren
```latex
 \addcontentsline{toc}{section}{Symbolverzeichnis}
```

**Abkürzungsverzeichnis**<br>
Damit das Symbolverzeichnis nicht mehr angezeigt wird, folgendes auskommentieren
```latex
\addcontentsline{toc}{section}{Abkürzungsverzeichnis}
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

Sollte ein Sperrvermerk für die Arbeit notwendig sein, so kann dieser durch Einkommentieren der folgenden Zeile aktiviert werden:

```latex
\input{kapitel/anhang/sperrvermerk}
```

Die Angaben zu Titel der Arbeit und Name der Firma werden dabei aus den Metadaten entnommen.

## Quellcode einbinden

Um euren Quellcode einzubinden, wurde bereits das Paket *listings* in der Datei [*thesis_main.tex*](./thesis_main.tex) eingebunden.
Dieses wird dort auch mit den Farben für Kommentare, Strings, etc. konfiguriert.
Folgendermaßen könnt ihr Quellcode einbauen:

```latex
\lstinputlisting[language=JavaScript]{./Quellcode/Dateiname.js}
```

Für [Javascript](https://de.wikipedia.org/wiki/JavaScript) wurde eine eigene Definition erstellt und eingebaut. 
Für eine genauere Beschreibung aller im Standard verfügbaren Sprachen empfehlen wir folgenden Artikel: [LaTeX/Source Code Listings @ Wikibooks](http://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings).

## Schriftarten

Die voreingestellte Schriftart enthält Serifen. Mit den folgenden Zeilen kann in der Datei [*thesis_main.tex*](./thesis_main.tex) die Nutzung der Schriftart Helvet erzwungen werden.

```latex
% Überschreibe die default Schriftart mit helvet
\usepackage[scaled]{helvet}
\renewcommand\familydefault{\sfdefault}
```

## PlantUML
PlantUML ist ein Open-Source-Tool, mit dem UML-Diagramme aus einfacher Textsprache erstellt werden können.

Um PlantUml benutzen zu können, müssen folgende Voraussetzungen erfüllt sein:

* Das Prozentzeichen muss vor der Zeile `\usepackage{plantuml}` in der `thesis_main.tex` entfernt werden
* Der PlantUML Code muss von `\begin{plantuml}` `\end{plantuml}` umhüllt werden
* Die `plantuml.jar` muss vorhanden sein, Download unter [PlantUML](https://sourceforge.net/projects/plantuml/files/plantuml.jar/download)
* Kopiere die `plantuml.jar` zu einem lokalen Ordner (z.B., `mkdir -p ~/bin/plantuml && cp ~/Downloads/plantuml.jar ~/bin/plantuml`)
* Installiere Graphviz (PlantUML ist davon abhängig).

Folgendes muss in der `~/.bashrc` oder `zshconfig` sein:

```
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home'
export PLANTUML_JAR='$HOME/bin/plantuml/plantuml.jar'
export GRAPHVIZ_DOT='/usr/local/bin/dot'
```

## LaTeX zu PDF kompilieren

Wir empfehlen das Dokument mit Docker (siehe unten) zu kompilieren.

Alternativ kann auch über die Ausführung der Skripte kompiliert werden, dafür müssen aber die unten beschriebenen [LaTeX-Pakete](#latex-pakete) installiert sein.
Unter **Windows** muss dafür die beiliegende `compile.bat` ausführen.
Benutzer von **macOS** und **Linux** verwenden bitte die ```compile.sh```.


Wenn das Kompilieren nicht ohne Fehler möglich ist, kontrolliert bitte ganz genau eure LaTeX-Versionen oder nutzt Docker.


### Docker unter Linux / macOS / Windows

Mit Docker wird das Dokument direkt in einem isolierten Container kompiliert.
In diesem Container sind alle Vorraussetzungen mit der richtigen Software und den richtigen Versionen gegeben.

Voraussetzung ist eine installierte [Docker engine](https://docs.docker.com/engine/installation/).

Um die **PDF-Datei ohne die Installation der LaTeX-Pakete zu kompilieren, muss folgender Befehl in eurem Projekt-Ordner** ( da wo die compile.sh bzw compile.bat liegt) ausgeführt werden:

```
docker-compose up
```


Den Befehl lasst ihr einfach über eure Kommandozeile bzw. PowerShell laufen (in Windows cmd.exe bzw. powershell.exe, beim Mac ist es das Terminal). Zum Projektordner könnt ihr kommen, indem ihr über den cd Befehl dorthin navigiert oder im Windows-Explorer in diesen Ordner wechselt und dann bei gedrückter Shift-Taste die rechte Maus-Taste klickt. Dort müsst ihr dann im Menü den Eintrag: "Öffne Kommandozeile hier" auswählen.

Falls es hier zu Problemen kommt, wenn ein gecachtes Image verwendet wird, können die folgenden Befehle ausgeführt werden:

```
docker-compose build --no-cache
docker-compose up
```

Wird Docker unter Windows 10 verwendet, muss der Daemon wie folgt konfiguriert werden:

![Docker Konfiguration unter Windows 10](https://cloud.githubusercontent.com/assets/6319666/17108377/7c3aef54-5293-11e6-95e3-bd99f42820f0.png)

Die benötigten Pakete befinden sich in dem Docker-Image, welches auf [Docker Hub unter andygrunwald/fom-latex-template](https://hub.docker.com/r/andygrunwald/fom-latex-template/) zur Verfügung steht.
Es wird bei der Ausführung automatisch heruntergeladen.

### LaTeX-Pakete

Für das kompilieren ohne Docker ist LaTeX Grundvoraussetzung.
Wenn Du _[MikTex](http://miktex.org/)_ oder _[MacTex](http://tug.org/mactex/)_ verwendest, dann brauchst Du keine weiteren LaTeX-Pakete installieren.

Weiterhin wird _[Biblatex](http://www.ctan.org/pkg/biblatex)_ und _Biber_ (>= Version 1.8) für das Literaturverzeichnisses benötigt.

### Fehlerbehandlung

Falls unter Windows der folgende Fehler auftritt, checkt `git` die Dateien mit Windows Line Endings aus. Dies verursacht im Ubuntu Container einen Fehler.

```
  env: bash\r: No such file or directory
```

Mit dem folgenden Befehl kann man `git` dazu zwingen alle Dateien mit UNIX Zeilenendungen zu laden (siehe [stackoverflow](https://stackoverflow.com/questions/29045140/env-bash-r-no-such-file-or-directory)):

```
git config --global core.autocrlf true
```

#### Image selbst bauen

Wenn Du das Docker Image selbst bauen möchtest, kannst Du es mit dem nachfolgenden Befehl tun:

```
docker build -t andygrunwald/fom-latex-template .
```

## LaTeX mit Windows Subsystem for Linux kompilieren 
Eine mögliche Alternative zu Docker:

1. WSL und Distribution installieren und konfigurieren (siehe [Microsoft Docs](https://docs.microsoft.com/en-US/windows/wsl/install-win10))
1. Fork des Repositories erzeugen (siehe oben) und Dein Repository klonen (siehe [Github](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)) 
1. TexLive und benötigte Pakete installieren 
```
sudo apt-get install texlive texlive-lang-german texlive-latex-extra texlive-bibtex-extra texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-lang-german texlive-luatex biber xz-utils
```
4. Installation überprüfen, durch Erzeugen der PDF-Datei.
```
./compile.sh
```
5. (optional) Visual Studio Code mit Extension "Remote - WSL" benutzen (siehe [Microsoft VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl&WT.mc_id=-blog-scottha))


## IDE zur Bearbeitung nutzen

Prinzipiell reicht ein normaler Text-Editor zur Bearbeitung aus.
Jedoch kannst du zum Schreiben der Arbeit auch ein IDE verwenden.
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

Zusätzlich kann die Extension [LTeX](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex) hilfreich sein, die eine **offline Grammatik- und Rechtschreibprüfung** für LaTeX-Dokumente bietet.

## Overleaf zur Bearbeitung nutzen

Anstatt dir einen TEX-Editor und alle weiteren Pakete selber zu installieren und wie oben beschrieben zu kompilieren etc. kannst du auch Online-Tools wie Overleaf (https://www.overleaf.com/) verwenden. Beides hat seine Vor- und Nachteile auf die hier nicht näher eingegangen wird.

Zum Einbinden dieser Vorlage in Overleaf gibt es zwei Möglichkeiten:
1. Der [klassische Download](#klassischer-download) wonach du das ZIP-File einfach bei Overleaf wieder hochlädst.
2. Du kannst deinen [Fork von Github](#fork-auf-github) in Overleaf einbinden.

## Wörter zählen

Gerade bei der Verwendung eines Texteditors ist das Zählen der Wörter unter umständen eine mühselige Aufgabe. Mit den folgenden Vorschlägen kann man die Wörter der Arbeit zählen:

### TeXcount

Über die Seite [TeXcount](https://app.uio.no/ifi/texcount/online.php) können Latex Dateien hochgeladen und gezählt werden.

### Unix / macOS Script

Unter Unix und macOS kann das mitgelieferte Script helfen die Wörter zu zählen. Dafür muss nur [detex](https://github.com/pkubowicz/opendetex) installiert werden. Unter macOS kann `detex` mittels [homebrew](https://brew.sh/index_de) über den Befehl `brew install opendetex` installiert werden.

Das Skript wird einfach über `sh ./countwords.sh` gestartet.

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

Die Nutzung des Projektes ist auf eigene Gefahr und es kann keine Vollständigkeit gewährleistet werden.
Bitte überprüfe das Ergebnis erneut anhand der entsprechenden Leitfäden deines Studiengangs.
Einzelne Standorte und Professoren stellen abgeänderte Leitfäden bereit.

## Lizenz

Dieses Projekt ist unter den Bedingungen der [MIT Lizenz](http://en.wikipedia.org/wiki/MIT_License) öffentlich verfügbar.
