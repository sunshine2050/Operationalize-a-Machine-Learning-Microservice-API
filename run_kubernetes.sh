#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sunshine2050/operationalize-a-machine-learning-microservice-api
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservice1 --image=sunshine2050/operationalize-a-machine-learning-microservice-api --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward microservice1 8000:80
