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

# AWS Region
variable region {
  type        = string
  description = "AWS Region to deploy EKS"
}

# VPC ID 1
variable vpc_id_1 {
  type        = string
  description = "VPC ID 1"
}

# VPC ID 2
variable vpc_id_2 {
  type        = string
  description = "VPC ID 2"
}

# VPC CIDR 1
variable vpc_cidr_1 {
  type        = string
  description = "VPC CIDR 1"
}

# VPC CIDR 2
variable vpc_cidr_2 {
  type        = string
  description = "VPC CIDR 2"
}

# RT IDs
variable "vpc_id_1_rt_ids" {
  type        = list(string)
  description = "List of route table ids for the peering vpc"
}

# RT IDs
variable "vpc_id_2_rt_ids" {
  type        = list(string)
  description = "List of route table ids for the peering vpc"
}

# SG IDs
variable "vpc_1_sg_id" {
  type        = string
  description = "Security Group id"
}

# SG IDs
variable "vpc_2_sg_id" {
  type        = string
  description = "Security Group id"
}