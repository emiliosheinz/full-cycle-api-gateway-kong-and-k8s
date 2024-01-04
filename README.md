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
