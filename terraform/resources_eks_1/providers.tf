# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
provider aws {
  region  = var.region
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.2"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.10.0"
    }
    github = {
      source  = "integrations/github"
      version = ">= 4.8"
    }
  }
}
