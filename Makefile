.ONESHELL:
SHELL := /bin/bash
USER := $(shell whoami)
UID := $(shell id -u)

run:
	jupyter-repo2docker  --user-name ${USER} --user-id ${UID} --image-name datascience-binder:latest stack

server:
	jupyter-repo2docker  --user-name ${USER} --user-id ${UID} -P --volume .:notebooks --image-name datascience-binder:latest stack