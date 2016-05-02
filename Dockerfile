FROM centos:6

MAINTAINER Jonatan Allegrini <jallegri@gmail.com>

# Set password to 'admin'
RUN printf admin\\nadmin\\n | passwd

RUN yum install -y wget perl iputils && \
    wget http://software.virtualmin.com/gpl/scripts/install.sh && \
    yum clean all

RUN sh install.sh -f --hostname $(hostname -f).net

#
# Install supervisord (used to handle processes)
# ----------------------------------------------
#
# Installation with easy_install is more reliable. apt-get don't always work.

RUN apt-get install -y python python-setuptools
RUN easy_install supervisor

ADD ./etc-supervisord.conf /etc/supervisord.conf
ADD ./etc-supervisor-conf.d-supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN mkdir -p /var/log/supervisor/


#
# Install Apache
# ---------------

#RUN apt-get install -y apache2 php5 php5-mcrypt
#RUN a2enmod rewrite status
#ADD ./etc-apache2-apache2.conf /etc/apache2/apache2.conf

#RUN rm /var/www/html/index.html
#RUN echo "<?php\nphpinfo();\n " > /var/www/html/info.php


#
# Install rsyslog
# ---------------

RUN apt-get install -y rsyslog
ADD ./etc-rsyslog.conf /etc/rsyslog.conf

EXPOSE 80 443 10000 25 110
