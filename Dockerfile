FROM alpine:latest
MAINTAINER Chance Hudson

RUN apk add --no-cache nginx && \
  mkdir -p /run/nginx

COPY ./entrypoint.sh /entrypoint.sh

EXPOSE 80 443

ENTRYPOINT ["/entrypoint.sh"]
