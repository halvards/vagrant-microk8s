#!/bin/sh

export DEBIAN_FRONTEND=noninteractive 
apt-get update
apt-get -y upgrade
apt-get -y install apt-transport-https

touch /home/vagrant/.bashrc
echo "export EDITOR=vim" >> /home/vagrant/.bashrc

snap install microk8s --classic
microk8s.status --wait-ready
ufw allow in on cbr0
ufw allow out on cbr0
ufw default allow routed

# microk8s.enable dashboard
microk8s.enable dns
# microk8s.enable fluentd
microk8s.enable ingress
# echo N | microk8s.enable istio
# microk8s.enable jaeger
# microk8s.enable metrics-server
# microk8s.enable prometheus
microk8s.enable registry
microk8s.enable storage

# microk8s.kubectl config view --raw > $HOME/.kube/config
microk8s.kubectl config view --raw > /vagrant/.kube-config

snap alias microk8s.docker docker
snap alias microk8s.istioctl istioctl
snap alias microk8s.kubectl kubectl

# snap install docker
# snap install knctl
# snap install kubectl