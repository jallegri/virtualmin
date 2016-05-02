FROM centos:6

MAINTAINER Jonatan Allegrini <jallegri@gmail.com>

# Set password to 'admin'
RUN printf admin\\nadmin\\n | passwd

RUN yum install -y wget perl

RUN wget http://software.virtualmin.com/gpl/scripts/install.sh && \
    sh install.sh -f --hostname $(hostname -f).net

RUN yum clean all

ENTRYPOINT /etc/webmin/start

EXPOSE 80
EXPOSE 443
