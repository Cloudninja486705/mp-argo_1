project_name = "prateek"
project_suffix = "eks2"
vpc_cidr = "10.150.0.0/16"
public_cidrs  = ["10.150.128.0/24", "10.150.129.0/24"]
private_cidrs = ["10.150.0.0/18", "10.150.64.0/18"]
k8s_version = "1.28"
ondemand_services_instance = ["t3a.medium"]
ondemand_services_desired_size = "1"
ondemand_services_max_size = "1"
ondemand_services_min_size = "1"
ondemand_services_disk_size = "10"
region = "us-east-1"