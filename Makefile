.ONESHELL:
SHELL := /bin/bash

ifneq (,$(wildcard .env))
	include .env
endif

setuppy:
	python -m venv .venv
	. .venv/bin/activate
	pip install .

buildm:
	rm -rf build
	meson setup build
	meson compile -C build
	meson install -C build


clean:
	rm -rf build
	rm -rf .venv


build:
	make -C mol/some


publish:
	$(PYPI_TOKEN)