FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add --update alpine-sdk && \
    apk add --update p7zip