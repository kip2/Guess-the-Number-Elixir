#!/bin/bash

IMAGE_NAME="guess_the_number"

if docker image inspect "$IMAGE_NAME" > /dev/null 2>&1; then
    docker rmi "$IMAGE_NAME"
fi