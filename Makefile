.ONESHELL:
SHELL := /bin/bash
USER := $(shell whoami)
UID := $(shell id -u)
REPO_DIR := $(shell pwd | grep -o "[^/]*\$$" )

devel:
	pip install jupyter-repo2docker

run:
	docker image rm repolauncher
	jupyter-repo2docker --debug  --user-name ${USER} --user-id ${UID} -P --volume .:${REPO_DIR} --volume /home/${USER}/.ssh:.ssh --image-name repolauncher .