FROM pamtrak06/ubuntu16.04-apache2-python

RUN apt-get update -y && \
    apt-get install -y qgis-server libapache2-mod-fcgid

RUN a2enmod fcgid
RUN a2enconf serve-cgi-bin
