#!/bin/sh

set -o xtrace
if [ "$TRAVIS_EVENT_TYPE" != "cron" ]; then
	docker push $DOCKER_REGISTRY_NAME/$IMAGE_NAME
fi