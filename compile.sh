#!/usr/bin/env bash
#Run the Script from the folder you are in...
CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
compile=""
biberarg=""
CMD_LATEX=lualatex
# avoid $TERM warning
export TERM=xterm-256color

# Function to remove temporary files from previously crashed runs
cleanup() {
    rm -f ./*.bbl ./*.blg ./*.aux ./*.bcf ./*.ilg ./*.lof ./*.log ./*.lot ./*.nlo ./*.nls* ./*.out ./*.toc ./*.run.xml ./*.sub ./*.suc ./*.syc ./*.sym
}

# Remove existing PDF and temporary files at the beginning
rm -f "$CURRENT_DIR/thesis_main.pdf"
cleanup

echo "Compiling in Language: $1"
if [ "$1" = "en" ] || [ "$2" = "en" ] ; then
  compile="$CMD_LATEX --shell-escape --jobname=\"thesis_englisch\" \"\def\FOMEN{}\input{$CURRENT_DIR/thesis_main.tex}\""
  biberarg="$CURRENT_DIR/thesis_englisch"
else
  compile="$CMD_LATEX --shell-escape \"$CURRENT_DIR/thesis_main.tex\""
  biberarg="$CURRENT_DIR/thesis_main"
fi

eval "$compile"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "First $CMD_LATEX run failed"
    exit ${RETVAL}
fi

biber "$biberarg"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "biber run failed"
    exit ${RETVAL}
fi

eval "$compile"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "Second $CMD_LATEX run failed"
    exit ${RETVAL}
fi

eval "$compile"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "Third $CMD_LATEX run failed"
    exit ${RETVAL}
fi

# Remove temporary files at the end
cleanup

echo "PDF Compile: Success"

exit 0
