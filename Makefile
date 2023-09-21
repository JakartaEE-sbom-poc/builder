UID := $(shell id -u)
GID := $(shell id -g)
# Determine the system operator
OS := $(shell uname)


clean:
	docker rmi -f jakartee/builder



build: 
	docker-compose build --build-arg USER_ID=$(UID) --build-arg GROUP_ID=$(GID)



.PHONY: build clean
