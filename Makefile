.PHONY: up clean
#IMAGES := $(shell docker ps -aq)

up:
	sudo mkdir -p /home/tdi-leo.42.fr/data/site
	sudo mkdir -p /home/tdi-leo.42.fr/data/db
	docker compose -f ./srcs/docker-compose.yml up
clean:
	docker compose -f ./srcs/docker-compose.yml down --volumes --remove-orphans
	docker image prune -af
	docker volume prune -af
	docker system prune -a
fclean:
	@$(shell docker rmi -f $(shell docker images -a -q)) > /dev/null
	sudo rm -rf /home/tdi-leo.42.fr/data
#	sudo rm -rf /home/tdi-leo.42.fr/data