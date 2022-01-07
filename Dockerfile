FROM alpine:3.14.0

ENV ACL_GID 666
ENV SLEEP 30
ENV CONTAINER_LOG_DIR /var/log/pods

RUN apk add --no-cache acl

VOLUME /var/log

COPY set-logs-acl.sh /

ENTRYPOINT [ "/set-logs-acl.sh" ]
