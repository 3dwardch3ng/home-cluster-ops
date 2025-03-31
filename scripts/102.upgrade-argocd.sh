#!/bin/bash
set -e

helm upgrade --install argocd -n argocd -f argocd-values.yaml argo/argo-cd --version 7.8.15
