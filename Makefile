init:
	@echo "Initializing project..."
	# Install necessary dependencies
	sudo apt-get update
	sudo apt-get install -y python3-pip
	pip3 install -r requirements.txt

	# Set up environment variables
	export FLASK_APP=app.py
	export FLASK_ENV=development
