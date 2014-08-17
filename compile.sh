#!/bin/sh

CURRENT_DIR=`pwd`

pdflatex "$CURRENT_DIR/thesis_main.tex"
makeindex thesis_main.nlo -s nomencl.ist -o thesis_main.nls
biber "$CURRENT_DIR/thesis_main"
pdflatex "$CURRENT_DIR/thesis_main.tex"
pdflatex "$CURRENT_DIR/thesis_main.tex"
