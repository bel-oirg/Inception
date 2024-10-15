FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./db_setup.sh /

RUN sh db_setup.sh


ENTRYPOINT ["mysqld_safe"]
