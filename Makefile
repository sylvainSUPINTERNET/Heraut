# VARIABLES / CONSTANTS

## Docker images
image_api=petsbnb_api

## Scripts
folder_scripts=./build_scripts/

image_api_script = build-docker-image-api.sh



# COMMANDS

## Build docker API image
## mvn clean install -DskipTests + using Dockerfile to generate image
image_api: $(folder_scripts)$(image_api_script)
	$(folder_scripts)$(image_api_script) $(image_api)


# Build image + container
docker_start_api:
	$(folder_scripts)$(image_api_script) $(image_api) && docker-compose up
