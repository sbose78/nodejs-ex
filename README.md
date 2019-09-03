

### About

This repository contains sample code and manifests that a developer would need
for an end-to-end development workflow.

### Build & Pipelines

- A developer typically needs CI for continuously building code. 
The CI Pipeline, defined as a Tekton Pipeline has been added to [build/ci/](../e2e/build/ci)

- A developer typically needs a CD pipeline to build and push images to a registry. 
The CD pipeline, defined as a Tekton Pipeline, has been added to [build/cd/](../e2e/build/cd)


To setup your CI pipeline, run
```
make setup-ci
```

To execute your first CI job, run
```
make run-ci
```

To setup your CD pipeline, run
```
make setup-cd
```

To execute your first CI job, run
```
make run-cd
```

### Deployment

Everything needed to deploy the application has been added as a Helm chart in [deploy/template/](../e2e/deploy/template)

To deploy the chart using Helm 3, run 
```
make helm-install
```
Or you could directly invoke the `helm3` command,

```
helm install deploy/template/nodejs-ex-k --generate-name

```


### Environment-specific deployments

Developers typically have their code deployed in multiple environments. 

Customizations to the application templates have been defined using [Kustomize](https://github.com/kubernetes-sigs/kustomize)
 in 
- [deploy/stage/](../e2e/deploy/stage)  
- [deploy/dev/](../e2e/deploy/dev) 

To see what the customized manifests looked like for `dev`, run

```
make deploy-dev
```

Alternatively, you could call the underlying `kustomize` command
```
kustomize build deploy/dev
```

Similarly, to see what the customized manifests for `stage` look like, run


```
make deploy-stage
```


Alternatively, you could call the underlying `kustomize` command
```
kustomize build deploy/stage
```


### License

This code is dedicated to the public domain to the maximum extent permitted by applicable law, pursuant to [CC0](http://creativecommons.org/publicdomain/zero/1.0/).
