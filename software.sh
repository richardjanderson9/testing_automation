#!/bin/bash
# Pull the "hello-world" Docker image
docker pull hello-world

# Run the "hello-world" container three times
for i in {1..3}; do
    docker run hello-world
done