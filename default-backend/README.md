# default-backend

[default-backend](https://github.com/kubernetes/ingress/tree/master/examples/deployment/nginx#default-backend) is a service capable of handling all url paths and hosts the nginx controller doesn't understand.

## TL;DR;

```
$ helm install --name default-backend --namespace load-balancer carldanley/default-backend
```

## Introduction

This chart bootstraps a [default-backend](https://github.com/kubernetes/ingress/tree/master/examples/deployment/nginx#default-backend) deployment on a Kubernetes cluster using the [Helm](https://helm.sh/) package manager.

## Prerequisites

* Kubernetes 1.4+

## Installing the Chart

```
$ helm install --name default-backend --namespace load-balancer carldanley/default-backend
```

> Tip: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the my-release deployment:

```
$ helm delete default-backend
```

> Tip: To completely remove the release, use `--purge`
