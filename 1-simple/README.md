# Kubectl Simple Examples

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

Blog Post: [Kustomize vs Helm vs Kubes: Kubernetes Deploy Tools](https://blog.boltops.com/2020/11/05/kustomize-vs-helm-vs-kubes-kubernetes-deploy-tools)

This simple repo creates some Kubernetes resources with kubectl.

## Deploy

    kubectl apply -f namespace.yaml
    kubectl apply -f service.yaml
    kubectl apply -f deployment.yaml

Check on created resources:

    $ kubectl get pod,svc,deploy -n simple
    NAME                       READY   STATUS    RESTARTS   AGE
    pod/web-85656c69bf-s9dqv   1/1     Running   0          64s

    NAME          TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
    service/web   ClusterIP   172.20.25.165   <none>        80/TCP    65s

    NAME                  READY   UP-TO-DATE   AVAILABLE   AGE
    deployment.apps/web   1/1     1            1           64s
    $

## Delete

    kubectl delete -f deployment.yaml
    kubectl delete -f service.yaml
    kubectl delete -f namespace.yaml
