#!/bin/bash
set -e

kubectl patch service ingress-nginx-controller -n ingress-nginx --patch "$(cat ingress-nginx-svc-controller-patch.yaml)"