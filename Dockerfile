FROM debian:jessie

MAINTAINER Jonatan Allegrini <jallegri@gmail.com>

RUN apt-get update
RUN apt-get install -y --no-install-recommends wget
RUN wget http://software.virtualmin.com/gpl/scripts/install.sh
RUN sh install.sh -f --hostname $(hostname -f).net

EXPOSE 80 443

ENTRYPOINT /etc/webmin/start
