# Kubernetes
This repository hosts the Kubernetes resources yaml-files that aren't tied to any single microserver in particular, but rather
are either cluster-wide or project wide. Is it possible to recreate the state of the cluster by simply applying such resources.

### Prerequisites
You need to have a kubernetes distribution up & running, correctly configured with your local instance of kubectl. Given that, you 
will also need to manually install flux. Flux is a kubernetes operator that allows us to treat Helm releases and Helm repositories 
as a Kubernetes resource, herby making it possible to version it on git. Flux itself allows to also set up a gitops development flow,
which for simplicity we will not do. Instead we will stick to the minimal installation.

To install k3s (vanilla kubernetes) locally, and to add flux to it, just run the following scripts:

- flux.install.sh
- k3s.install.sh

### Namespaces
The cluster-wide resources will be placed in the `kube-utils` namespace, while the project-wide resources 
will be placed in the dedicated namespace `microchess`. Resources are considered project-wide when they actually
store or manage project-related data, like databases, queues, caches and so on. On the other-hand, resources 
are considered cluster-wide while they are operators or tools which directly impact the use of the kubertenes cluster, 
like storage classes, autoscaling operators, certificate managers, threat detectors and so on.