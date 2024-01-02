.PHONY: init

# The 'init' target is responsible for performing the necessary initialization tasks for the project.
# This could include setting up the development environment, installing dependencies, or compiling the project.
# To use the 'init' target, run 'make init' from the command line.
init:
	@echo "Updating package manager..."
	sudo apt-get update
	@echo "Installing essential tools..."
	sudo apt-get install -y curl git
	# Add commands to set environment variables (if needed)
	# Add commands to install project-specific dependencies (if needed)
	# Add command to compile the project (if needed)
	# Add commands for initialization tasks here
	cp config.example.json config.json
	npm install
