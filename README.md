# Employee Expense Management System

Installating Docker:

  sudo yum update -y
  sudo yum install docker -y
  sudo systemctl start docker
  sudo usermod -a -G docker ec2-user
  sudo systemctl enable docker
  sudo systemctl status docker

Installating Docker compose:

wget https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64
ls -lrt
sudo chmod +x docker-compose-linux-x86_64
sudo mv docker-compose-linux-x86_64 docker-compose
sudo mv docker-compose /usr/local/bin/docker-compose


Deployment of the pods:
docker-compose up -d
docker-compose ps
docker-compose exec -it api bash
cat ExpenseManagementSystem1Logger.log
exit
docker-compose exec -it db bash
psql -U sprint -d postgres
exit
docker-compose down -v

**Minikube Deployment**

Kubectl Installation:
Install kubectl 
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo mv kubectl /usr/bin
sudo su -  (kubectl)

Installating Minikube :
 curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
 sudo install minikube-linux-amd64 /usr/local/bin/minikube
 minikube start --vm-driver=none


Deployment:
kubectl apply -f db_deployment.yaml
kubectl apply -f service_db.yaml
kubectl get all

kubectl apply -f service_api.yaml
kubectl apply -f app_deployment.yaml
kubectl get all

Printing logs:
kubectl exec -it <app_pod_name> -- bash
cat ExpenseManagementSystem1Logger.log
exit
```

Accessing the database through the mobaxterm terminal:
kubectl get all
kubectl exec -it <db_pod_name> -- bash
psql -U sprint -d postgres
exit
                                    
                                    
                                    
                                                  ------x-------x------
