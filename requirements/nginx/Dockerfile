FROM debian:bullseye 

RUN apt update -y && apt upgrade -y && apt install nginx -y

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/ssl /var/run/nginx

COPY ./ssl/cert.pem /etc/nginx/ssl/cert.pem
COPY ./ssl/key.pem  /etc/nginx/ssl/key.pem

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
