LIST = fedora35 fedora34 fedora33 fedoratoolbox ubuntu18.04 ubuntu20.04 ubuntu21.04 ubuntu22.04

install:
	@for i in $(LIST); do \
		printf "\nInstalling Docker Image\n" && docker pull ghcr.io/mtharpe/$$i:base; done
