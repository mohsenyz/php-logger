FROM php:7.1.8-apache

MAINTAINER Mohsen yazdani <mohsen.mphj@gmail.com>

COPY fm.php /var/www/html/fm.php
COPY set.php /var/www/html/set.php

RUN chown -R www-data:www-data /var/www/html && a2enmod rewrite
RUN chmod -R 777 /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
