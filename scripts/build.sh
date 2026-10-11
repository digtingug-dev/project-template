#!/usr/bin/env bash

set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-react-frontend-master-template}"
IMAGE_TAG="${IMAGE_TAG:-${GITHUB_SHA:-local}}"

echo "Building Docker image..."
echo "Image: ${IMAGE_NAME}:${IMAGE_TAG}"

docker build \
  --file docker/Dockerfile \
  --tag "${IMAGE_NAME}:${IMAGE_TAG}" \
  .

echo "Docker image built successfully:"
echo "${IMAGE_NAME}:${IMAGE_TAG}"