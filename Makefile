# .ENV
include .env



# VARIABLES / CONSTANTS

## Docker images
image_repository=${DOCKER_REPOSITORY}
image_api=${IMAGE_API_NAME}
version_dev=${TAG_DEV}
version_prod=${TAG_PROD}
version_preprod=${TAG_PREPROD}
version_nb=${VERSION}

## Docker Hub - Repositroy credentials
docker_id=${DOCKER_ID}
docker_password=${DOCKER_PASSWORD}

## Scripts
folder_scripts=./build_scripts/
image_api_script = build-docker-image-api.sh
image_api_script_prod = build-docker-image-api-prod.sh
deploy_image_api_script = deploy-registry-docker-image-api.sh
docker_clear_script = docker-clear.sh
docker_clear_script_prod = docker-clear-prod.sh



# COMMANDS


## Build docker API image
## mvn clean install -DskipTests + using Dockerfile to generate image
## DEV
image_api_dev: $(folder_scripts)$(image_api_script)
	$(folder_scripts)$(image_api_script) $(image_repository):$(version_dev)$(version_nb)

## preprod
image_api_preprod: $(folder_scripts)$(image_api_script)
	$(folder_scripts)$(image_api_script) $(image_repository):$(version_preprod)$(version_nb)

## prod
image_api_prod: $(folder_scripts)$(image_api_script)
	$(folder_scripts)$(image_api_script) $(image_repository):$(version_prod)$(version_nb)

## Build image + container + start project (container)
docker_start_api_prod:
	$(folder_scripts)$(image_api_script) $(image_repository):$(version_prod)$(version_nb) && docker-compose up


docker_start_api_dev:
	$(folder_scripts)$(image_api_script) $(image_repository):$(version_dev)$(version_nb) && docker-compose up


docker_start_api_preprod:
	$(folder_scripts)$(image_api_script) $(image_repository):$(version_preprod)$(version_nb) && docker-compose up

# execute this from EC2
docker_start_prod:
	$(folder_scripts)$(image_api_script_prod) $(image_repository):$(version_dev)$(version_nb) && sudo docker-compose -f ../docker-compose-prod.yml up -d



## Deploy image on registry Docker Hub sylvainneung/petsbnb (private)
## dev
docker_deploy_registry_dev:
	$(folder_scripts)$(deploy_image_api_script) $(docker_password) $(docker_id) $(image_repository) $(version_dev)$(version_nb)

## prod
docker_deploy_registry_prod:
	$(folder_scripts)$(deploy_image_api_script) $(docker_password) $(docker_id) $(image_repository) $(version_prod)$(version_nb)

## preprod
docker_deploy_registry_preprod:
	$(folder_scripts)$(deploy_image_api_script) $(docker_password) $(docker_id) $(image_repository) $(version_preprod)$(version_nb)



## Utils
docker_clear:
	$(folder_scripts)$(docker_clear_script)


## Utils - prod
docker_clear_prod:
	$(folder_scripts)$(docker_clear_script_prod)