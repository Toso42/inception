#!/bin/sh

echo "hello from wordpress script!"

CONF=/var/www/html/wp-config.php
if [ -f "$CONF" ]; then
	echo "wordpress already configured"
else
	cd /var/www/html/
	wp core download --allow-root
fi

while true; do sleep 1; done