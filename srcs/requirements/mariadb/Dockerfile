FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt install mariadb-server -y

COPY tools/runner.sh /bin/runner.sh
COPY tools/50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

ENTRYPOINT [ "/bin/bash" , "/bin/runner.sh" ]