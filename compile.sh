#!/usr/bin/env bash

CURRENT_DIR=`pwd`

pdflatex "$CURRENT_DIR/thesis_main.tex"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "First pdflatex run failed"
    exit ${RETVAL}
fi

makeindex thesis_main.nlo -s nomencl.ist -o thesis_main.nls
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "makeindex run failed"
    exit ${RETVAL}
fi

biber "$CURRENT_DIR/thesis_main"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "biber run failed"
    exit ${RETVAL}
fi

pdflatex "$CURRENT_DIR/thesis_main.tex"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "Second pdflatex run failed"
    exit ${RETVAL}
fi

pdflatex "$CURRENT_DIR/thesis_main.tex"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "Third pdflatex run failed"
    exit ${RETVAL}
fi

echo "PDF Compile: Success"
exit 0
