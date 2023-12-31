.PHONY: init

# The 'init' target is responsible for performing the necessary initialization tasks for the project.
# This could include setting up the development environment, installing dependencies, or compiling the project.
# To use the 'init' target, run 'make init' from the command line.
init:
	@echo "Performing initialization tasks..."
	# Install project dependencies
	pip install -r requirements.txt

	# Setup environment variables
	cp .env.example .env
