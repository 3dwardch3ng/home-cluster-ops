#!/bin/bash
set -e

helm upgrade --install sealed-secrets -n kube-system --set-string fullnameOverride=sealed-secrets-controller sealed-secrets/sealed-secrets -f sealed-secrets-values.yaml