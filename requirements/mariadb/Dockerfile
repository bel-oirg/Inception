FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install mariadb-server -y

RUN sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./db_setup.sh /

RUN sh db_setup.sh


ENTRYPOINT ["mysqld_safe"]
