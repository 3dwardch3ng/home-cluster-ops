#!/usr/bin/bash
set -e

filePath=$1

AGE_PUB_KEY="age1d47q8mlty404pxx378q49hr93aqexca4mkeqtdm00w4gjd09xd0qhxcdcz"

sops --age=$AGE_PUB_KEY --encrypt --encrypted-regex '^(data|stringData)$' --in-place $filePath
echo "File encrypted: $filePath."

git add $filePath
git commit -am "Encrypt file $filePath by Age."