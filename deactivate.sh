#!/usr/bin/env bash

# Undo changes made in activate.sh

if [[ "$(basename -- "$0")" == "deactivate.sh" ]]; then
    echo "Error: source deactivate.sh" >&2
    exit 1
fi

export KUBECONFIG="${KUBECONFIG_SAVED_MICROK8S}"

unset KUBECONFIG_SAVED_MICROK8S
