#!/usr/bin/env bash

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

arara "$CURRENT_DIR/thesis_main.tex"
RETVAL="$?"
if [[ "${RETVAL}" -ne 0 ]] ; then
    echo "arara run failed"
    exit ${RETVAL}
fi

echo " "

# counting words if .pl exists
if [ -e texcount.pl ]
then
    WCL="word_counter.log"
	if [ -e $WCL ]
	then
	    rm $CURRENT_DIR/$WCL
	fi
        PATH=Deine_Inhalte/Kapitel/*
        for FILE in $PATH
        do
            echo "Counting your words in chapter: $FILE..."
            $CURRENT_DIR/texcount.pl $FILE -nosub >> $WCL
            # -inc all included files seperate
        done
        echo "Counting your words in general: thesis_main.tex... WARNUNG: Hier müssen Wörter, wie aus dem Dokument Erklaerung.tex abgezogen werden"
        $CURRENT_DIR/texcount.pl thesis_main.tex -merge -nosub >> $WCL
        echo "Have a look into $WCL"
fi

echo " "
echo "Successfully compiled LaTeX PDF with arara"
exit 0