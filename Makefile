.ONESHELL:
SHELL := /bin/bash
USER := $(shell whoami)
UID := $(shell id -u)
PWD := $(shell pwd | grep -o "[^/]*\$$" )

run:
	jupyter-repo2docker  --user-name ${USER} --user-id ${UID} -P --volume .:${PWD} --image-name nblauncher .