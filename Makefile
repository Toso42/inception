.PHONY: up clean
images := $(shell docker images -q)

up:
	sudo docker compose -f ./srcs/docker-compose.yml up
clean:
	sudo docker compose -f ./srcs/docker-compose.yml down --volumes --remove-orphans
	sudo docker image prune -af
fclean: 
	docker rmi "$(images)"
#	docker rm -vf $(docker ps -aq)
#	docker rmi -f $(docker images -aq)1
#	sudo docker container rm $$(docker ps -aq) -f

