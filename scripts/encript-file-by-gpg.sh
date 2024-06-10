#!/usr/bin/bash
set -e

filePath=$1

sops --encrypt --in-place $filePath
echo "File encrypted: $filePath."

git add $filePath
git commit -am "Encrypt file $filePath by GPG."