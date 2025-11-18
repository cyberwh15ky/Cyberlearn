deploy:
    kubectl apply -f k8s/namespaces.yaml
    kubectl apply -f k8s/issuer.yaml
    helm upgrade --install cyberlearn ./helm -n cyberlearn

delete:
    helm uninstall cyberlearn -n cyberlearn
