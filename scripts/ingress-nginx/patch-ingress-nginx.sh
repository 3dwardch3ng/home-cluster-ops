#!/bin/bash
set -e

kubectl apply service ingress-nginx-controller -n argocd --patch "$(cat ports.yaml)"