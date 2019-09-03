.DEFAULT_GOAL := preview-helm-install

.PHONY: preview-deploy-dev

deploy-dev: 
	kustomize build deploy/dev

deploy-stage:
	kustomize build deploy/stage

preview-helm-install:
	helm template deploy/template/nodejs-ex-k

helm-install:
	helm install deploy/template/nodejs-ex-k

setup-ci:
	build/ci/setup-pipeline.sh

run-ci:
	build/ci/run-pipeline.sh

setup-cd:
	build/cd/setup-pipeline.sh

run-cd:
	build/cd/run-pipeline.sh

