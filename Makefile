start-k8s:
	kubectl apply -f persistent-volumes.yaml
	kubectl apply -f bbdds.yaml
	kubectl apply -f micro-cloud-eventos.yaml
	kubectl apply -f micro-sistema-apoyo.yaml
	kubectl apply -f micro-frontend-main.yaml
	kubectl apply -f micro-cloud-tareas.yaml
	kubectl apply -f micro-gestion-usuarios.yaml

delete-k8s:
	- kubectl delete -f micro-cloud-eventos.yaml
	- kubectl delete -f micro-cloud-tareas.yaml
	- kubectl delete -f micro-gestion-usuarios.yaml
	- kubectl delete -f micro-sistema-apoyo.yaml
	- kubectl delete -f micro-frontend-main.yaml
	- kubectl delete -f bbdds.yaml
	- kubectl delete -f persistent-volumes.yaml --grace-period=0 --force