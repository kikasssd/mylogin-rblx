FROM php:8.2-apache

COPY . /var/www/html/

RUN echo '<Directory /var/www/html/>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>' > /etc/apache2/conf-available/override.conf \
    && a2enconf override

RUN chmod -R 755 /var/www/html/ && \
    chown -R www-data:www-data /var/www/html/

RUN a2enmod mime headers rewrite
