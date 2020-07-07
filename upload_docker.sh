#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u sunshine2050
docker tag app sunshine2050/operationalize-a-machine-learning-microservice-api:app
# Step 3:
# Push image to a docker repository
docker push sunshine2050/operationalize-a-machine-learning-microservice-api:app

