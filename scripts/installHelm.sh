#!/bin/sh

# Install Helm
wget https://get.helm.sh/helm-v3.4.2-linux-amd64.tar.gz
tar -xvf helm-v3.4.2-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/bin/
sudo chmod +x /usr/bin/helm
helm version

rm helm-v3.4.2-linux-amd64.tar.gz
rm -rf linux-amd64/