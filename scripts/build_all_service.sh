#!/bin/bash

# Build service1
docker build -t service1:latest ./service1
if [ $? -ne 0 ]; then
    echo "Failed to build service1"
    exit 1
fi

# Build service2
docker build -t service2:latest ./service2
if [ $? -ne 0 ]; then
    echo "Failed to build service2"
    exit 1
fi

# Build service3
docker build -t service3:latest ./service3
if [ $? -ne 0 ]; then
    echo "Failed to build service3"
    exit 1
fi

echo "All services built successfully"
