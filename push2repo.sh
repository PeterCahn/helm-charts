#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Illegal number of parameters"
    echo "Usage: $0 <matricola> <password (hashata come su Artifactory)> <nome-chart>"
    exit
fi

export user=$1
export password=$2
export chart=$3
export version=$(grep -Po 'version: \K.*' < helm/charts/$chart/Chart.yaml)

cd helm/docs

helm package ../charts/$chart

curl -u$user:$password -T $chart-$version.tgz "http://repo.ecosis.csi.it/artifactory/helm-csi-local/$chart-$version.tgz"

rm -f $chart-$version

cd ../..
