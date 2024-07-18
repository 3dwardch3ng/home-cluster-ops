#!/usr/bin/bash
set -e

filePath=$1

kubeseal --format yaml --scope cluster-wide -f $filePath -w $filePath