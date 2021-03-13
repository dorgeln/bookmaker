run:
	jupyter-repo2docker  --user-name $USER --image-name datascience-binder:latest stack

dev:
	jupyter-repo2docker  --user-name $USER --volume .:. --image-name datascience-binder:latest stack