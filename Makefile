init:
	@echo "Initializing the project..."
	@go version || (echo "Go is not installed. Please install Go." && exit 1)
	@echo "Go is installed. Checking version..."
	@go version | grep -q "$(shell cat go.mod | grep go | awk '{print $$2}')" || (echo "Incorrect Go version. Please install the correct version." && exit 1)
	@echo "Correct Go version is installed."
	@echo "Setting up GOPATH..."
	@export GOPATH=$(shell pwd)
	@echo "GOPATH is set to $(GOPATH)"
	@echo "Downloading and installing Go dependencies..."
	@go mod download
	@echo "Project initialized successfully."

# existing Makefile rules...
