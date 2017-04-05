#!/bin/bash

set -e

container_id=$(docker run -d -v /tmp/cache:/tmp/cache -v "$PWD":/tmp/app gliderlabs/herokuish /build)
docker attach "$container_id"
docker wait "$container_id"

docker commit "$container_id" postg
docker rm "$container_id"
