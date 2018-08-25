IMAGE_NAME ?= docker-wasm
VERSION ?= 1.0.0

.PHONY: build
build:
	docker build --no-cache=true -t awesomeobserver/$(IMAGE_NAME):$(VERSION) -f ./Dockerfile .