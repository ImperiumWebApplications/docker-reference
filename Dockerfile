FROM ubuntu:latest
LABEL "Author"="Test User"
LABEL "Project"="Tween"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install git apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD tween.tar.gz /var/www/html
