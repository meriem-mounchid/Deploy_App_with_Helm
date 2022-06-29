show:
	kubectl get all

pods:
	kubectl get pods

deploy:
	kubectl get deployments

svc:
	kubectl get svc

ingress:
	kubectl get ingress

pv:
	kubectl get pv

pvc:
	kubectl get pvc

clean:
	helm ls --all --short | xargs -L1 helm delete

build:
	helm install -f data-postgres.yaml postgresxd .

rebuild:
	
	helm upgrade -i postgresxd .
