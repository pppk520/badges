HOST_PATH ?= $(shell pwd)

REPO_ORG ?= $(shell basename $(HOST_PATH))
REPO = $(shell echo $(REPO_ORG) | tr A-Z a-z)

TAG = 'develop'

GUEST_PATH = '/tmp/$(REPO)'

CMD = 'cd $(GUEST_PATH) && /bin/bash'

build: Dockerfile
	docker build \
	  -t $(REPO):$(TAG) -f Dockerfile .

run:
	docker run --rm \
	  -v $(HOST_PATH):$(GUEST_PATH) \
	  $(DOCKER_OPTIONS) -it $(REPO):$(TAG) /bin/bash -c $(CMD)

