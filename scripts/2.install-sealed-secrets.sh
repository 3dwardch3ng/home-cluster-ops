#!/bin/bash
set -e

helm repo add sealed-secrets https://bitnami-labs.github.io/sealed-secrets && \
helm repo update && \
helm upgrade --install sealed-secrets -n kube-system --set-string fullnameOverride=sealed-secrets-controller sealed-secrets/sealed-secrets -f sealed-secrets-values.yaml