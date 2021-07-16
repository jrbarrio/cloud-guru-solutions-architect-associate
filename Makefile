help: ## Prints this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: ## Initialize Terraform project
	@terraform init -var-file 'tfvars/dev.tfvars' -backend-config='key=dev/terraform.tfstate'

plan: init ## Plan resources
	@terraform plan -var-file 'tfvars/dev.tfvars'

analyze: init ## Perform static analysis
	@tfsec .

apply: init ## Create resources
	@terraform apply -var-file 'tfvars/dev.tfvars'

destroy: init ## Destroy resources
	@terraform destroy -var-file 'tfvars/dev.tfvars'
