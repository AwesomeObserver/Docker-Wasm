FROM alpine:3.8

LABEL version="1.0"
LABEL description="Docker wasm"

RUN apk update && apk upgrade \
  && apk add --no-cache --update \ 
  alpine-sdk \
  git \
  make \
  cmake \
  python2 \
  && git clone --recursive https://github.com/WebAssembly/wabt \
  && cd wabt \
  && cmake . && make