#!/bin/bash/

IMAGE_NAME="guess_the_number"

if ! docker image inspect "$IMAGE_NAME" > /dev/null 2>&1; then
    echo "イメージ '$IMAGE_NAME' が見つかりません。ビルドを開始します。"
    docker build -t "$IMAGE_NAME" .
fi

docker run -it --rm "$IMAGE_NAME"
