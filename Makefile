tidy:
	@echo "Ensuring Go dependencies are tidy..."
	@go mod tidy

.PHONY: init

# Other targets...

init:
	# Commands to initialize the project
	# For example:
	# npm install
	# or
	# pip install -r requirements.txt
