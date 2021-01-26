# https://gitlab.simonmicro.de/android/lineage/lineage-pdx201/-/blob/master/Dockerfile
FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y default-jdk python

# Android
RUN apt-get install -y \
    bc \
    bison \
    build-essential \
    ccache \
    clang \
    curl \
    flex \
    fontconfig \
    g++-multilib \
    gcc \
    gcc-multilib \
    git \
    git-core gnupg \
    gnupg \
    gperf \
    imagemagick \
    lib32ncurses5-dev \
    lib32readline-dev \
    lib32stdc++6 \
    lib32z1-dev \
    lib32z1-dev \
    libc++-dev \
    libc6-dev-i386 \
    libelf-dev \
    libgl1-mesa-dev \
    liblz4-tool \
    libncurses5 \
    libncurses5-dev \
    libsdl1.2-dev \
    libssl-dev \
    libx11-dev \
    libxml2 \
    libxml2-utils \
    lzop \
    m4 \
    make \
    openjdk-8-jdk \
    pngcrush \
    python-enum34 \
    python-mako \
    rsync \
    schedtool \
    squashfs-tools \
    syslinux-utils \
    unzip \
    x11proto-core-dev \
    xsltproc \
    zip \
    zlib1g-dev

 # To show the output of the repo command...
ENV PYTHONUNBUFFERED 1

 # Cleanup
RUN apt-get autoremove -y
RUN apt-get autoclean
RUN apt-get clean
