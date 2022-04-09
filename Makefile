IMG-distccd ?= uhziel/distccd
IMG-distcc-env ?= uhziel/distcc-env

all: docker-distccd docker-distcc-env

# distccd

docker-distccd: docker-build-distccd docker-push-distccd

docker-build-distccd:
	docker build -f Dockerfile.distccd -t ${IMG-distccd} .

docker-push-distccd:
	docker push ${IMG-distccd}

# distcc-env

docker-distcc-env: docker-build-distcc-env docker-push-distcc-env

docker-build-distcc-env:
	docker build -f Dockerfile.distcc-env -t ${IMG-distcc-env} .

docker-push-distcc-env:
	docker push ${IMG-distcc-env}
