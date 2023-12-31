.PHONY: init

# The 'init' target is responsible for performing the necessary initialization tasks for the project.
# This could include setting up the development environment, installing dependencies, or compiling the project.
# To use the 'init' target, run 'make init' from the command line.
init:
	@test -f config.ini || (echo "[DEFAULT]\n# Add default values here" > config.ini)
	@sudo apt-get update && sudo apt-get install -y PACKAGE_NAME
	# Add further initialization commands if necessary
