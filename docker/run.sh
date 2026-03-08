#!/bin/bash

if [[ $# != 1 ]]; then
    echo "Error: params requiered!"
    echo "Usage: ./run.sh myWorkspace (being myWorkspace a folder in this project)"
    exit -1
fi

WORKSPACE=$1
echo "launching opencode for workspace $WORKSPACE ..."

docker run -it \
  -p 4096:4096 \
  -v "$HOME/.config/opencode:/root/.config/opencode" \
  -v "$(pwd)/$WORKSPACE:/workspace" \
  --name $WORKSPACE \
  custom-opencode

