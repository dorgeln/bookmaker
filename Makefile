.ONESHELL:
SHELL := /bin/bash
USER := $(shell whoami)
UID := $(shell id -u)

run:
	jupyter-repo2docker  --user-name ${USER} --user-id ${UID} -P --volume .:_notebooks --image-name datascience-binder:latest .