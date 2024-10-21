FROM debian:bullseye 

RUN apt update -y && apt upgrade -y && apt install nginx openssl -y

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/ssl /var/php /var/run/nginx

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/cert.crt -keyout /etc/nginx/ssl/key.key -subj "/C=FR/ST=IDF/L=KH/O=42/OU=42/CN=bel-oirg.42.fr/UID=bel-oirg"

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
