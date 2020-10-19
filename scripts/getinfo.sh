#!/usr/bin/sh

echo "Running the info gathering commands."

echo ""
kubectl get node

echo ""
kubectl get pod

echo ""
kubectl get rs

echo ""
kubectl get service
