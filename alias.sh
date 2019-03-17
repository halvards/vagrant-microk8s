#!/usr/bin/env bash

# Source this script if you want to avoid prefixing commands with `./m`

if [[ "$(basename -- "$0")" == "alias.sh" ]]; then
    echo "Error: source alias.sh" >&2
    exit 1
fi

alias kubectl='./m kubectl'
alias istioctl='./m istioctl'
