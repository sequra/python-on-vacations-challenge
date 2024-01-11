.PHONY: help

APP_NAME ?= platform-on-vacation
PYTHON_VERSION = $(shell grep 'SQ_PYTHON_VERSION=' .env | sed -e 's/^SQ_PYTHON_VERSION=//')

help:
	@echo "$(APP_NAME):$(GIT_COMMIT)"
	@perl -nle'print $& if m{^[a-zA-Z_-]+:.*?## .*$$}' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

production-container-build: ## Build the Docker image
	@docker build --rm \
		--build-arg PYTHON_VERSION=$(PYTHON_VERSION) \
		--file Dockerfile-production \
		-t $(APP_NAME):latest .

production-container-run: ## Run the app in Docker (production environment)
	@docker compose --env-file .env up

production-container-push: ## TO DO: Push the latest container generated to our registry
	# I haven't had time to implement this one, sorry :(
	@echo "To Do"