#!/bin/bash

# Variables
IMAGE_NAME=my-nginx
CONTAINER_NAME=my-nginx-container
HOST_PORT=28080
CONTAINER_PORT=80

echo "Building Docker image..."
docker build -t $IMAGE_NAME .

echo "Stopping existing container (if any)..."
docker rm -f $CONTAINER_NAME 2>/dev/null

echo "Running container..."
docker run -d \
  --name $CONTAINER_NAME \
  -p $HOST_PORT:$CONTAINER_PORT \
  $IMAGE_NAME

