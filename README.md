# Repo to work with IBM Business Automation Manager Open Edition
# https://github.ibm.com/gerardmortel/bamoe

# Resources used to create this repo
BAMOE Knowledge Center
https://www.ibm.com/docs/en/ibamoe/9.0.0

Install Docker on CentOS (RHEL not officially supported except on z/OS)
https://docs.docker.com/engine/install/centos/

BAMOE Download Document
https://www.ibm.com/support/pages/node/6999323

Kie Tools
https://github.com/kiegroup/kie-tools/releases

Process with Decisions Integration through Business Rule Task
https://github.com/kiegroup/kogito-examples/tree/main/kogito-quarkus-examples/process-decisions-quarkus

# Purpose
The purpose of this repo is to automate activities to get IBM Business Automation Manager Open Edition working

# Prerequisites
1. RHEL 8.8 server on Fyre
2. Entitlement key https://myibm.ibm.com/products-services/containerlibrary

# Instructions
1. ssh into the RHEL 8.8 server as root (e.g. ssh root@api.slavers.cp.fyre.ibm.com)
2. yum install -y git unzip
3. cd
4. rm -rf bamoe-main
5. rm -f main.zip
6. wget https://github.com/gerardmortel/bamoe/archive/refs/heads/main.zip
7. unzip main.zip
8. rm -f main.zip
9. cd bamoe-main
10. #STOP! Put your values inside file 02_setup_env.sh
11. ./01_driver.sh