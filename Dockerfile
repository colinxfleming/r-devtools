FROM r-base:latest

# Install ssl, curl, and ssh
RUN apt-get update -qq && \
    apt-get install -y libssl-dev libcurl4-openssl-dev libssh2-1-dev && \
    apt-get clean

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
VOLUME /usr/src/app

# Install R packages
RUN Rscript packages.R
