# Dockerfile for https://github.com/andygrunwald/FOM-LaTeX-Template
#
# Example usage:
#   docker run -it -v `pwd`:/data andygrunwald/fom-latex-template
#

FROM ubuntu:14.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install software-properties-common

RUN add-apt-repository ppa:jonathonf/texlive -y \
    && apt-get update \
    && apt-get install -y wget texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-bibtex-extra texlive-lang-german texlive-generic-extra biber --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/data"]

WORKDIR /data

CMD pdflatex --version && biber --version && ./compile.sh
