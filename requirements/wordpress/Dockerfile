FROM debian:bullseye

WORKDIR /var/www

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y curl wget \
    php7.4 php-fpm php-mysql mariadb-client iputils-ping

COPY ./www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./wp_prepare.sh /
COPY ./wp_setup.sh /
COPY ./wp-config.php /

RUN sh /wp_prepare.sh

ENTRYPOINT ["sh", "/wp_setup.sh"]
