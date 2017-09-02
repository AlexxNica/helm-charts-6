# registry

> A production docker registry.

## TL;DR;

```
$ helm install carldanley/registry
```

## Introduction

This chart bootstraps an registry deployment on a [Kubernetes](https://kubernetes.io/) cluster using the [Helm](https://helm.sh/) package manager.

## Prerequisites

* Kubernetes 1.6

## Installing the Chart

To install the chart with the release name `my-release`:

```
$ helm install --name my-release carldanley/registry
```

The command deploys registry on the Kubernetes cluster in the default configuration.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.
