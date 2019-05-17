#!/bin/bash

helm package $1

mv -f $1-0.1.0.tgz $1

helm repo index . --url https://petercahn.github.io/helm-charts/


git add --all
git commit -a -m "$2"
git push

helm repo update

cat index.yaml
curl https://petercahn.github.io/helm-charts/index.yaml


