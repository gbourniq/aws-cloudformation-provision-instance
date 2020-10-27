# Set shell
SHELL=/bin/bash -e -o pipefail


.PHONY: up down lint

up:
	@ ./scripts/create-stack.sh

down:
	@ ./scripts/delete-stack.sh

lint:
	@ ./scripts/lint-cfn-template.sh