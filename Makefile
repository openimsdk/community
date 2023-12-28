.PHONY: init

init:
	# Install necessary dependencies
	sudo apt-get update
	sudo apt-get install -y git make curl

	# Clone the repository
	git clone https://github.com/OpenIMSDK/community.git

	# Set Remote upstream
	git remote add upstream https://github.com/OpenIMSDK/community.git
	git remote set-url --push upstream no-pushing

	# Install gendocs for document generation
	sudo apt-get install -y gendocs

	# Install go-gitlint for commit message linting
	sudo apt-get install -y go-gitlint
