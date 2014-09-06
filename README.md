## What:

[Docker](http://www.docker.com/) image based on [centos:latest](https://registry.hub.docker.com/_/centos/) which builds [Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes) from scratch upon start and moves binaries to ```/target```.

## Why:

I need an easy way to install [Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes) on [CoreOS](https://coreos.com/).

## Usage:

Whenever the container is run, it builds the latest [Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes) binaries and moves them to the ```/target``` [volume](https://docs.docker.com/reference/builder/#volume) (any existing binaries will be removed).

So, to install or update [Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes) i.e. within ```/opt/kubernetes``` just run

```
docker run --rm -v /opt/kubernetes:/target digitalwonderland/kubernetes
```
