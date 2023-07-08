#!/bin/sh

echo "hello from wordpress script!"

CONF=/var/www/html/wp-config.php
if [ -f "$CONF" ]; then
	echo "wordpress already configured"
else
	sleep 5 # mariadb service must configure and restart first
	service php7.3-fpm start
	cd /var/www/html/
	wp core download --allow-root
	wp config create --dbname=$WPDB_NAME --dbuser=$WPDB_USER --dbpass=$WPDB_PASSWORD --dbhost=$DB_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
    wp core install --url=$DOMAIN_NAME --title="$WP_TITLE" --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
    wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASS --allow-root
    #wp theme install inspiro --activate --allow-root
	service php7.3-fpm stop
fi

echo "PHP-FPM7.3 starting"
php-fpm7.3 -F
#while true; do sleep 1; done