PWD:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

server:
	docker run --rm --name transfigure-helloworld -v $(PWD):/usr/share/nginx/html:ro -p 80:80 nginx