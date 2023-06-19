FROM debian:buster

RUN apt-get update \
    && apt-get install -y nginx gettext-base\
    && rm -rf /var/lib/apt/lists/*

COPY ./conf/my.conf /etc/nginx/my.conf
COPY ./conf/mycert.pem /etc/nginx/ssl/
COPY ./conf/myssl.pem /etc/nginx/ssl/

EXPOSE 80
EXPOSE 443

CMD /bin/bash -c "envsubst < /etc/nginx/my.conf > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"