# Dockerfile for https://github.com/andygrunwald/FOM-LaTeX-Template
#
# Example usage:
#   docker run -it --rm -v ${PWD}:/data andygrunwald/fom-latex-template
# 	or use 
#	docker-compose up

FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'deb http://ppa.launchpad.net/jonathonf/texlive-staging/ubuntu xenial main' > /etc/apt/sources.list.d/texlive.list \
	&& echo 'deb-src http://ppa.launchpad.net/jonathonf/texlive-staging/ubuntu xenial main' >> /etc/apt/sources.list.d/texlive.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-key F06FC659 \
	&& apt-get update \
	&& apt-get install -y
	&& rm -rf /var/lib/apt/lists/*

# This can get removed at some point due to docker-compose
VOLUME ["/data"]

WORKDIR /data

CMD pdflatex --version && biber --version && ./compile.sh
