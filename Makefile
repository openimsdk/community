.PHONY: init help

## init: set up python environment and install dependencies
init:
    python3 -m venv env
    source env/bin/activate
    pip install -r requirements.txt

## help: print this help message
help:
    @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
