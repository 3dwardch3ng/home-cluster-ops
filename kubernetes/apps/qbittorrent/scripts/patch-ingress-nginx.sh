#!/bin/bash
set -e

kubectl patch service ingress-nginx-controller -n ingress-nginx --patch "$(cat kubernetes/apps/qbittorrent/scripts/ingress-nginx-svc-controller-patch.yaml)"