#!/bin/bash

# Define the list of service directories
services=("service1" "service2" "service3")

# Loop through each service
for service in "${services[@]}"
do
  # Navigate to the service directory
  cd "$service"

  # Build the service
  make

  # Navigate back to the root directory
  cd ..
done
