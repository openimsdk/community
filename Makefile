.PHONY: init

# Other targets...

init:
	# Initialize the project depedencies
	go mod download

tidy:
	# Clean up Python bytecodes and other temporary files
	find . -name "*.pyc" -delete
	# Go project specific tidy command
	go clean

image:
	# Build a Docker image for the project
	docker build -t openimsdk-image .

install:
	# Install the project
	go install .
