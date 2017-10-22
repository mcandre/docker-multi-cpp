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
...
```

# PUBLISH IMAGES

```console
$ make publish
```
