# API Gateway with Kong and Kubernetes

Code and notes produced during the API Gateway with Kong and Kubernetes module of the Full Cycle course

## Kubernetes Ingress

Kubernetes Ingress is an API object that manages external access to the services in a cluster, typically HTTP. Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. Traffic routing is controlled by rules defined on the Ingress resource.

### Kong and Kubernetes Ingress

Kong can be used as an Ingress Controller for Kubernetes. This means that Kong will be in charge of handling all the traffic that comes from outside the cluster to the services inside the cluster. The advantage of using Kong as an Ingress Controller instead of the default one is that Kong is a full-featured API Gateway, which means that it can do much more than just routing traffic. It can also do authentication, rate limiting, transformations, and much more.

## Running Locally

Below are the steps to run the application locally.

### Requirements

1. Have `kind` installed
2. Have `kubectl` installed
3. Have `helm v3` installed

### Steps

1. Make sure that Docker is running
1. Run `./infra/kong-k8s/kind/kind.sh` to create a Kubernetes cluster with `kind`
1. Run `./infra/kong-k8s/kong/kong.sh` to install Kong in the Kubernetes cluster
1  Run `./infra/kong-k8s/misc/keycloak/keycloak.sh` to install Keycloak in the Kubernetes cluster
1  Run `kubectl create ns bets` to create the `bets` namespace
1. Run `kubectl apply -f ./infra/kong-k8s/misc/apps --recursive -n bets` to install the applications in the `bets` namespace
1. Run `kubectl apply -f ./infra/kong-k8s/misc/apis/kratelimit.yaml -n bets` to install the Kong Rate Limiting Plugin
1. Run `kubectl apply -f ./infra/kong-k8s/misc/apis/kprometheus.yaml` to install the Kong Prometheus Plugin
1. RUN `kubectl apply -f './infra/kong-k8s/misc/apis/bets-api.yaml' -n bets` to install the Bets API
1. RUN `kubectl apply -f './infra/kong-k8s/misc/apis/king.yaml' -n bets` to install the Kong Ingress Controller