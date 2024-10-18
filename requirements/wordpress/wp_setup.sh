sed -i s/NAME123/$SQL_DATABASE/g /wp-config.php
sed -i s/USER123/$SQL_USER/g /wp-config.php
sed -i s/PASSWORD123/$SQL_PASSWORD/g /wp-config.php
sed -i s/HOST123/$DB_HOST/g /wp-config.php

cp /wp-config.php /var/www/wordpress/

cd /var/www/wordpress/

wp core --allow-root install --url=$WP_DOMAIN --title=$WP_TITLE --admin_user=$WP_ADM --admin_password=$WP_ADM_PASS --admin_email=${WP_ADM_MAIL}

wp user --allow-root create ${WP_USER} ${WP_MAIL} --role=${WP_ROLE}

chown -R www-data:www-data /var/www/wordpress \
    && chmod -R 755 /var/www/wordpress

mkdir -p /var/php

## for redis ##
wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root --path=/var/www/wordpress



php-fpm7.4 -F
