#!/usr/bin/env bash
set -e

# variables to store the name of the image & container
IMAGE_NAME="task-4-script-image"
CONTAINER_NAME="task-4-script-container"

# this will rebuild the image within the Docker image
echo "Building image: $IMAGE_NAME"
docker build -t "$IMAGE_NAME" .

# this will run the container and automatically remove it
# upon completion
echo "Running container with bind mount..."
docker run --rm --name "$CONTAINER_NAME" "$IMAGE_NAME"

# this script will require permissions to become executable
# chmod +x my_shell.sh

# it can then be run
# ./my_shell.sh