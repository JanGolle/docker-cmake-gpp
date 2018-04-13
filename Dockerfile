FROM alpine:latest

RUN apk update
RUN apk add g++ make cmake git bash

CMD ["/bin/bash"]

