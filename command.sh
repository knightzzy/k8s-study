# new vresion 
kubectl get deployments.apps -n fc -o custom-columns='NAME:metadata.name,REPLICAS:spec.replicas,IMAGE:spec.template.spec.containers[0].image'

# old version get all image for one ns.
kubectl get deployments -n gssc -o=jsonpath='{range .items[*]}{.metadata.name}: {.spec.template.spec.containers[*].image}{"\n"}{end}'
