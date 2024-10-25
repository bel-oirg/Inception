FROM debian:bullseye

RUN apt update -y && apt upgrade -y

COPY ./tools/adminer_setup.sh /

ENTRYPOINT ["sh", "/adminer_setup.sh"]
