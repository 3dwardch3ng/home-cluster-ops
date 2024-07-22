#!/bin/bash
set -e

fileName=$1

kubectl patch service ingress-nginx-controller -n argocd --patch-file $fileName.yaml