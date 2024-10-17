cd /var/www

wget https://wordpress.org/wordpress-6.6.2.tar.gz -O w_p.tar.gz

tar -xzf w_p.tar.gz && rm w_p.tar.gz

chown -R root:root /var/www/wordpress

mkdir /run/php

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/bin/wp

