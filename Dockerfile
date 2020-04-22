# FROM ubuntu:18.04
# RUN apt-get update -qq && \
#     apt-get install -y software-properties-common --no-install-recommends && \
#     apt-get install -y -qq  curl make git autoconf libtool g++ && \
#     apt-get clean && \
#     curl  -L "https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q1-update/+download/gcc-arm-none-eabi-4_9-2015q1-20150306-linux.tar.bz2" --output /tmp/gcc-arm-none-eabi.tar.bz2 && \
#     mkdir -p /opt && \
#     cd /opt && \
#     tar xjf /tmp/gcc-arm-none-eabi.tar.bz2 && \
#     rm /tmp/gcc-arm-none-eabi.tar.bz2

#     ENV PATH "$PATH:/opt/gcc-arm-none-eabi-4_9-2015q1/bin"

# FROM derekamz/awscli:latest

# ENV PATH="/opt/gcc-arm-none-eabi/bin:${PATH}"
# RUN apt-get update -y && apt-get install -y --no-install-recommends git bzip2 lib32z1 lib32ncurses5 \
#     && rm -rf /var/lib/apt/lists/*
# ADD https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q1-update/+download/gcc-arm-none-eabi-4_9-2015q1-20150306-linux.tar.bz2 /tmp/
# RUN tar -xjf /tmp/gcc-arm-none-eabi-4_9-2015q1-20150306-linux.tar.bz2 -C /tmp/ \
#     && mv /tmp/gcc-arm-none-eabi-4_9-2015q1 /opt/gcc-arm-none-eabi \
#     && rm -rf /tmp/*

FROM derekamz/awscli:latest

ENV PATH="/opt/gcc-arm-none-eabi/bin:${PATH}"
RUN apt-get update -y && apt-get install -y --no-install-recommends git bzip2 lib32z1 lib32ncurses5 \
    && rm -rf /var/lib/apt/lists/*
ADD https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 /tmp/
RUN tar -xjf /tmp/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 -C /tmp/ \
    && mv /tmp/gcc-arm-none-eabi-5_4-2016q3 /opt/gcc-arm-none-eabi \
    && rm -rf /tmp/*
