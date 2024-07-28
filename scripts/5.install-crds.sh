#!/bin/bash
set -e

# CRDs for the kubernetes-sigs' Application CRD
echo "Installing CRDs for the kubernetes-sigs' Application CRD..."
#kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/application/master/config/crd/bases/app.k8s.io_applications.yaml
#kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/application/master/config/crd/patches/cainjection_in_applications.yaml
#kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/application/master/config/crd/patches/webhook_in_applications.yaml

# CRDs for the Intel GPU Device Plugin
echo "Installing CRDs for the Intel Helm Charts..."
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/deviceplugin.intel.com_dlbdeviceplugins.yaml
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/deviceplugin.intel.com_dsadeviceplugins.yaml
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/deviceplugin.intel.com_fpgadeviceplugins.yaml
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/deviceplugin.intel.com_gpudeviceplugins.yaml
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/deviceplugin.intel.com_iaadeviceplugins.yaml
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/deviceplugin.intel.com_qatdeviceplugins.yaml
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/deviceplugin.intel.com_sgxdeviceplugins.yaml
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/fpga.intel.com_acceleratorfunctions.yaml
kubectl apply -f https://raw.githubusercontent.com/intel/helm-charts/main/charts/device-plugin-operator/crds/fpga.intel.com_fpgaregions.yaml

echo "The CRDs installed."