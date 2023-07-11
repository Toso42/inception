# FROM alpine:3.17

# RUN apk update
# RUN apk upgrade
# RUN apk add php-fpm wget

FROM debian:buster

RUN apt update -y && apt upgrade -y 

RUN apt install php php-fpm php-mysql php-gd php-curl php-zip -y

RUN apt install wget -y

# the client is installed only for terminal to terminal connection testing
RUN apt install mariadb-client -y

RUN mkdir -p /var/www/html
RUN chown -R www-data:www-data /var/www/html
RUN cd /var/www/html && find . -type d -exec chmod 755 {} \; && find . -type f -exec chmod 644 {} \;

# this creates a folder and sets ownership for the fpm web socket
RUN mkdir -p /run/php && chown www-data:www-data /run/php
#COPY tools/www.conf /etc/php/7.3/fpm/pool.d

COPY tools/runner.sh /bin/runner.sh
#COPY tools/test.php /var/www/html/test.php
#COPY tools/test.html /var/www/html/test.html
COPY tools/www.conf /etc/php/7.3/fpm/pool.d
#COPY tools/php.ini	/etc/php/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN cp wp-cli.phar /usr/bin/wp

WORKDIR /var/www/html
EXPOSE 9000
EXPOSE 3306

ENTRYPOINT [ "/bin/bash" , "/bin/runner.sh" ]