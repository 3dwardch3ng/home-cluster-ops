#!/bin/bash
set -e

kubectl patch service ingress-nginx-controller -n argocd --patch-file ports.yaml