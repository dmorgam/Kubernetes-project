FROM php:7.3-apache
RUN apt-get update && apt-get install -y wget zlib1g-dev libpng-dev libicu-dev g++ libxml2-dev libpcre3-dev libzip-dev
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN docker-php-ext-install zip && docker-php-ext-enable zip
RUN docker-php-ext-install gd && docker-php-ext-enable gd
RUN docker-php-ext-configure intl && docker-php-ext-install intl && docker-php-ext-enable intl
RUN docker-php-ext-install soap && docker-php-ext-enable soap
RUN docker-php-ext-install opcache && docker-php-ext-enable opcache
RUN docker-php-ext-install xmlrpc && docker-php-ext-enable xmlrpc
RUN chown -R www-data:www-data /var/www
USER www-data
RUN cd /var/www/html && wget https://download.moodle.org/download.php/direct/stable36/moodle-latest-36.tgz
RUN cd /var/www/html && tar xvzf moodle-latest-36.tgz
USER root
EXPOSE 80
