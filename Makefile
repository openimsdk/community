.PHONY: init

# The 'init' target is responsible for performing the necessary initialization tasks for the project.
# This could include setting up the development environment, installing dependencies, or compiling the project.
# To use the 'init' target, run 'make init' from the command line.
init:
	@echo "Performing initialization tasks..."
	jq -c '.dependencies[]' config/init_config.json | while read i; do 
		name=$$(echo $$i | jq -r '.name'); 
		action=$$(echo $$i | jq -r '.action'); 
		if [ "$$action" = "install" ]; then 
			echo "Installing $$name..."; 
			sudo apt-get install $$name; 
		fi 
	done
