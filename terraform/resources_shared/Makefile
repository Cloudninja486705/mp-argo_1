tfplan:
	terraform init -var-file="shared.tfvars"
	terraform plan -var-file="shared.tfvars"

tfapply: 
	terraform init -var-file="shared.tfvars"
	terraform apply -var-file="shared.tfvars"

tfdestroy:
	terraform destroy -var-file="shared.tfvars"