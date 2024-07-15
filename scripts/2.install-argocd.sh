#!/bin/bash
set -e

kubectl apply -k "https://github.com/argoproj/argo-cd/manifests/crds?ref=v2.11.4"
kubectl create namespace argocd || echo "Namespace argocd already exists"
helm repo add argo https://argoproj.github.io/argo-helm || echo "Argo repo already exists"
helm repo update || echo "Failed to update helm repos"
helm upgrade --install argocd -n argocd -f argocd-values.yaml argo/argo-cd --version 7.3.6
helm plugin install https://github.com/jkroepke/helm-secrets

#Check repo server secret accessibility
echo "Checking repo server secret accessibility:"
kubectl auth can-i get secrets --namespace "argocd" --as "system:serviceaccount:argocd:argocd-repo-server"