# Create docker image

there are two options to create conda env as specified in `create-env.sh`:

- use the scratch method
- use the yaml file `alphaflow-cu118.yaml`

there are two options to install openfold as specified in `install-openfold.sh`:

- install openfold from github
- install openfold from wheel

## Build docker image

To build the docker image, go back to the root directory and run:

```bash
zsh ./docker-image-chunan/build-image.sh
```

## Run docker image

To run the docker image, go back to the root directory and run:

```bash
docker run -it --rm --entrypoint zsh $USER/alphaflow:dev
```
