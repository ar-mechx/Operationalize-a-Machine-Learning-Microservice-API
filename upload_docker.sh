#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=udacitypinzonimage

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username mechx
docker tag api mechx/api:v1pro3

# Step 3:
# Push image to a docker repository
docker push mechx/api:v1pro3