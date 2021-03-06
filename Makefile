MAINTAINER ?= awesomeobserver
IMAGE_NAME ?= docker-wasm
VERSION ?= 1.0.0

.PHONY: build
build:
	docker build --no-cache=true -t $(MAINTAINER)/$(IMAGE_NAME):$(VERSION) -f ./Dockerfile .

.PHONY: publish
publish:
	docker push $(MAINTAINER)/$(IMAGE_NAME):$(VERSION)