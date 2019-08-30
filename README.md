

### About

This repository contains sample code and manifests that a developer would need
for an end-to-end development workflow.

### Build & Pipelines

- A developer typically needs CI for continuously building code. 
The CI Pipeline, defined as a Tekton Pipeline has been added to [build/ci/](../build/ci)

- A developer typically needs a CD pipeline to build and push images to a registry. 
The CD pipeline, defined as a Tekton Pipeline, has been added to [build/cd/](../build/cd)

### Deployment

Everything needed to deploy the application has been deployed as a Helm chart in [deploy/template/](../deploy/template)

To deploy the chart using Helm 3, run 
```
helm install template --generate-name
```

Developers typically have their code deployed in multiple environments. 

Customizations to the application templates have been defined using [Kustomize](https://github.com/kubernetes-sigs/kustomize)
 in 
- [deploy/stage/](../deploy/stage)  
- [deploy/dev/](../deploy/dev) 

To see what the customized manifests looked like for `dev`, run
```
kustomize build deploy/dev
```

Similarly, to see what the customized manifests for `stage` look like, run


```
kustomize build deploy/stage
```


### License

This code is dedicated to the public domain to the maximum extent permitted by applicable law, pursuant to [CC0](http://creativecommons.org/publicdomain/zero/1.0/).
