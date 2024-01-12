### Run Terraform to create EKS Cluster

Go to terraform/resources/ folder and run 

```
make tfplan
make tfapply
```

### Install ArgoCD 

```
kubectl create ns argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.5.8/manifests/install.yaml
```

Update service type from ClusterIP to LoadBalancer
```
kubectl get service argocd-server -n argocd -o json | jq '.spec.type = "LoadBalancer"' | kubectl apply -f -
```

Admin is the username and get password as
```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```

Access the ArgoCD server using Service External IP

### Deploy ArgoCD application

Go to argocd-app/ folder and run 

```
kubectl apply -f namespace_eks_1.yaml
kubectl apply -f web_app_eks_1.yaml
```

### Access web application 

Access it via web app service external ip

### Register EKS 2 to ArgoCD

```
argocd login <load_balancer_dns_1>
argocd cluster add arn:aws:eks:us-east-1:123456789:cluster/prateek-dev2 
```