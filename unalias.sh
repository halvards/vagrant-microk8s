#!/usr/bin/env bash

# Undo changes made in alias.sh

if [[ "$(basename -- "$0")" == "unalias.sh" ]]; then
    echo "Error: source unalias.sh" >&2
    exit 1
fi

unalias kubectl
unalias istioctl