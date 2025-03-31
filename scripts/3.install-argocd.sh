#!/bin/bash
set -e

kubectl apply -k "https://github.com/argoproj/argo-cd/manifests/crds?ref=v2.14.8"
helm repo add argo https://argoproj.github.io/argo-helm || echo "Argo repo already exists"
helm repo update || echo "Failed to update helm repos"
helm upgrade --install argocd -n argocd --create-namespace -f argocd-values.yaml argo/argo-cd --version 7.8.15
