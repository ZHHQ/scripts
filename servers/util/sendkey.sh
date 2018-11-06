#!/bin/bash

if [ ! $1  ]; then
    echo "please enter ip"
    exit 1
else
    ssh-copy-id -i /root/.ssh/id_rsa.pub "root@$1"
fi
