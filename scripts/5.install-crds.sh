#!/bin/bash
set -e

# CRDs for the kubernetes-sigs' Application CRD
echo "Installing CRDs for the kubernetes-sigs' Application CRD..."
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/application/master/config/crd/kustomization.yaml

# CRDs for the Intel GPU Device Plugin
echo "Installing CRDs for the Intel GPU Device Plugin..."
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/deviceplugin.intel.com_gpudeviceplugins.yaml

echo "The CRDs installed."