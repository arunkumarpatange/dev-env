#
# Module: Makefile
# Descr : Makefile for Cyan Central
#
#

VENV := venv
PIP := $(VENV)/bin/pip

SHELL := /bin/bash
PYTHON ?= python
SENV = source ./env.sh;


TIMESTAMP := $(shell /bin/date '+%Y-%m-%d')

#
# python virtualenv setup
#

clean-env:
	$(HIDE)rm -rf $(VENV)

prepare-env:
	$(HIDE)test -d $(VENV) || virtualenv $(VENV) --system-site-packages
	$(HIDE)$(SENV)$(PIP) install --upgrade -r requirements.txt

prepare-env-test:
	$(HIDE)test -d $(VENV) || virtualenv $(VENV) --system-site-packages
	$(HIDE)$(SENV)$(PIP) install setuptools --upgrade
	$(HIDE)$(SENV)$(PIP) install --upgrade -r requirements/test.txt

setup-env: clean-env prepare-env

setup-env-test: clean-env prepare-env-test
