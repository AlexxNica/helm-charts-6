# kube-lego

[kube-lego](https://github.com/jetstack/kube-lego) automatically requests certificates for Kubernetes Ingress resources from Let's Encrypt.

## TL;DR;

```
$ helm install --set config.LEGO_EMAIL=your@email.com --name kube-lego --namespace load-balancer .
```

## Introduction

This chart bootstraps a [kube-lego](https://github.com/jetstack/kube-lego) deployment on a Kubernetes cluster using the [Helm](https://helm.sh/) package manager.

## Prerequisites

* Kubernetes 1.6 with RBAC

## Installing the Chart

```
$ helm install --set config.LEGO_EMAIL=your@email.com --name kube-lego --namespace load-balancer .
```

> Tip: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the my-release deployment:

```
$ helm delete kube-lego
```

> Tip: To completely remove the release, use `--purge`
