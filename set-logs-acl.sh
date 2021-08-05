#!/bin/sh

setfacl -m g:$ACL_GID:rwx /var/log
setfacl -dRm g:$ACL_GID:r-X /var/log/journal
setfacl -Rm g:$ACL_GID:r-X /var/log/journal

while sleep $SLEEP; do
    find /var/lib/docker/containers -mindepth 0 -maxdepth 1 -type d -print0 | xargs -0 -r setfacl -m g:$ACL_GID:r-x
    find /var/lib/docker/containers -type f -name *.log -print0 | xargs -0 -r setfacl -m g:$ACL_GID:r--
done
