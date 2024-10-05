#!/bin/bash
set -e

# Start NFD - if your cluster doesn't have NFD installed yet
kubectl apply -k 'https://github.com/intel/intel-device-plugins-for-kubernetes/deployments/nfd?ref=main'
# Create NodeFeatureRules for detecting GPUs on nodes
kubectl apply -k 'https://github.com/intel/intel-device-plugins-for-kubernetes/deployments/nfd/overlays/node-feature-rules?ref=main'
# Create GPU plugin daemonset
kubectl apply -k 'https://github.com/intel/intel-device-plugins-for-kubernetes/deployments/gpu_plugin/overlays/nfd_labeled_nodes?ref=main'