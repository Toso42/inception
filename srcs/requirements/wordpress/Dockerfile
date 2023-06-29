FROM alpine:3.17

RUN apk update && apk upgrade \
    && apk add php-fpm

COPY tools/runner.sh /bin/runner.sh
COPY tools/test.php /var/www/html/test.php

EXPOSE 9000

# ENTRYPOINT [ "/bin/sh" , "/bin/runner.sh" ]