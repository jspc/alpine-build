FROM alpine:edge
MAINTAINER jspc <james@zero-internet.org.uk>

RUN apk add --update alpine-sdk \
                     go \
                     libgit2-dev

ADD script/build.sh /app/build.sh
ENV GOPATH=/root/golang

CMD ["sh", "/app/build.sh"]
