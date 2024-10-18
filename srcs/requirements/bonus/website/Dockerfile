FROM debian:bullseye

WORKDIR /home/

RUN apt update -y && apt upgrade -y && apt-get install python3 -y

COPY ./tools/* /home/

ENTRYPOINT ["python3", "-m", "http.server", "1337"]
