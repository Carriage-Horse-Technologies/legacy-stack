FROM php:7.4-apache as builder
COPY --from=composer /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER=1

RUN apt update && apt install -y vim git unzip
RUN docker-php-ext-install pdo_mysql
RUN echo '\
log_errors = On\n\
error_log = /dev/stderr\n\
error_reporting = E_ALL\n\
' >> /usr/local/etc/php/php.ini \


FROM builder
WORKDIR /var/www/html
COPY app/composer.json /var/www/html/composer.json
RUN composer install

ENV APACHE_DOCUMENT_ROOT /var/www/html/public

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

EXPOSE 80
