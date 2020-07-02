USER = txmao
#BUILDS := $(patsubst %/,%, $(dir $(wildcard */Dockerfile)))
BUILDS = vim bashtop  chrome  dotdrop  rotation-backups  WebPlotDigitizerim 
#DOCKERFILE_PATH = Dockerfile
#DOCKER_TAG=latest

.PHONY: build push
all: build push
default: all

build: $(addprefix build_,$(BUILDS))

build_%:
	echo "Building workflow/$* ..."
	docker build -t ${USER}/$*:${DOCKER_TAG} --force-rm $*


push: $(addprefix push_,$(BUILDS))

push_%:
	echo "Pushing workflow/$* ..."
	docker push ${USER}/$*:${DOCKER_TAG}
