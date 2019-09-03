#!/bin/bash
scriptdir="$(dirname "$0")"
cd "$scriptdir"
oc apply -f image.yaml
oc apply -f git.yaml
oc apply -f pipeline-run.yaml

