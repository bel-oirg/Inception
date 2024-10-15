wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/bin/wp

cd /var/www/wordpress

DOMAIN_NAME=bel-oirg.42.fr

#MYSQL_SETUP
SQL_ROOT_PASSWORD=lmorphiniya17
SQL_USER=solace
SQL_PASSWORD=blackhorse
SQL_DATABASE=THEDB


ping -c 4 mariadb


cp /wp-config.php /var/www/wordpress/

wp core --allow-root install --url=satori --title=sat --admin_user=thebig --admin_password=thebigger --admin_email=thebiggest@example.com

wp user --allow-root create solana sol@crypted.btc --role=author


chown -R www-data:www-data /var/www/wordpress \
    && chmod -R 755 /var/www/wordpress

mkdir -p /var/php


php-fpm7.4 -F
