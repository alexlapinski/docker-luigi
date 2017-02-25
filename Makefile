container_name = docker_luigi

build:
	docker build -t ${container_name} .

run:
	docker run ${container_name}

stop: # TODO: Figure out how to make this command work
	# Get the Docker Container Id
	container_id = $(docker ps -a | grep $(container_name) | awk '{ print $1 }')
	docker rm $(container_id)

clean: # TODO: Figure out how to make this command work
	# Get the docker image id
	image_id = $(shell docker images | grep docker-luigi | awk '{ print $3}')
	docker rmi $(image_id)
