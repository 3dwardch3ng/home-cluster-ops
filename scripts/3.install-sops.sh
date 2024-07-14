#!/bin/bash
set -e

curl -LO https://github.com/getsops/sops/releases/download/v3.8.1/sops-v3.8.1.linux.arm64 &&
sudo mv sops-v3.8.1.linux.arm64 /usr/local/bin/sops &&
chmod +x /usr/local/bin/sops
sudo apt install age -y