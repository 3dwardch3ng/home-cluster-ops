#!/bin/bash
set -e

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx || echo "Ingress-nginx repo already exists" &&
helm repo update || echo "Failed to update helm repos" &&
helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
  --version 4.11.2 -f ingress-values.yaml --namespace ingress-nginx --create-namespace