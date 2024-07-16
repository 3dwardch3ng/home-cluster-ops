#!/usr/bin/bash
set -e

filePath=$1

cat $filePath | kubeseal -o yaml --scope cluster-wide --controller-name sealed-secrets --controller-namespace argocd | tee $filePath