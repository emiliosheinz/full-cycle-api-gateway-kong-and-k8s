#!/bin/bash
cd ./infra/kong-k8s/kind/
kind create cluster --name kong-fc --config clusterconfig.yaml
kubectl cluster-info --context kind-kong-fc
