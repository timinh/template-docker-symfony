CONTAINER_NAME := app
.PHONY: help start stop ps bash

help: ## Affiche cette aide
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	
start: ## Démarre les services docker
	@docker-compose up -d

stop: ## Stoppe les services docker
	@docker-compose down
	
ps: ## Affiche les containers docker
	@docker ps

bash: ## Accès à la ligne de commandes sur le conteneur du site
	@docker exec -it $(CONTAINER_NAME) bash