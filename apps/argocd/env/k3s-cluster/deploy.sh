#!/bin/bash
set -e

kubectl apply -f ../crd/kustomization.yaml
kubectl apply -f ./kustomization.yaml