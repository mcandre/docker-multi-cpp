.PHONY: mcandre/docker-multi-cpp-alpine mcandre/docker-multi-cpp-debian mcandre/docker-multi-cpp-ubuntu mcandre/docker-multi-cpp-opensuse mcandre/docker-multi-cpp-fedora mcandre/docker-multi-cpp-centos mcandre/docker-multi-cpp-arch mcandre/docker-multi-cpp-slackware mcandre/docker-multi-cpp-mageia

all: mcandre/docker-multi-cpp-alpine mcandre/docker-multi-cpp-debian mcandre/docker-multi-cpp-ubuntu mcandre/docker-multi-cpp-opensuse mcandre/docker-multi-cpp-fedora mcandre/docker-multi-cpp-centos mcandre/docker-multi-cpp-arch mcandre/docker-multi-cpp-slackware mcandre/docker-multi-cpp-mageia

mcandre/docker-multi-cpp-alpine: alpine/Dockerfile
	docker build -t mcandre/docker-multi-cpp:alpine alpine

mcandre/docker-multi-cpp-debian: debian/Dockerfile
	docker build -t mcandre/docker-multi-cpp:debian debian

mcandre/docker-multi-cpp-ubuntu: ubuntu/Dockerfile
	docker build -t mcandre/docker-multi-cpp:ubuntu ubuntu

mcandre/docker-multi-cpp-opensuse: opensuse/Dockerfile
	docker build -t mcandre/docker-multi-cpp:opensuse opensuse

mcandre/docker-multi-cpp-fedora: fedora/Dockerfile
	docker build -t mcandre/docker-multi-cpp:fedora fedora

mcandre/docker-multi-cpp-centos: centos/Dockerfile
	docker build -t mcandre/docker-multi-cpp:centos centos

mcandre/docker-multi-cpp-arch: arch/Dockerfile
	docker build -t mcandre/docker-multi-cpp:arch arch

mcandre/docker-multi-cpp-slackware: slackware/Dockerfile
	docker build -t mcandre/docker-multi-cpp:slackware slackware

mcandre/docker-multi-cpp-mageia: mageia/Dockerfile
	docker build -t mcandre/docker-multi-cpp:mageia mageia

publish-alpine: mcandre/docker-multi-cpp-alpine
	docker push mcandre/docker-multi-cpp:alpine

publish-debian: mcandre/docker-multi-cpp-debian
	docker push mcandre/docker-multi-cpp:debian

publish-ubuntu: mcandre/docker-multi-cpp-ubuntu
	docker push mcandre/docker-multi-cpp:ubuntu

publish-opensuse: mcandre/docker-multi-cpp-opensuse
	docker push mcandre/docker-multi-cpp:opensuse

publish-fedora: mcandre/docker-multi-cpp-fedora
	docker push mcandre/docker-multi-cpp:fedora

publish-centos: mcandre/docker-multi-cpp-centos
	docker push mcandre/docker-multi-cpp:centos

publish-arch: mcandre/docker-multi-cpp-arch
	docker push mcandre/docker-multi-cpp:arch

publish-slackware: mcandre/docker-multi-cpp-slackware
	docker push mcandre/docker-multi-cpp:slackware

publish-mageia: mcandre/docker-multi-cpp-mageia
	docker push mcandre/docker-multi-cpp:mageia

publish: publish-alpine publish-debian publish-ubuntu publish-opensuse publish-fedora publish-centos publish-arch publish-slackware publish-mageia
