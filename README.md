# mcandre/docker-multi-cpp: Docker images for building C and C++ applications

# ABOUT

The included base images serve as an example of how to install C and C++ compiler toolchains, for various Linux flavors.

Note: Once an application is compiled, the runtime container does not need a full C or C++ installation. Instead, a much smaller base image like [busybox](https://hub.docker.com/_/busybox/) can run the application. See `busybox:glibc`, for an example of a lightweight base image for running C/C++ applications.

If the application is compiled completely statically, including the libc++, then the application can be run from an even smaller base: `scratch` that starts at size zero bytes, however there are often security hazards to statically linking any libc or libc++, so beware!

# EXAMPLE

```console
$ docker run mcandre/docker-multi-cpp:debian clang++ --version
clang version 3.8.1-24 (tags/RELEASE_381/final)
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin
```

# DOCKERHUB

https://hub.docker.com/r/mcandre/docker-multi-cpp/

# REQUIREMENTS

* [Docker](https://www.docker.com)

# BUILD IMAGES

```console
$ make

$ docker images | grep multi-cpp
mcandre/docker-multi-cpp               void                  d9634d288a35        22 seconds ago      781MB
mcandre/docker-multi-cpp               ubuntu                fd554469e483        2 minutes ago       550MB
mcandre/docker-multi-cpp               slackware             f613817169ce        6 minutes ago       110MB
mcandre/docker-multi-cpp               opensuse              5e6dd0740fcc        21 minutes ago      256MB
mcandre/docker-multi-cpp               mageia                118e1e73d44a        40 minutes ago      495MB
mcandre/docker-multi-cpp               fedora                f7da80d74711        45 minutes ago      508MB
mcandre/docker-multi-cpp               debian                59138cbffa76        About an hour ago   646MB
mcandre/docker-multi-cpp               centos                92ed0c28630a        About an hour ago   357MB
mcandre/docker-multi-cpp               arch                  426dc302a06e        About an hour ago   1.51GB
mcandre/docker-multi-cpp               alpine                fbdd3aa155c4        About an hour ago   225MB
```

# PUBLISH IMAGES

```console
$ make publish
```
