# Dockerfile for https://github.com/andygrunwald/FOM-LaTeX-Template
#
# Example usage:
#   docker run -it --rm -v ${PWD}:/data andygrunwald/fom-latex-template
# 	or use 
#	docker-compose up

FROM ubuntu:24.04

# hadolint ignore=DL3008
RUN apt-get update \
	&& apt-get install -y \
		wget \
		texlive-latex-recommended \
		texlive-latex-extra \
		texlive-fonts-recommended \
		texlive-bibtex-extra \
		texlive-lang-german \
		texlive-plain-generic \
		texlive-luatex \
		biber \
		xz-utils \
		python3 \
		python3-pygments \
		--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

# This can get removed at some point due to docker-compose
VOLUME ["/data"]

WORKDIR /data

COPY ./compile.sh /compile.sh

RUN chmod +x /compile.sh

ENTRYPOINT ["./compile.sh"]

CMD ["lualatex", "--version"]
# CMD ["biber" "--version"]
