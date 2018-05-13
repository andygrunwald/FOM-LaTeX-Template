pdflatex thesis_main.tex
makeindex thesis_main.nlo -s nomencl.ist -o thesis_main.nls
biber thesis_main
pdflatex thesis_main.tex
pdflatex thesis_main.tex
thesis_main.pdf