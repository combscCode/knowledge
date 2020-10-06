## What is Computer????

This document will try to organize all of the terminology that exists in the dockerverse.

### Basic Terminology

Container - Box that you run software in.

Image - A file that is used to execute code within a Docker container. An image is essentially a "snapshot" of an application within a container.

images and containers are linked concepts. An image "lives" in a container, but these terms are often used interchangably (from what I can gather).

Docker Registry - The place these images can be pulled from.

more terminology found [here](https://docs.docker.com/glossary/?term=image)

### Dockerfile vs Docker-Compose?
These two files have different purposes. Dockerfiles are text files that contain information to assemble a single image. Docker-Compose is interested in defining and managing multi-container Docker applications. Think of Docker-Compose as kubernetes, it's in the business of microservice orchestration.
