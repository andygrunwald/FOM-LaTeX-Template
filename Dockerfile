# Dockerfile for https://github.com/andygrunwald/FOM-LaTeX-Template
#
# Example usage:
#   docker run -it --rm -v ${PWD}:/data andygrunwald/fom-latex-template
# 	or use 
#	docker-compose up

FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'deb http://ppa.launchpad.net/jonathonf/texlive-2016/ubuntu trusty main' > /etc/apt/sources.list.d/texlive.list \
	&& echo 'deb-src http://ppa.launchpad.net/jonathonf/texlive-2016/ubuntu trusty main' >> /etc/apt/sources.list.d/texlive.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-key F06FC659 \
	&& apt-get update \
	&& apt-get install -y \
		wget \
		texlive-latex-recommended \
		texlive-latex-extra \
		texlive-fonts-recommended \
		texlive-bibtex-extra \
		texlive-lang-german \
		texlive-generic-extra \
		biber \
		python \
		python-pygments \
		--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

# This can get removed at some point due to docker-compose
VOLUME ["/data"]

WORKDIR /data

CMD pdflatex --version && biber --version && ./compile.sh
