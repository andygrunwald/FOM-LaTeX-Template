pdflatex thesis_main.tex
biber thesis_main
makeindex thesis_main.nlo -s nomencl.ist -o thesis_main.nls
pdflatex thesis_main.tex
pdflatex thesis_main.tex
