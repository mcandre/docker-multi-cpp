FROM library/debian:stretch
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        clang && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
