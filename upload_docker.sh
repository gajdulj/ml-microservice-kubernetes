#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="gajdulj/apimodel"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username gajdulj
docker tag apimodel:udacityproject gajdulj/apimodel:udacityproject

# Step 3:
# Push image to a docker repository
docker push gajdulj/apimodel:udacityproject