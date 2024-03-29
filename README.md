# API Gateway with Kong and Kubernetes

Code and notes produced during the API Gateway with Kong and Kubernetes module of the Full Cycle course

## Kubernetes Ingress

Kubernetes Ingress is an API object that manages external access to the services in a cluster, typically HTTP. Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. Traffic routing is controlled by rules defined on the Ingress resource.

### Kong and Kubernetes Ingress

Kong can be used as an Ingress Controller for Kubernetes. This means that Kong will be in charge of handling all the traffic that comes from outside the cluster to the services inside the cluster. The advantage of using Kong as an Ingress Controller instead of the default one is that Kong is a full-featured API Gateway, which means that it can do much more than just routing traffic. It can also do authentication, rate limiting, transformations, and much more.

## Keycloak

Keycloak is an open source Identity and Access Management solution aimed at modern applications and services. It makes it easy to secure applications and services with little to no code. It provides a single sign-on solution and supports protocols like OpenID Connect, OAuth 2.0, and SAML.

### Token introspection

Token introspection is an OAuth 2.0 endpoint that returns the active state of a token. It is useful to verify if a token is valid or not and to get information about the token such as the user that it belongs to or its scopes.

## Prometheus

Prometheus is an open-source monitoring and alerting toolkit. It is a very popular tool in the Kubernetes ecosystem, being used to monitor the health of the cluster and the applications running in it. It can also be used to monitor Kong for example.

## API Ops

API Ops creates a standardized process and collaborative culture to accelerate how your organization creates APIs and maintains them throughout their life cycle. It is a set of practices that help you to create and maintain APIs in a more efficient way by automating the process of creating and deploying APIs.

![API Ops diagram](./docs/api-ops.png)

## Contract Testing

Contract testing is a technique for testing an integration point by checking each application in isolation to ensure the messages it sends or receives conform to a shared understanding that is documented in a "contract". It is a way to ensure that the APIs that you are consuming will not change in a way that will break your application.

To do that we can use GitHub Actions, Spectral, Postman, and ArgoCD.

- **GitHub Actions:** to run the workflow that will run the tests and build and deploy the application
- **Spectral:** to validate the OpenAPI specification
- **Postman:** to run the contract tests
- **ArgoCD:** to apply the changes and deploy the application