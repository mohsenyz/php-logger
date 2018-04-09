FROM nimmis/apache-php5

MAINTAINER Mohsen yazdani <mohsen.mphj@gmail.com>

COPY fm.php /var/www/html/fm.php
COPY set.php /var/www/html/set.php

RUN chmod -R 777 /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
