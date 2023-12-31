.PHONY: init

# The 'init' target is responsible for performing the necessary initialization tasks for the project.
# This could include setting up the development environment, installing dependencies, or compiling the project.
# To use the 'init' target, run 'make init' from the command line.
init:
	@echo "Performing initialization tasks..."
	# Add commands for initialization tasks here
	cp config.template.json config.json
	@echo "Configuration file created."
	pip install -r requirements.txt
	@echo "Dependencies installed."
	make compile
	@echo "Project compiled."
