.ONESHELL:
SHELL := /bin/bash
UID := $(shell id -u)

run:
	jupyter-repo2docker  --user-name ${USER} --user-id ${UID} --image-name datascience-binder:latest stack

dev:
	jupyter-repo2docker  --user-name ${USER} --user-id ${UID} --volume .:. --image-name datascience-binder:latest stack