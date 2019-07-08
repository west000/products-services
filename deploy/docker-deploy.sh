#! /bin/bash
set -e

DOCKER_REGISTRY_USER_NAME="west000"
APP_NAME="products-services"
APP_VERSION="latest"

FULL_TAG=$DOCKER_REGISTRY_USER_NAME/$APP_NAME:$APP_VERSION

echo "Pulling Docker image from registry"
docker pull $FULL_TAG

echo "Launching Docker Container"
docker run -o 0.0.0.0 -p 5555:5555 products-services


