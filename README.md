# docker-set-logs-acl

Docker image ensuring journald and container logs on a kubernetes node is readable by gid `$ACL_GID`.

Mount `/var/log` and `/var/lib/docker/containers` on the host in the container.

## Build and release image on GHCR

Push a new numeric tag.
