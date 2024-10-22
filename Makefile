all :  build up

build:
	mkdir -p /home/bel-oirg/data/wordpress /home/bel-oirg/data/mariadb
	docker-compose -f srcs/docker-compose.yml build
up :
	docker-compose -f srcs/docker-compose.yml up -d
down :
	docker-compose -f srcs/docker-compose.yml down

re: fclean all

fclean: down
	@docker stop $(shell docker ps -qa) 2>/dev/null || true
	@docker rm $(shell docker ps -qa) 2>/dev/null || true
	@docker rmi -f $(shell docker images -qa) 2>/dev/null || true
	@docker volume rm $(shell docker volume ls -q) 2>/dev/null || true
	@docker network rm $(shell docker network ls -q | grep -v "bridge\|host\|none") 2>/dev/null || true
	rm -rf /home/bel-oirg/data/mariadb/* /home/bel-oirg/data/wordpress/*
