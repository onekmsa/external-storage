kubectl label node kubernetes-master type=storage

kubectl create ns jx
kubectl create -f psp.yaml --namespace=jx
export NAMESPACE=jx
sed -i'' "s/namespace:.*/namespace: jx/g" ./rbac.yaml
kubectl create -f rbac.yaml --namespace=jx
kubectl create -f deployment.yaml --namespace=jx
#kubectl create -f statefulset.yaml --namespace=jx
kubectl create -f class.yaml --namespace=jx
kubectl patch storageclass example-nfs  -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'

kubectl create -f claim.yaml --namespace=jx
kubectl get pv
