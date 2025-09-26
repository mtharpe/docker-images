FEDORA = latest
UBUNTU = latest
ALPINE = latest
MANJARO = latest

fedora:
	@for i in $(FEDORA); do \
		printf "\nInstalling Fedora $$i Docker Image\n" && docker pull ghcr.io/mtharpe/fedora:$$i; done

ubuntu:
	@for i in $(UBUNTU); do \
                printf "\nInstalling Ubuntu $$i Docker Image\n" && docker pull ghcr.io/mtharpe/ubuntu:$$i; done

alpine:
	@for i in $(ALPINE); do \
                printf "\nInstalling Alpine $$i Docker Image\n" && docker pull ghcr.io/mtharpe/alpine:$$i; done

manjaro:
	@for i in $(MANJARO); do \
                printf "\nInstalling Manjaro $$i Docker Image\n" && docker pull ghcr.io/mtharpe/manjaro:$$i; done

install: fedora ubuntu alpine manjaro

.PHONY: fedora ubuntu alpine manjaro install
