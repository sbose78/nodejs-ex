#!/bin/bash
scriptdir="$(dirname "$0")"
cd "$scriptdir"
oc create serviceaccount pipeline
oc adm policy add-scc-to-user privileged -z pipeline
oc adm policy add-role-to-user edit -z pipeline
oc apply -f pipeline-definition.yaml