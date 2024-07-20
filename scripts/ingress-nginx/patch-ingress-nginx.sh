#!/bin/bash
set -e

serviceName=$1

kubectl patch service ingress-nginx-controller -n ingress-nginx --patch "$(cat $serviceName.yaml)"