.PHONY: infra-apply infra-destroy infra-provision

infra-apply:
	make -C terraform tf-apply

infra-destroy:
	make -C terraform tf-destroy

infra-provision:
	make -C ansible provision
