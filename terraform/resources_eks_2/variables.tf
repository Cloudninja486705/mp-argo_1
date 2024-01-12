# Project name
variable project_name {
  type = string
  description = "AWS Project Name"
}

# AWS Project Suffix
variable project_suffix {
  type        = string
  description = "Project Suffix"
}

################################################
# VPC                                          #
################################################
# AWS VPC CIDR
variable vpc_cidr {
  type = string
  description = "VPC CIDR range"
}

# AWS VPC Public CIDRs
variable "public_cidrs" {
  type        = list(any)
  description = "Public CIDR range"
}

# AWS VPC Private CIDRs
variable "private_cidrs" {
  type        = list(any)
  description = "Private CIDR range"
}

################################################
# EKS                                          #
################################################
# EKS Cluster K8s Version
variable k8s_version {
  type        = string
  description = "Kubernetes Version"
}

# EKS Cluster Private OnDemand NG Instance Type 
variable ondemand_services_instance {
  type        = list 
  description = "Cluster OnDemand Instance Type"
}

# EKS Cluster Private OnDemand NG Autoscaling Desired Size 
variable ondemand_services_desired_size {
  type        = string 
  description = "Cluster OnDemand Instance Autoscaling Group Desired Size"
}

# EKS Cluster Private OnDemand NG Autoscaling Min Size 
variable ondemand_services_max_size {
  type        = string 
  description = "Cluster OnDemand Instance Autoscaling Group Max Size"
}

# EKS Cluster Private OnDemand NG Autoscaling Max Size 
variable ondemand_services_min_size {
  type        = string 
  description = "Cluster OnDemand Instance Autoscaling Group Min Size"
}

# EKS Cluster Private On-Demand NG Disk Size
variable ondemand_services_disk_size {
  type        = number
  description = "Cluster On-Demand Instance Disk Size"
}

# AWS Region
variable region {
  type        = string
  description = "AWS Region to deploy EKS"
}