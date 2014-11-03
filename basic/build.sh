# Format: sudo docker build --tag/-t <user-name>/<repository> .

IMAGE_PREFIX="edvapp"
IMAGE="basic"
IMAGE_POSTFIX="_image"
VERSION="1.0"

sudo docker build --tag ${IMAGE_PREFIX}/${IMAGE}:${VERSION} .