#!/bin/bash

# Faz deploy em Docker Image

# AUTHOR: Fernando Matos

echo "$(date) - iniciando deploy docker cloud" >> deploy_log.txt

echo "$dockerpass" | docker login -u fpmatos --password-stdin

docker build -t fpmatos/nodetest .

docker push fpmatos/nodetest

echo "deploy concluído" >> deploy_log.txt
echo " "  >> deploy_log.txt
