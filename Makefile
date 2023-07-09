.PHONY: up clean
IMAGES := $(shell docker ps -aq)

up:
	docker compose -f ./srcs/docker-compose.yml up
clean:
	docker compose -f ./srcs/docker-compose.yml down --volumes --remove-orphans
	docker image prune -af
	docker volume prune -af
	docker system prune -a
fclean:
	@$(shell docker rmi -f $(shell docker images -a -q)) > /dev/null
