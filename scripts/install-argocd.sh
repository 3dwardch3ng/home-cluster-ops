#!/bin/bash
set -e

kubectl create namespace argocd || echo "Namespace argocd already exists"
helm repo add argo https://argoproj.github.io/argo-helm || echo "Argo repo already exists"
helm install argocd -n argocd -f argocd-values.yaml argo/argocd --version 7.3.6