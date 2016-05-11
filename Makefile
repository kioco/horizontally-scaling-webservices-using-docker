DOCKER_IMAGE_NAME=prime-server

.PHONY: docker
docker:
	sudo docker build -t "$(DOCKER_IMAGE_NAME)" .

.PHONY: docker-run
docker-run: docker
	sudo docker run --tty --interactive --rm --name "$(DOCKER_IMAGE_NAME)_instance" "$(DOCKER_IMAGE_NAME)"

.PHONY: check test
check test:
	./prime_tests.py
