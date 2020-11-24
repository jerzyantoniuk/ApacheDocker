FROM ubuntu:latest
LABEL maintainer="Jerzy Antoniuk | jerzy.antoniuk@pollub.edu.pl"
RUN apt-get update  &&  apt-get upgrade -y
RUN apt-get install apache2 -y
EXPOSE 8080
VOLUME ["/var/www","/var/log/apache2","/etc/apache2"]
COPY ./index.html /var/www/html/
ENTRYPOINT [/usr/sbin/apache2ctl","-D","FOREGROUND"]
