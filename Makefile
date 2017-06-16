.PHONY: build
build: Dockerfile
	docker build -t mini-eb-cli .

.PHONY: tag
tag:
	docker tag mini-eb-cli mini/eb-cli

.PHONY: default
default: build
