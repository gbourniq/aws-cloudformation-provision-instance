# Set shell
SHELL=/bin/bash -e -o pipefail


.PHONY: up down lint

up:
	@ bash ./scripts/create-stack.sh

down:
	@ bash ./scripts/delete-stack.sh

lint:
	@ bash ./scripts/lint-cfn-template.sh