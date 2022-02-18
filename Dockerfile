FROM debian:latest
LABEL maintainer="Ralph Schuster <github@ralph-schuster.eu>"

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    apt-utils \
    procps \
	vim \
    curl \
    wget \
    npm \
    git \
    sass \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /usr/local/src/sass-source 

#####################################################################
#  Running the container
#####################################################################
WORKDIR /usr/local/src/sass-source
EXPOSE 8081
CMD ["/bin/bash", "-c", "while :; do sleep 3600; done"]

