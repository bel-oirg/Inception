FROM debian:bullseye

RUN apt update -y && apt upgrade -y

COPY ./adminer_setup.sh /

ENTRYPOINT ["sh", "/adminer_setup.sh"]
