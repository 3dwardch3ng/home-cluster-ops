#!/bin/bash
set -e

kubectl create namespace argocd || echo "Namespace argocd already exists"
helm template argocd \
  oci://ghcr.io/argoproj/argo-helm/argo-cd \
  --version: 7.3.6 \
  --release-name argocd \
  --api-versions monitoring.coreos.com/v1 \
  --values argocd-values.yaml