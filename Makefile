.ONESHELL:
SHELL := /bin/bash

ifneq (,$(wildcard .env))
	include .env
endif


clean:
	rm -rf build
	rm -rf .venv
	rm -rf dist
	rm -rf .cibuildwheel
	uv clean

publish:
	uv publish --token $(PYPI_TOKEN) distci/*


buildci:
	# pip install cibuildwheel, or from a specific cibuildwheel image in a github workflow
	# matrix 
	# - host: [<runner>, <whl-target>, <arch>]
	# [
	#	[ubuntu-22.04, manylinux, x86_64],
	#	[ubuntu-24.04-arm, manylinux, aarch64],
	# 	[macos-13, macosx, x86_64],
	# 	[macos-14, macosx, arm64],
	#	[windows-2019, win, AMD64],
	# ]
	# - python: [<whl-target>, <version>]
	# [
	#	['cp311', '3.11']
	# ]

	# example
	CIBW_BUILD=cp311-manylinux* CIBW_ARCHS=x86_64 cibuildwheel --output-dir distci
