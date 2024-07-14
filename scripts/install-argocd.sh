#!/bin/bash
set -e

kubectl apply -k "https://github.com/argoproj/argo-cd/manifests/crds?ref=v2.11.4"
kubectl create namespace argocd || echo "Namespace argocd already exists"
helm repo add argo https://argoproj.github.io/argo-helm || echo "Argo repo already exists"
helm repo update || echo "Failed to update helm repos"
helm install argocd -n argocd -f argocd-values.yaml argo/argo-cd --version 7.3.6