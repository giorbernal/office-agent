#!/bin/bash

if [[ ($# < 1) || ($# > 2) ]]; then
    echo "Error: Error in params!"
    echo "Usage: ./run.sh myWorkspace [port] (being myWorkspace a folder in this project)"
    exit -1
fi

WORKSPACE=$1
PORT=${2:-4096}
echo "launching opencode for workspace $WORKSPACE in port $PORT ..."

docker run -it \
  -p $PORT:4096 \
  -v "$HOME/.config/opencode:/root/.config/opencode" \
  -v "$(pwd)/$WORKSPACE:/workspace" \
  --name $WORKSPACE \
  custom-opencode

