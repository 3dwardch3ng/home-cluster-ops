#!/bin/bash
set -e

helm upgrade --install ingress-nginx ingress-nginx --repo https://kubernetes.github.io/ingress-nginx \
  --version 1.16.1 --namespace ingress-nginx --create-namespace