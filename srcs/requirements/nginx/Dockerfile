FROM debian:bullseye 

RUN apt update -y && apt upgrade -y && apt install nginx -y

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/ssl /var/php /var/run/nginx

COPY ./conf/cert.pem /etc/nginx/ssl/cert.pem
COPY ./conf/key.pem  /etc/nginx/ssl/key.pem

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
