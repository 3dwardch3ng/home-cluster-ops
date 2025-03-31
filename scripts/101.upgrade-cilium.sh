#!/bin/bash
set -e

helm upgrade --install cilium cilium/cilium --version 1.17.2 \
  --namespace kube-system \
  --set operator.replicas=1

