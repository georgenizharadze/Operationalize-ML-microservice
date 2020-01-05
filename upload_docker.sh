#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=195011/price-predictor:1.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u 195011 -p $PASSWORD #password set outside this script as ENV VAR

# Step 3:
# Push image to a docker repository
docker push $dockerpath
