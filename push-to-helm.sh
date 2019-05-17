#!/bin/bash

helm package $1

mv -f $1-0.1.0.tgz $1

helm repo index . --url https://petercahn.github.io/helm-charts/

cat index.yaml

git add --all
git commit -a -m "change index"
git push

helm repo update

curl https://petercahn.github.io/helm-charts/index.yaml


