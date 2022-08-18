FEDORA = 33 34 35 36 latest
UBUNTU = 18.04 20.04 21.04 22.04 latest
ALPINE = 3.14 3.15 3.16 latest
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

lint:
	hadolint --ignore DL3018 --ignore DL3007 --ignore DL3059 --ignore 3041./Dockerfile
