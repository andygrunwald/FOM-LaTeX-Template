#!/bin/bash
docker run -it --rm -v ${PWD}:/data andygrunwald/fom-latex-template
evince thesis_main.pdf
