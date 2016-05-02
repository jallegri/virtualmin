FROM debian:jessie

MAINTAINER Jonatan Allegrini <jallegri@gmail.com>

RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends wget perl && \
    wget http://software.virtualmin.com/gpl/scripts/install.sh

RUN sh install.sh -f --hostname $(hostname -f).net

EXPOSE 22 25 10000 10001 10002 10003 10004 10005 10006 10007 10008 10009 20000
EXPOSE 80 443 21 20 110 143
EXPOSE 53/udp 53/tcp

RUN /etc/webmin/start

ENTRYPOINT /bin/bash
