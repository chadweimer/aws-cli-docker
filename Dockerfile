ARG IMAGE=alpine:3.12

FROM $IMAGE

ENV AWS_CLI_VERSION 1.18.85

RUN apk --no-cache update && \
    apk --no-cache add python3 py3-pip py3-setuptools ca-certificates groff less && \
    pip3 --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*

WORKDIR /data
