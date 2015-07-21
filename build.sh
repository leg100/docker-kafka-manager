#!/bin/bash

docker build -t kafka-manager-builder -f Dockerfile.build .
docker run -it -v $HOME/.ivy2/:/root/.ivy2 -v $PWD/dist:/src/target/universal kafka-manager-builder
docker build -t kafka-manager .
