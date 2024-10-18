FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt-get install wget -y

COPY ./tools/cadvisor_setup.sh /

ENTRYPOINT ["sh", "cadvisor_setup.sh"]
