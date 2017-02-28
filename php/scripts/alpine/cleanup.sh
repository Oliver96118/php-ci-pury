#!/bin/bash

apk del --purge \
		.persistent-deps \
    autoconf \
    gcc \
    g++ \
    make \
    zlib-dev \
    file \
    libc-dev \
    pkgconf \
    tar \
    autoconf \
    libltdl \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man
