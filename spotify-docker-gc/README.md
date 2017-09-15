# Spotify's Docker-GC Helm Chart

This chart wraps the [spotify/docker-gc][] Docker image in the form of a [DaemonSet][], so that Docker resource garbage collection occurs on all nodes of a given Kubernetes cluster.

## Chart Details
This chart will do the following:

* Deploy one pod running the [spotify/docker-gc][] container to each node in a Kubernetes cluster, configured with the values provided.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release carldanley/spotify-docker-gc
```

## Configuration

The following table lists the configurable parameters of the Spotify Docker GC chart and their default values.

See the [spotify/docker-gc GitHub repository][] for more settings which may be added to this chart as needed.

| Parameter                         | Description                              | Default                                 |
| --------------------------------- | ---------------------------------------- | --------------------------------------- |
| `cron.schedule`                   | cron schedule                            | `0 0 * * *` (daily at 12:00AM UTC)      |
| `cron.log`                        | cron log name                            | `/var/logs/cron.log`                    |
| `env.gracePeriodSeconds`          | grace period in seconds before gc occurs | `0`                                     |
| `env.dockerAPIVersion`            | Docker API Version for docker-gc client  | Not set                                 |
| `exclude.images`                  | images to be excluded                    | Not set                                 |
| `exclude.containers`              | containers to be excluded                | Not set                                 |

[spotify/docker-gc]: https://hub.docker.com/r/spotify/docker-gc/
[spotify/docker-gc GitHub repository]: https://github.com/spotify/docker-gc
[DaemonSet]: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset
[CronJob]: https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/
[Job]: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
