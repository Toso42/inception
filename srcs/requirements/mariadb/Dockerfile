FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt install mariadb-server -y

COPY tools/runner.sh /bin/runner.sh

EXPOSE 3306

ENTRYPOINT [ "/bin/bash" , "/bin/runner.sh" ]