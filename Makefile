DOCKER_IMAGE := "ppa-build"

docker_build:
	docker build -t $(DOCKER_IMAGE) .

create_packages_and_releases:
	cd ubuntu && docker run --rm -v $(PWD)/ubuntu:/tmp/ppa \
	-t $(DOCKER_IMAGE)
	bash create-release-gpg-and-in-release.sh
