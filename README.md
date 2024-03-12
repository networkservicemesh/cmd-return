# Intro

This application does nothing, just return.
Can be used in containers on different platforms.

# Build

## Build cmd binary locally

You can build the locally by executing

```bash
go build ./...
```

## Build Docker container

You can build the docker container by running:

```bash
docker build .
```

To build for multiple architectures locally:

```bash
docker buildx build --platform linux/amd64,linux/arm64 -t <NAMESPACE>/cmd-return . --push
```
