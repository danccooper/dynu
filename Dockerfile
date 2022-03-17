FROM alpine:latest

RUN \
  apk update && \
  apk add --no-cache \
  curl

COPY entrypoint.sh /tmp/entrypoint.sh

RUN chmod +x /tmp/entrypoint.sh

ENTRYPOINT ["/tmp/entrypoint.sh"]
