#!/bin/sh

# Execute microk8s commands via SSH

# PORT=$(vagrant ssh-config | grep Port | grep -o '[0-9]\+')
PORT=2166

ssh -4 \
    -E /dev/null \
    -i .vagrant/machines/default/virtualbox/private_key \
    -l vagrant \
    -o Compression=no \
    -o IdentitiesOnly=yes \
    -o LogLevel=FATAL \
    -o PasswordAuthentication=no \
    -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
    -p $PORT \
    -q \
    -t \
    127.0.0.1 \
    /snap/bin/microk8s."$@"
