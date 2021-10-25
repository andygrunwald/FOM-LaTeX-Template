# Einfügen eines Headers und Footers 

Im Preamble lässt sich mit dem folgenden Code ein Header und Footer wie im FOM-Leitfaden zu definieren. 

'''
%-----------------------------------
% Kopfbereich / Header definieren
%-----------------------------------
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

\newcommand{\changefont}{%
    \fontsize{10}{11}\selectfont
}

% Seitenzahl oben, links, entsprechend Leitfaden 
\fancyhead[R]{\changefont \leftmark}
\renewcommand{\headrulewidth}{2pt}
\renewcommand{\headrule}{\hbox to\headwidth{%
  \color{teal}\leaders\hrule height \headrulewidth\hfill}}
\setlength{\headheight}{25pt}

% Footer mit Balken
\fancyfoot[R]{\textcolor{gray}{\myTitel} | \textcolor{teal}{\thepage}}
\renewcommand{\footrulewidth}{1pt}
\renewcommand{\footrule}{\hbox to\headwidth{
    \color{teal}\leaders\hrule height \footrulewidth\hfill}}
'''

Um das Abschneiden des Footers zu verhindern muss nun das Format der Gesamtseite angepasst werden. Dadurch verückt das Layout etwas, dies sollte mit dem Dozenten abgesprochen werden.

'''
\usepackage[a4paper, left=4cm, right=2cm, top=4cm, bottom=3cm]{geometry}
'''