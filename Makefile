.PHONY: build run default


IMAGE_NAME = nginx

# DOCUMENT_ROOT must be an absolute path due to nature of Docker
DOCUMENT_ROOT = /
PORT = 8080

default: run

build:
	docker build --tag=$(IMAGE_NAME) .

run: build
#	docker run -p $(PORT):80 -v $(DOCUMENT_ROOT):/usr/share/nginx/html/ $(IMAGE_NAME)

