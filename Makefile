.PHONY: up clean

up:
	sudo docker compose -f ./srcs/docker-compose.yml up
clean:
	sudo docker compose -f ./srcs/docker-compose.yml down --volumes --remove-orphans
	sudo docker image prune -af
