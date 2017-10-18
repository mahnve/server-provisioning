.PHONY: digitalocean

digitalocean:
	TF_STATE=../terraform/terraform.tfstate ansible-playbook --inventory-file=./bin/terraform-inventory digitalocean.yml
