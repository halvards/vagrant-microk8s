#!/usr/bin/env bash

# Source this script if you want to use kubectl on the host

if [[ "$(basename -- "$0")" == "activate.sh" ]]; then
    echo "Error: source activate.sh" >&2
    exit 1
fi

export KUBECONFIG_SAVED_MICROK8S="${KUBECONFIG}"

export KUBECONFIG="${PWD}/.kube-config"
