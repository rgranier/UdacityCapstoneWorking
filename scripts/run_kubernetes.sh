#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath='rgranier/microservicerepo'

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment k8microservice --image=docker.io/${dockerpath}
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/k8microservice 8000:80
