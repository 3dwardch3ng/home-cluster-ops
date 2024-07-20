#!/bin/bash
set -e

serviceName=$1

kubectl patch service ingress-nginx-controller -n argocd --patch "$(cat $serviceName.yaml)"