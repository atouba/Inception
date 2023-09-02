#!/bin/bash
set -xe
sleep 5

#cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php
chown -R www-data:www-data /var/www/wordpress
#cd wordpress

#rm -rf wp-config.php

rm -f /var/www/wordpress/wp-config.php

#wp core install --config-file=/var/www/wordpress/wp-config.php --allow-root --dbhost='mariadb' --dbname="wordpress" --dbuser="atouba" --dbpass="12345"
#wp config create --config-file=/var/www/wordpress/wp-config.php --allow-root --dbhost='mariadb' --dbname="wordpress" --dbuser="atouba" --dbpass="12345"
wp config create --allow-root --dbname='wordpress' --dbuser='atouba' --dbpass='12345' --dbhost='mariadb'

# cd wordpress
chmod +x wp-config.php 

wp core install --allow-root --url='atouba.42.fr' --title="title" --admin_user="admin" --admin_password="ADMIN_PSW" --admin_email="a@kfdk.com"
wp user --allow-root create "P_USER" "P_EMAIL@sd.com" --role=author --user_pass="P_USER"

/usr/sbin/php-fpm8.2 -F
