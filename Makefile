.ONESHELL:
SHELL := /bin/bash
USER := $(shell whoami)
UID := $(shell id -u)
REPO_DIR := $(shell pwd | grep -o "[^/]*\$$" )

run:
	docker image rm repolauncher
	jupyter-repo2docker --debug  --user-name ${USER} --user-id ${UID} -P --volume .:${REPO_DIR}  --image-name repolauncher .