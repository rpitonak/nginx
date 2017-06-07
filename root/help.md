NGINX 1 "Web server container"
==============================
## NAME
**nginx** — HTTP and reverse proxy server, mail proxy server
## DESCRIPTION
This is an example of how nginx can be easily run in a Docker container. Please note that this version is not suitable for production use, but feel free to tinker with it. This container is built on top of base-runtime and uses ngninx module.
## USAGE
You can get this continer image from docker hub:

`$ docker pull modularitycontainers/nginx`

You can then run it in shell like this:

`$ docker run -p 8080:80 -v <DIR>:/var/www/html/`

This starts the container and forwards port 80 from container to port 8080 on host. You can replace **\<DIR>** with location of your web root. Please note that this has to be an **absolute** path, due to Docker requirements. You can also use the supplied Makefile

## CONFIGURATION
This repository containes file **nginx.conf** in files folder, where you can configure all the settings you need for nginx to suit your needs. However, please don't change the following lines, as they are needed for proper functionality in a container.

`error_log stderr;`

`daemon off;`

These lines will redirect error log to stderr and prevent nginx from demonizing itself, which if enabled, would result in docker stopping the container right after starting it, because the root process would exit right after spawning worker processes.
