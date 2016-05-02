FROM debian:jessie

MAINTAINER Jonatan Allegrini <jallegri@gmail.com>

RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends wget && \
    wget http://software.virtualmin.com/gpl/scripts/install.sh

RUN sh install.sh -f -host $(hostname -f).net
