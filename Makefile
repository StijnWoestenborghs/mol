.ONESHELL:
SHELL := /bin/bash

ifneq (,$(wildcard .env))
	include .env
endif


clean:
	rm -rf build
	rm -rf .venv
	rm -rf dist
	rm -rf packages/*/build
	uv clean

publish:
	$(PYPI_TOKEN)