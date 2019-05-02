rm wordcounts.txt 2> /dev/null

# brew install opendetex
detex thesis_main.tex > thesis_main.txt

# Removes everything before Einleitung and after Anhang
BEGINNING="Einleitung"
ENDING="Anhang"
while read p; do
  # end txt when end was found
  echo "$p" | grep $ENDING && break
  if [ "$FOUNDBEGIN" == "y" ]
      then
          echo "$p" >>wordcounts.txt
          # echo "$p" | sed 's/\[[\w. ]*\][[\w. ]*\]\w+\.\w+/ /g' >>wordcounts.txt
  fi
  # start txt when beginning was found
  echo "$p" | grep $BEGINNING >/dev/null && FOUNDBEGIN="y"
done <thesis_main.txt


echo "Anzahl der Wörter vom Kapitel Einleitung bis Anhang:"
wc -w wordcounts.txt # zeilen, wörter, zeichen
rm wordcounts.txt 2> /dev/null
rm thesis_main.txt 2> /dev/null
