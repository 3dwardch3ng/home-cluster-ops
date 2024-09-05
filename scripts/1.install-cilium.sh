#!/bin/bash
set -e

sudo ip link delete cilium_host || true && \
sudo ip link delete cilium_net || true && \
sudo ip link delete cilium_vxlan || true && \
helm repo add cilium https://helm.cilium.io || echo "Cilium repo already exists" && \
helm repo update || echo "Failed to update helm repos" && \
helm upgrade --install cilium cilium/cilium --version 1.16.1 \
  --namespace kube-system --create-namespace \
  --set operator.replicas=2 \
  --set prometheus.enabled=true \
  --set operator.prometheus.enabled=true

