FROM ubuntu:latest
LABEL maintainer="Jerzy Antoniuk | jerzy.antoniuk@pollub.edu.pl"
RUN apt-get update  &&  apt-get upgrade -y
RUN apt-get install httpd -y
EXPOSE 80
VOLUME ["/usr/sbin/httpd","/var/log/httpd"]
ENTRYPOINT [/usr/sbin/httpd","-D","FOREGROUND"]
