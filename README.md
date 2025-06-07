Docker with all old dependencies to be able to run a notebook in localhost

# Image build

	docker build -t ac-audio-jupyter .

# Run the container as a temporary process

	docker run -it --rm -p 8080:8080 -v $PWD:/workspace ac-audio-jupyter

# Ref

Old version: https://github.com/MTG/essentia/tree/master

