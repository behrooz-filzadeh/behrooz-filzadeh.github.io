
# Docker Makefile
# Variables
CONTAINER_CMD := $(shell command -v podman 2> /dev/null || command -v docker 2> /dev/null)
IMAGE_NAME := personal-website
CONTAINER_NAME := personal-website
TAG := latest
PORT_80 := 80

# Build Docker image
.PHONY: build
build:
	$(CONTAINER_CMD) build -t $(IMAGE_NAME):$(TAG) .

# Run Docker container
.PHONY: run
run: build
	$(CONTAINER_CMD) run -d \
		--name $(CONTAINER_NAME) \
		-p $(PORT_80):$(PORT_80) \
		$(IMAGE_NAME):$(TAG)

# Stop container
.PHONY: stop
stop:
	$(CONTAINER_CMD) stop $(CONTAINER_NAME) || true

# Clean up (stop and remove container and image)
.PHONY: clean
clean: stop
	$(CONTAINER_CMD) rm $(CONTAINER_NAME) || true
	$(CONTAINER_CMD) rmi $(IMAGE_NAME):$(TAG) || true
