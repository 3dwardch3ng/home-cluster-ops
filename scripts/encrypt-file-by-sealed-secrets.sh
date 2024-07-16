#!/usr/bin/bash
set -e

secretName=$1
filePath=$2

cat $filePath | kubeseal --format yaml --scope cluster-wide | tee $filePath