.PHONY: init

init:
	# install dependencies
	pip install -r requirements.txt
	# setup database
	psql -f setup.sql
	# compile code
	gcc -o program program.c
