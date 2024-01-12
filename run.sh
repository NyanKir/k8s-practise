#!/bin/sh

echo "Building node.js application"
docker build -t practise .

echo "Load image to minikube..."
minikube image load practise:latest

kubectl apply -f ./mongodb-secret.yaml

kubectl apply -f ./mongodb-config.yaml

kubectl apply -f ./mongodb-deployment.yaml

kubectl apply -f ./mongodb-ingress.yaml
echo "Done"
