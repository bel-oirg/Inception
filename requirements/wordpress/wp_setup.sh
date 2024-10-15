sleep 10

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

wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER \
	--dbpass=$SQL_PASSWORD --dbhost=mariadb --path='/var/www/wordpress'

wp core --allow-root install --url=satori --title=sat --admin_user=thebig --admin_password=thebigger --admin_email=thebiggest@example.com

wp user --allow-root create solana sol@crypted.btc --role=author
