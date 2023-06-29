FROM alpine:3.17

RUN apk update && apk upgrade \
    && apk add php-fpm

RUN mkdir -p /var/www/html

COPY tools/runner.sh /bin/runner.sh
COPY tools/test.php /var/www/html/test.php
COPY tools/test.html /var/www/html/test.html
EXPOSE 9000

ENTRYPOINT [ "/bin/sh" , "/bin/runner.sh" ]