kubectl delete -f psp.yaml  --namespace=jx
kubectl delete -f rbac.yaml --namespace=jx
kubectl delete -f deployment.yaml  --namespace=jx
#kubectl delete -f statefulset.yaml  --namespace=jx
kubectl delete -f class.yaml --namespace=jx
kubectl delete -f claim.yaml --namespace=jx


