# https://gitlab.simonmicro.de/android/lineage/lineage-pdx201/-/blob/master/Dockerfile
FROM ubuntu:20.04

# Change to local mirrors
RUN sed -i 's/archive.ubuntu/de.archive.ubuntu/g' /etc/apt/sources.list

RUN apt-get update
RUN apt-get -y upgrade

# tzdata
ENV DEBIAN_FRONTEND noninteractive
RUN ln -fs /usr/share/zoneinfo/Europe/Stockholm /etc/localtime
RUN apt-get install -y --no-install-recommends tzdata

# Android
RUN apt-get install -y \
    bc \
    bison \
    build-essential \
    flex \
    g++-multilib \
    git \
    git-core \
    gperf \
    libc++-dev \
    libelf-dev \
    liblz4-tool \
    libncurses5 \
    libncurses5-dev \
    libssl-dev \
    libxml2 \
    libxml2-utils \
    lzop \
    m4 \
    make \
    python \
    unzip \
    zip \
    zlib1g-dev

# We don't need graphics
RUN apt purge -y libx11-6

 # To show the output of the repo command...
ENV PYTHONUNBUFFERED 1

 # Cleanup
RUN apt-get --purge autoremove -y
RUN apt-get autoclean
RUN apt-get clean

RUN rm -rf /usr/share/icons
RUN rm -rf /usr/share/fonts
RUN rm -rf /usr/share/doc
RUN rm -rf /usr/share/alsa
RUN rm -rf /usr/share/X11
