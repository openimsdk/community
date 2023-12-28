#!/bin/bash

# Navigate to the root directory of the project
cd "$(dirname "$0")/.."

# Use docker-compose to build all services
docker-compose -f docker-compose.yml build
