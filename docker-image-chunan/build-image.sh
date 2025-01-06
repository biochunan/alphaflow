#!/bin/zsh

BASE=$(realpath $(dirname $0))

pushd $(dirname $BASE)
docker build -t $USER/alphaflow:dev -f Dockerfile.dev.chunan .
popd
