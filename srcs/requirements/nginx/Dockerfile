FROM debian:buster

RUN apt-get update \
    && apt-get install -y nginx openssl \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/ssl

COPY conf/my.conf /etc/nginx/nginx.conf
COPY tools/runner.sh /bin/runner.sh

#EXPOSE 80
EXPOSE 443
#EXPOSE 9000

# CMD /bin/bash -c "envsubst < /etc/nginx/my.conf > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"
# RUN chmod 777 /bin/runner.sh
ENTRYPOINT [ "/bin/bash" , "/bin/runner.sh" ]