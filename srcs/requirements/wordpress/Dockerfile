FROM debian:bullseye

WORKDIR /var/www

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y curl wget \
    php7.4 php-fpm php-mysql mariadb-client iputils-ping

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./conf/wp-config.php /
COPY ./tools/wp_prepare.sh /
COPY ./tools/wp_setup.sh /

RUN sh /wp_prepare.sh

ENTRYPOINT ["sh", "/wp_setup.sh"]
