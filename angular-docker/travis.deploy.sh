#!/usr/bin/env bash
set -e

FULL_IMAGE_NAME="${DOCKER_IMAGE}:${TRAVIS_TAG}"
LATEST_IMAGE_NAME="${DOCKER_IMAGE}:latest"
echo "${DOCKER_HUB_PASSWORD}" | docker login --username "${DOCKER_HUB_USER}" --password-stdin
docker tag ${FULL_IMAGE_NAME} ${LATEST_IMAGE_NAME}
docker push ${FULL_IMAGE_NAME}
docker push ${LATEST_IMAGE_NAME}
