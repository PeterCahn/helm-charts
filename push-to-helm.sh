#!/bin/bash

helm package $1

mv -f $1-0.1.0.tgz $1

helm repo index . --url https://petercahn.github.io/helm-charts/

git add --all
git commit -a -m "$2"
git push

helm repo update

differences=$(diff <(curl https://petercahn.github.io/helm-charts/index.yaml) index.yaml)
if [ -z "$differences" ] ; then
	echo "File index.yaml is synced"
else
	echo "File index.yaml is not in sync"
	echo $differences
fi

