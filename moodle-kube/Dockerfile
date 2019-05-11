FROM php:7.3-apache
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN cd /var/www/html && wget https://download.moodle.org/download.php/direct/stable36/moodle-latest-36.tgz
RUN cd /var/www/html && tar xvzf moodle-latest-36.tgz
EXPOSE 80
