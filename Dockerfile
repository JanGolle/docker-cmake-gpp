FROM alpine:latest

RUN apk update
RUN apk add g++ gcc clang make cmake git bash

CMD ["/bin/bash"]

