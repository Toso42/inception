.PHONY: up clean
IMAGES := $(shell docker ps -aq)

up:
	docker compose -f ./srcs/docker-compose.yml up
clean:
	docker compose -f ./srcs/docker-compose.yml down --volumes --remove-orphans
	docker image prune -af
fclean:
	@$(shell docker rmi -f $(shell docker images -a -q)) > /dev/null
#stop:
#	echo $(IMAGES)

#	$(shell docker stop $(IMAGES))
#	$(shell docker rm $(docker ps -a -q))
#	docker rm -vf $(docker ps -aq)
#	docker rmi -f $(docker images -aq)1
#	sudo docker container rm $$(docker ps -aq) -f

