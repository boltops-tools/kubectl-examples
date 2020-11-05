#!/bin/bash

KUBE_ENV=${1:-dev}
kubectl apply -f $KUBE_ENV/namespace.yaml
kubectl apply -f $KUBE_ENV/service.yaml
kubectl apply -f $KUBE_ENV/deployment.yaml
