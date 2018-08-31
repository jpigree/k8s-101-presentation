#!/bin/sh -xe

SCRIPTDIR=$(readlink -f "$0" | xargs dirname)
GCLOUD_REGISTRY_IMAGE="us.gcr.io/k8s-presentation-215001/helloworld"

docker login -u _json_key -p "$GCLOUD_REGISTRY_TOKEN" https://us.gcr.io

for version in v1 v2
do
    docker build --force-rm --pull --no-cache -t $GCLOUD_REGISTRY_IMAGE:$version --build-arg version=$version "${SCRIPTDIR}"
    docker push $GCLOUD_REGISTRY_IMAGE:$version
done
