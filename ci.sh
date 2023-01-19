#!/bin/bash
# Shell script to generate docker images

if [ -z "$1" ]; then
    echo "Usage: ./ci.sh <repo_name>"
    exit 1
fi

if ! command -v docker &> /dev/null; then
    echo "docker could not be found"
    exit 1
fi


repo=$1

for i in $(ls -d */); do
    cd $(pwd)/$i
    # check if dockerfile exists
    if [ -f "Dockerfile" ]; then
        tag=${i::-1}
        echo "building image for: $i  [ $repo:$tag ]"
        echo "---"
        docker build -t "$repo:$tag" .
        echo "pushing image to ghcr.io"
        docker tag "$repo:$tag" "ghcr.io/unbxd/jdk:$tag"
        docker push "ghcr.io/unbxd/jdk:$tag"
        echo "---"
    fi
    cd - > /dev/null
done

