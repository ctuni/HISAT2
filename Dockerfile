
FROM ubuntu:latest

RUN apt update && \
    apt install --yes \
          make \
          g++ \
          wget \
          perl && \
    cd /tmp && \
    wget http://research-pub.gene.com/gmap/src/gmap-gsnap-2019-03-15.tar.gz && \
    tar xzf gmap-gsnap-*.tar.gz && \
    cd /tmp/gmap-* && \
    ./configure --prefix=/usr/local && \
    make && \
    make check && \
    make install && \

ENV PATH /usr/local/gmap-gsnap:$PATH

RUN rm -rf /tmp/* && \
    apt remove --purge --yes \
          make \
          g++ \
          wget && \
    apt autoremove --purge --yes
         
WORKDIR /
