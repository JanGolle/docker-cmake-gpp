FROM ubuntu:trusty

RUN apt-get update && apt-get install -y \
    wget \
    build-essential \
    g++

RUN wget -O /tmp/cmake-3.11.0.tar.gz https://cmake.org/files/v3.11/cmake-3.11.0.tar.gz
RUN tar -xvzf /tmp/cmake-3.11.0.tar.gz -C /tmp

WORKDIR /tmp/cmake-3.11.0
RUN ./bootstrap
RUN make
RUN make install

CMD ["/bin/bash"]
