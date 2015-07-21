# Docker-kafka-manager

Repository for building a slimline (~125MB) Kafka Manager docker container, just run `./build.sh` which'll:

1. Builds a `kafka-manager-builder` image
2. Runs `kafka-manager-builder` to compile and output to a zip file.
3. Builds `kafka-manager` image with the unzipped zip file.

Works with Boot2Docker on MacOSX.