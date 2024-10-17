all : build up

build :
	docker-compose build

up :
	docker-compose up -d

down :
	docker-compose down

fclean: down
	rm -rf /root/data/wordpress/* /root/data/mariadb/*

