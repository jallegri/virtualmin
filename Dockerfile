FROM centos:6

MAINTAINER Jonatan Allegrini <jallegri@gmail.com>

# Set password to 'admin'
RUN printf admin\\nadmin\\n | passwd

RUN yum install -y wget perl iputils && \
    wget http://software.virtualmin.com/gpl/scripts/install.sh && \
    yum clean all

RUN sh install.sh -f --hostname $(hostname -f).net

EXPOSE 80
EXPOSE 443
