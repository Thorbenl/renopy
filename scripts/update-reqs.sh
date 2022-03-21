#!/usr/bin/env bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    MAC_OS=1
fi

if [[ ! $(command -v pg_config) ]]; then
    ech o "You must install Postgres system libraries"

    if [[ -n $MAC_OS ]]; then
        echo "It is recommended to install it through homebrew: https://brew.sh/"
        echo "  brew install postgres"
    fi
    exit
fi

source venv/bin/activate
#if you have error like  invalid command 'bdist_wheel' then try to uncomment next line
#pip3 install wheel;
python3 -m piptools compile requirements-dev.in > requirements-dev.txt
python3 -m piptools compile requirements.in > requirements.txt
