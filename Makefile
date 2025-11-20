deploy-db:
    kubectl apply -f k8s/namespaces.yaml
    kubectl apply -f k8s/postgres-secret.yaml
	kubectl apply -f k8s/postgres-statefulset.yaml
	kubectl apply -f k8s/postgres-service.yaml
	kubectl apply -f postgres/init-job.yaml

reset-db:
    kubectl delete job postgres-init -n cyberlearn || true
	kubectl delete statefulset postgres -n cyberlearn || true
	kubectl delete pvc postgres-pvc -n cyberlearn || true
	kubectl delete secret postgres-secrets -n cyberlearn || true
	kubectl delete configmap postgres-schema -n cyberlearn || true

status-db:
    kubectl get pods -n cyberlearn
	kubectl logs job/postgres-init -n cyberlearn --tail=100 || true
