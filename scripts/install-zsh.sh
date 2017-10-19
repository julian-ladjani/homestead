#!/usr/bin/env bash

if [ -f /bin/zsh ]
then
    echo "Zsh already installed."
    exit 0
fi

sudo apt-get update
sudo apt-get install -y zsh