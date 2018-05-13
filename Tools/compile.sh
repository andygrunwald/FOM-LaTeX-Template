#!/usr/bin/env bash
#Run the Script from the folder you are in...
CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

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

rm *.bbl > /dev/null
rm *.blg > /dev/null
rm *.aux > /dev/null
rm *.bcf > /dev/null
rm *.ilg > /dev/null
rm *.lof > /dev/null
rm *.log > /dev/null
rm *.nlo > /dev/null
rm *.nls* > /dev/null
rm *.out > /dev/null
rm *.toc > /dev/null
rm *.run.xml > /dev/null

echo "PDF Compile: Success"

exit 0

