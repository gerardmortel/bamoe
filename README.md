# Repo to work with IBM Business Automation Manager Open Edition
# https://github.ibm.com/gmortel/bamoe

# Resources used to create this
BAMOE Knowledge Center
https://www.ibm.com/docs/en/ibamoe/9.0.0

BAMOE Download Document
https://www.ibm.com/support/pages/node/6999323

Kie Tools
https://github.com/kiegroup/kie-tools/releases


# Purpose
The purpose of this repo is to automate activities to get IBM Business Automation Manager Open Edition working

# Prerequisites
1. OpenShift cluster on Fyre
2. NFS Storage configured https://github.com/gerardmortel/nfs-storage-for-fyre
3. Entitlement key https://myibm.ibm.com/products-services/containerlibrary

# Instructions
1. ssh into the infrastructure node as root (e.g. ssh root@api.slavers.cp.fyre.ibm.com)
2. yum install -y git unzip podman
3. cd
4. rm -rf bamoe-main
5. rm -f main.zip
6. wget https://github.com/gerardmortel/bamoe/archive/refs/heads/main.zip
7. unzip main.zip
8. rm -f main.zip
9. cd bawoc-main
10. STOP! Put your values for API_KEY_GENERATED inside file 02_setup_env.sh
11. ./01_driver.sh