#!/usr/bin/env bash

echo "Config Git"

if [ -n "$1" ]; then
    echo "Config  Git Username: $1"
    sudo git config --global user.name ${1}
    su - vagrant -c "git config --global user.name $1"
fi
if [ -n "$2" ]; then
    echo "Config  Git Email: $2"
    sudo git config --global user.email ${2}
    sudo git config --global user.mail ${2}
    su - vagrant -c "git config --global user.email $2"
    su - vagrant -c "git config --global user.mail $2"
fi
exit 0