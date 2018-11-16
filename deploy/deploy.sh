#!/bin/bash

# Faz deploy em Docker Image

# AUTHOR: Fernando Matos

echo "$(date) - iniciando deploy docker cloud" >> deploy_log.txt

echo "$dockerpass" | docker login -u fpmatos --password-stdin

docker build -t fpmatos/nodetest .

docker push fpmatos/nodetest

if [ ! $? -eq 0 ]; then
  echo "erro ao fazer deploy" >> deploy_log.txt
else 
  echo "deploy concluído" >> deploy_log.txt
fi;

echo " "  >> deploy_log.txt
