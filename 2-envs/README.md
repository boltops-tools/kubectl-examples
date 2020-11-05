# Kubectl Simple Examples

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

Blog Post: [Kustomize vs Helm vs Kubes: Kubernetes Deploy Tools](https://blog.boltops.com/2020/11/05/kustomize-vs-helm-vs-kubes-kubernetes-deploy-tools)

This simple repo creates Kubernetes dev and prod resources with kubectl.

## Deploy

Create resources:

    ./kubectl-wrapper.sh dev
    ./kubectl-wrapper.sh prod

Check created resources:

    $ ./kubectl-wrapper.sh prod
    namespace/simple-prod created
    service/web created
    deployment.apps/web created
    $ kubectl get pod,svc,deploy -n simple-prod
    NAME                       READY   STATUS    RESTARTS   AGE
    pod/web-85656c69bf-dl4nx   1/1     Running   0          35s

    NAME          TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
    service/web   ClusterIP   172.20.178.44   <none>        80/TCP    36s

    NAME                  READY   UP-TO-DATE   AVAILABLE   AGE
    deployment.apps/web   1/1     1            1           35s
    $

## Delete

    kubectl delete -f dev
    kubectl delete -f prod
