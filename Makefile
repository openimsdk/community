.PHONY: init

init:
	@echo "Setting up the environment..."
	python -m pip install --upgrade pip
	pip install -r requirements.txt
	@echo "Running tests..."
	python -m unittest discover tests
	@echo "Environment setup and tests completed."
