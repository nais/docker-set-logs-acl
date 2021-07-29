FROM alpine:3.14.0

ENV ACL_GID 666
ENV SLEEP 30

RUN apk add --no-cache acl

VOLUME /var/log
VOLUME /var/lib/docker/containers

COPY set-logs-acl.sh /

ENTRYPOINT [ "/set-logs-acl.sh" ]
