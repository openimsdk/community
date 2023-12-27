.PHONY: init

init:
	@echo "Initializing project..."
	# Install dependencies
	@echo "Installing dependencies..."
	sudo apt-get update && sudo apt-get install -y \
		git \
		make \
		gendocs \
	# Set up environment variables
	@echo "Setting up environment variables..."
	export OPENIM_ROOT=$$(pwd)
	# Configure tools
	@echo "Configuring tools..."
	git remote add upstream https://github.com/OpenIMSDK/community.git
	git remote set-url --push upstream no-pushing
	# Generate documentation
	@echo "Generating documentation..."
	make new-post POST_NAME="openim-offline-deployment-design"
	@echo "Project initialized successfully."
