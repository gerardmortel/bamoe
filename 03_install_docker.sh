#!/bin/bash

echo ""
echo "================================================================================"
echo "=== In 03_install_docker.sh ===================================================="
echo "================================================================================"
echo ""

# From https://docs.docker.com/engine/install/centos/

echo "#### Remove old versions of Docker"
sudo yum remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine \
                  podman

echo "#### Set up the Docker repo"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "#### Install Docker"
sudo yum install -y --allowerasing docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "#### Start Docker"
sudo systemctl start docker

echo "#### Test Docker"
sudo docker run hello-world