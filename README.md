# nginx web server container
This is an example of how nginx can be easily run in a Docker container. Please note that this version is not suitable for production use, but feel free to tinker with it. This container is built on two layers:

1) [base-runtime](https://hub.docker.com/r/baseruntime/baseruntime/) - a minimal image
2) [nginx](https://github.com/asamalik/module-nginx-master) - an nginx installation on top of base-runtime


# Configuration
This repository containes file **nginx.conf** in files folder, where you can configure all the settings you need for nginx to suit your needs. However, please don't change the following lines, as they are needed for proper functionality in a container.
```
error_log stderr;
daemon off;
```
These lines will redirect error log to stderr and prevent nginx from demonizing itself, which if enabled, would result in docker stopping the container right after starting it, because the root process would exit right after spawning worker processes.


# Running in Docker
This container can be run in two ways:

1\) **From shell**
```sh
docker run --rm -p 8080:80 -v <DIR>:/usr/share/nginx/html/
```
This starts the container and forwards port 80 from container to port 8080 on host. You can replace \<DIR> with location of your web root. Please note that this has to be an **absolute** path, due to Docker requirements. 

2\) **With a Makefile**

In order to simplify running the container, you can use a supplied Makefile. By default it will only build the image and tag it. If you set the **DOCUMENT_ROOT** variable, executing make will also run the container. You can set the following options there:
```sh
# Docker container tag
IMAGE_NAME = nginx

# An absolute path to your web root
#DOCUMENT_ROOT = /

# A port you want your nginx server to run on host
PORT = 8080
```
