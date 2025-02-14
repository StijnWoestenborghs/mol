.ONESHELL:
SHELL := /bin/bash

ifneq (,$(wildcard .env))
	include .env
endif


clean:
	rm -rf build
	rm -rf .venv
	rm -rf dist
	uv clean

publish:
	$(PYPI_TOKEN)