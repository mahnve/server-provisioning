.PHONY: infra-apply infra-provision

infra-apply:
	make -C terraform tf-apply


infra-provision:
	make -C ansible provision
