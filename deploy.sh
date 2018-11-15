#!/bin/bash

# Faz deploy em Docker Image

# AUTHOR: Fernando Matos

echo "$(date) - iniciando deploy docker cloud" >> deploy_log.txt

docker login -p f3rr4r11 -u fpmatos

docker build -t fpmatos/nodetest .

docker push fpmatos/nodetest

echo "deploy concluído" >> deploy_log.txt
echo " "  >> deploy_log.txt
