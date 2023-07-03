# FROM alpine:3.17

# RUN apk update
# RUN apk upgrade
# RUN apk add php-fpm wget

FROM debian:buster

RUN apt update -y && apt upgrade -y 

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y && apt install wget -y

RUN apt install mariadb-client -y

RUN mkdir -p /var/www/html

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN cp wp-cli.phar /usr/bin/wp

COPY tools/runner.sh /bin/runner.sh
COPY tools/test.php /var/www/html/test.php
COPY tools/test.html /var/www/html/test.html
EXPOSE 9000
#EXPOSE 3306

ENTRYPOINT [ "/bin/bash" , "/bin/runner.sh" ]