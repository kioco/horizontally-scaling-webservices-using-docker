#!/usr/bin/env bash

for var in DOCKER_EMAIL DOCKER_USERNAME DOCKER_PASSWORD; do
    [[ -z "${!var}" ]] && { echo "\$$var must be set"; exit 1; }
done

DOCKER_IMAGE_NAME="${1:-willprice/prime-server}"

echo "Logging in to Dockerhub"
sudo docker login -e="$DOCKER_EMAIL" \
                  -u="$DOCKER_USERNAME" \
                  -p="$DOCKER_PASSWORD"
echo "Pushing '$DOCKER_IMAGE_NAME' to Dockerhub"
sudo docker push "$DOCKER_IMAGE_NAME"
