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


# build:
# 	make -C mol/some


publish:
	$(PYPI_TOKEN)