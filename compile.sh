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

rm *.bbl 2> /dev/null
rm *.blg 2> /dev/null
rm *.aux 2> /dev/null
rm *.bcf 2> /dev/null
rm *.ilg 2> /dev/null
rm *.lof 2> /dev/null
rm *.log 2> /dev/null
rm *.lot 2> /dev/null
rm *.nlo 2> /dev/null
rm *.nls* 2> /dev/null
rm *.out 2> /dev/null
rm *.toc 2> /dev/null
rm *.run.xml 2> /dev/null
rm *.lot 2> /dev/null

echo "PDF Compile: Success"

exit 0
