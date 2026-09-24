FROM php:8.2-apache
RUN a2enmod mime headers rewrite
COPY . /var/www/html/
