#!/bin/bash

IMAGE="$(ls /home/dooley/wall/ | shuf -n 1)"
IMAGE_PATH="/home/dooley/wall/$IMAGE"
wpg -a $IMAGE_PATH
wpg -ns $IMAGE
wal -i $IMAGE_PATH

/bin/bash /home/dooley/sh/alacritty.sh
