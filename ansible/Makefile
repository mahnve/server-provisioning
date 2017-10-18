.PHONY: digitalocean

provision:
	TF_STATE=../terraform/terraform.tfstate ansible-playbook --inventory-file=./bin/terraform-inventory digitalocean.yaml
