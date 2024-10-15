FROM debian:bullseye

WORKDIR /var/www

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y curl wget \
    php7.4 php-fpm php-mysql mariadb-client iputils-ping

COPY ./www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY ./wp_setup.sh /
COPY ./wp-config.php /

RUN wget https://wordpress.org/wordpress-6.6.2.tar.gz -O w_p.tar.gz

RUN tar -xzf w_p.tar.gz && rm w_p.tar.gz 

RUN chown -R root:root /var/www/wordpress

RUN mkdir /run/php

ENTRYPOINT ["sh", "/wp_setup.sh"]
