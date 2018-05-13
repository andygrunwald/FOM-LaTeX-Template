#!/usr/bin/env bash
#Run the Script from the folder you are in...
CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

arara "$CURRENT_DIR/thesis_main.tex"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "arara run failed"
    exit ${RETVAL}
fi

echo "Successfully compiled LaTeX PDF with arara"
exit 0