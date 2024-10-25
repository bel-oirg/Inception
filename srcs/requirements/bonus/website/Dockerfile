FROM debian:bullseye

WORKDIR /home/

RUN apt update -y && apt upgrade -y && apt-get install python3 -y

COPY ./tools/index.html /home/
COPY ./tools/scripts.js /home/
COPY ./tools/styles.css /home/

ENTRYPOINT ["python3", "-m", "http.server", "1337"]
