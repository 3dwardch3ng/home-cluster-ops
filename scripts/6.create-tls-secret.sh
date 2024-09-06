#!/bin/bash
set -e

kubectl create secret tls tls-secret --cert=/mnt/nfs/letsencrypt/live/cluster.edward.sydney/fullchain.pem --key=/mnt/nfs/letsencrypt/live/cluster.edward.sydney/privkey.pem
