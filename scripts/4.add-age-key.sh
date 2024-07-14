#!/bin/bash
set -e

cat /mnt/nfs/agekey/age.agekey |
kubectl create secret generic sops-age \
--namespace=argocd \
--from-file=age.agekey=/dev/stdin