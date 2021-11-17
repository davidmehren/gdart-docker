# Dockerfiles for GDart

This repo contains (currently very experimental) Dockerfiles to play around with [GDart](https://github.com/tudo-aqua/gdart-svcomp).

## Usage
Build the docker images like this:
```
podman build -f Dockerfile.spout -t spout:dev --build-arg GRAAL_VERSION=21.2.0 --build-arg JDK_VERSION=11

podman build -f Dockerfile.verifier-stub -t verifier-stub

podman build -f Dockerfile.examples -t gdart-examples
```
