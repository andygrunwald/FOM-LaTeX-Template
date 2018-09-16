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
    WCL='word_counter.log'

	if [ -e $WCL ]
	then
	    rm $CURRENT_DIR/$WCL
	fi

	PATH=${CURRENT_DIR}/Deine_Inhalte/*
	KPATH=${PATH}Kapitel/*

    for KFILE in $KPATH
    do
        echo "Counting your words in chapter: ${KFILE##*/}..."
        $CURRENT_DIR/texcount.pl -quiet -nosub ${KPATH}${KFILE##*/} >> $WCL
        echo "==============================" >> $WCL
        echo " " >> $WCL
    done

    echo "Counting your words in general: thesis_main.tex..."
    echo "Sum up" >> $WCL
    echo "==============================" >> $WCL
    echo " "
    echo "Word Counter: "
    $CURRENT_DIR/texcount.pl -quiet ${CURRENT_DIR}/thesis_main.tex ${KPATH}1_Kapitel.tex ${KPATH}2_Kapitel.tex ${KPATH}3_Kapitel.tex ${KPATH}4_Kapitel.tex
    $CURRENT_DIR/texcount.pl -quiet ${CURRENT_DIR}/thesis_main.tex ${KPATH}1_Kapitel.tex ${KPATH}2_Kapitel.tex ${KPATH}3_Kapitel.tex ${KPATH}4_Kapitel.tex >> $WCL
    echo "Have a look into $WCL"
fi
# TODO legend for sum up section
echo " "
echo "Successfully compiled LaTeX PDF with arara"
exit 0