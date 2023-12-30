.PHONY: init

init:
	@echo "Initializing project..."
	# Install dependencies
	@echo "Installing dependencies..."
	go mod download
	# Compile code
	@echo "Compiling code..."
	go build -o bin/main main.go
	@echo "Project initialized successfully."
