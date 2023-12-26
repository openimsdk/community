#!/bin/bash

# List of services to build
services=("service1" "service2" "service3")

# Loop over each service
for service in ${services[@]}; do
  # Navigate to the service's directory
  cd $service

  # Build the service
  go build

  # Navigate back to the root directory
  cd ..
done

# Print success message
echo "All services have been built successfully."
