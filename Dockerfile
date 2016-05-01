FROM debian:jessie

MAINTAINER jallegri@gmail.com

ADD ./install.sh /

RUN sh /install.sh

