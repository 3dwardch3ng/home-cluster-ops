#!/usr/bin/bash
set -e

filePath=$1

kubeseal --format=yaml --scope cluster-wide -n argocd --controller-name sealed-secrets --controller-namespace argocd < $filePath > $filePath

