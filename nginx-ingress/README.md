# nginx-ingress

[nginx-ingress](https://github.com/kubernetes/ingress/tree/master/controllers/nginx) is an Ingress controller that uses [ConfigMap](https://github.com/kubernetes/community/blob/master/contributors/design-proposals/configmap.md) to store the nginx configuration.

To use, add the `kubernetes.io/ingress.class: nginx` annotation to your Ingress resources.


## TL;DR;

```
$ helm install carldanley/nginx-ingress
```

## Introduction

This chart bootstraps an nginx-ingress deployment on a [Kubernetes](https://kubernetes.io/) cluster using the [Helm](https://helm.sh/) package manager.

## Prerequisites

* Kubernetes 1.4+ with Beta APIs enabled

## Installing the Chart

To install the chart with the release name `my-release`:

```
$ helm install --name my-release carldanley/nginx-ingress
```

The command deploys nginx-ingress on the Kubernetes cluster in the default configuration. The [configuration](https://github.com/kubernetes/charts/tree/master/stable/nginx-ingress#configuration) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.
