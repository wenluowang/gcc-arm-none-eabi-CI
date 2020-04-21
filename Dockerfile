FROM ubuntu:18.04
RUN apt-get update -qq && \
    apt-get install -y software-properties-common --no-install-recommends && \
    apt-get install -y -qq  curl make git autoconf libtool g++ && \
    apt-get clean && \
    curl  -L "https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2" --output /tmp/gcc-arm-none-eabi.tar.bz2 && \
    mkdir -p /opt && \
    cd /opt && \
    tar xjf /tmp/gcc-arm-none-eabi.tar.bz2 && \
    rm /tmp/gcc-arm-none-eabi.tar.bz2

    ENV PATH "$PATH:/opt/gcc-arm-none-eabi-4_9-2015q3/bin"

