#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath='195011/price-predictor:1.0'
# Already uploaded via the upload_docker.sh script

# Step 2
# Run the Docker Hub container with kubernetes
# Implemented in a declarative way, via a deployment object
kubectl apply -f deploy.yml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
# Implemented in a declarative way, via a service object, port 30002
kubectl apply -f svc.yml
