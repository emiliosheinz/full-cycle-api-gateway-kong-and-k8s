#!/bin/bash
cd ./infra/kong-k8s/kong/
kubectl create ns kong
helm repo add kong https://charts.konghq.com
helm repo update
helm install kong kong/kong -f kong-conf.yaml --set proxy.type=NodePort,proxy.http.nodePort=30000,proxy.tls.nodePort=30003 --set ingressController.installCRDs=false --set serviceMonitor.enabled=true --set serviceMonitor.labels.release=promstack --namespace kong
