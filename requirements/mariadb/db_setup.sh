service mariadb start
service mysql start

SQL_DATABASE='THEDB'
SQL_USER='solace'
SQL_PASSWORD='blackhorse'
SQL_ROOT_PASSWORD='lmorphiniya17'


sleep 5 

service mariadb status

mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
echo "DB CREATED"
mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
echo "${SQL_USER} CREATED"
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
echo "PRV GRANTED"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
echo "USER ALTERED"
mysql -u root -p"${SQL_ROOT_PASSWORD}" -e "FLUSH PRIVILEGES;"
echo "FLUSHED"
mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
