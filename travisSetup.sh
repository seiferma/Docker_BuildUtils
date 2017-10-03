#!/bin/bash

if [ -z ${DOCKER_REGISTRY_HOST+x} ]; then DOCKER_REGISTRY_HOST=https://seiferma-docker-registry.bintray.io; fi
if [ -z ${DOCKER_REGISTRY_MAIL+x} ]; then DOCKER_REGISTRY_MAIL=seiferma@users.noreply.github.com; fi

echo "{
        \"https://seiferma-docker-registry.bintray.io\" : {
        \"auth\" : \"$DOCKER_REGISTRY_AUTH\",
        \"email\" : \"seiferma@users.noreply.github.com\"
     }
}
" > ~/.dockercfg