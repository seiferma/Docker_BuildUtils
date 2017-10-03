#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z ${DOCKER_REGISTRY_NAME+x} ]; then export DOCKER_REGISTRY_NAME=seiferma-docker-registry.bintray.io; fi
if [ -z ${DOCKER_REGISTRY_HOST+x} ]; then export DOCKER_REGISTRY_HOST=https://$DOCKER_REGISTRY_NAME; fi
if [ -z ${DOCKER_REGISTRY_MAIL+x} ]; then export DOCKER_REGISTRY_MAIL=seiferma@users.noreply.github.com; fi

echo "{
        \"https://seiferma-docker-registry.bintray.io\" : {
        \"auth\" : \"$DOCKER_REGISTRY_AUTH\",
        \"email\" : \"seiferma@users.noreply.github.com\"
     }
}
" > ~/.dockercfg

export PATH=$DIR:$PATH