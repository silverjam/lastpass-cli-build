FROM ubuntu:18.04

RUN apt-get update && apt-get --no-install-recommends -y install \
  bash-completion \
  build-essential \
  cmake \
  libcurl4  \
  libcurl4-openssl-dev  \
  libssl-dev  \
  libxml2 \
  libxml2-dev  \
  libssl1.1 \
  pkg-config \
  ca-certificates \
  xclip \
  checkinstall

RUN mkdir /work && mkdir /host

WORKDIR /work
ADD . /work


RUN \
       mkdir build \
    && cd build \
    && cmake .. \
    && make -j9 \
    && checkinstall -yD --pkgname=lpass-custom --install=no \
        make install
