FROM debian
WORKDIR /var/www/html
COPY index.html ./
#COPY . .
MAINTAINER oudam
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
RUN chown -R www-data: /var/www/html

EXPOSE 80
CMD apachectl -D FOREGROUND

