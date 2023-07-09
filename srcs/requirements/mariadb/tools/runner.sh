#! /bin/bash


echo "hello from DB script!"

CONF=db.conf
if [ -f "$CONF" ]; then
	echo "db already configured"
else
    service mysql restart

    # wait a few seconds to get service up before configuring db
    sleep 2
    echo "Configuring Database"
    echo "CREATE DATABASE IF NOT EXISTS $WPDB_NAME ;" > db.conf
    echo "CREATE USER IF NOT EXISTS '$WPDB_USER'@'%' IDENTIFIED BY '$WPDB_PASSWORD' ;" >> db.conf
    echo "GRANT ALL PRIVILEGES ON $WPDB_NAME.* TO '$WPDB_USER'@'%' ;" >> db.conf
    echo "FLUSH PRIVILEGES ;" >> db.conf

    mysql < db.conf
    service mysql stop
fi
#while true; do sleep 1; done

# mysql daemon run
echo "Restarting Mysql"
mysqld