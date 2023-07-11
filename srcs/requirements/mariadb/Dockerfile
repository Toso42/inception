# FROM debian:buster

# RUN apt update -y
# RUN apt upgrade -y
# RUN apt install mariadb-server -y
FROM alpine:3.17

RUN apk update && apk upgrade
RUN apk add --no-cache mysql mysql-client

COPY tools/runner.sh /tmp/runner.sh
#COPY tools/50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf

#EXPOSE 3306

ENTRYPOINT [ "sh" , "/tmp/runner.sh" ]