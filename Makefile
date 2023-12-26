.PHONY: init

init:
	@echo "Initializing project..."
	# Replace the following commands with the actual commands needed to initialize the project
	@echo "Installing dependencies..."
	@npm install
	@echo "Setting up development environment..."
	@docker-compose up -d
	@echo "Project initialization complete."
