.PHONY: init

# The 'init' target is responsible for performing the necessary initialization tasks for the project.
# This could include setting up the development environment, installing dependencies, or compiling the project.
# To use the 'init' target, run 'make init' from the command line.
init:
	@echo "Performing initialization tasks..."
	cp config.template.ini config.ini
	# Install dependencies
	sudo apt-get update && sudo apt-get install -y necessary-package
	# Compile the project if necessary
	make compile
