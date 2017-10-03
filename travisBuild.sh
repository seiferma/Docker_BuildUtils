#!/bin/sh

set -o xtrace
docker build -t $DOCKER_REGISTRY_NAME/$IMAGE_NAME .