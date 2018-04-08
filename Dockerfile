FROM nimmis/apache-php5

MAINTAINER Mohsen yazdani <mohsen.mphj@gmail.com>

COPY index.php /var/www/html/index.php
COPY set.php /var/www/html/set.php

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
