#!/bin/bash

IMAGE_PREFIX="edvapp"
IMAGE="tftp"
IMAGE_POSTFIX="_image"
VERSION="1.0"

# Format: sudo docker build --tag/-t <user-name>/<repository> .
sudo docker build --tag ${IMAGE_PREFIX}/${IMAGE}:${VERSION} .