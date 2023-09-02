#!bin/bash

service mariadb start



#mysqld_safe --user=mysql

mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -e "CREATE USER IF NOT EXISTS 'atouba'@'%' IDENTIFIED BY '12345';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'atouba'@'%';"

#mariadb -e "CREATE DATABASE IF NOT EXISTS wordpress;"
#mariadb -e "CREATE USER IF NOT EXISTS 'atouba'@'%' IDENTIFIED BY '12345';"
#mariadb -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'atouba'@'%';"

service mariadb stop
exec "$@"
