### builder
docker run --rm --privileged docker/binfmt:66f9012c56a8316f9244ffd7622d7c21c1f6f28d

### x86

docker buildx build -t swr.cn-north-4.myhuaweicloud.com/zker/jupyter-base:amd64-v2.00 -f ./base-notebook/Dockerfile --platform=linux/amd64 ./base-notebook -o type=image,push=true

docker pull swr.cn-north-4.myhuaweicloud.com/zker/jupyter-base:amd64-v2.00

docker buildx build --build-arg BASE_CONTAINER=swr.cn-north-4.myhuaweicloud.com/zker/jupyter-base:amd64-v2.00 -t swr.cn-north-4.myhuaweicloud.com/zker/jupyter-minimal:amd64-v2.00 -f ./minimal-notebook/Dockerfile --platform=linux/amd64 ./minimal-notebook -o type=image,push=true

docker pull swr.cn-north-4.myhuaweicloud.com/zker/jupyter-minimal:amd64-v2.00

docker buildx build --build-arg BASE_CONTAINER=swr.cn-north-4.myhuaweicloud.com/zker/jupyter-minimal:amd64-v2.00 -t swr.cn-north-4.myhuaweicloud.com/zker/jupyter-scipy:amd64-v2.00 -f ./scipy-notebook/Dockerfile --platform=linux/amd64 ./scipy-notebook -o type=image,push=true

docker pull swr.cn-north-4.myhuaweicloud.com/zker/jupyter-scipy:amd64-v2.00

docker buildx build --build-arg BASE_CONTAINER=swr.cn-north-4.myhuaweicloud.com/zker/jupyter-scipy:amd64-v2.00 -t swr.cn-north-4.myhuaweicloud.com/zker/jupyter-pytorch:amd64-v2.00 -f ./pytorch-notebook/Dockerfile --platform=linux/amd64 ./pytorch-notebook -o type=image,push=true

docker pull swr.cn-north-4.myhuaweicloud.com/zker/jupyter-scipy:amd64-v2.00

docker buildx build --build-arg BASE_CONTAINER=swr.cn-north-4.myhuaweicloud.com/zker/jupyter-scipy:amd64-v2.00 -t swr.cn-north-4.myhuaweicloud.com/zker/jupyter-tensorflow:amd64-v2.00 -f ./tensorflow-notebook/Dockerfile --platform=linux/amd64 ./tensorflow-notebook -o type=image,push=true

docker pull swr.cn-north-4.myhuaweicloud.com/zker/jupyter-tensorflow:amd64-v2.00

### arm64

docker buildx build --build-arg PYTHON_VERSION=3.7 -t swr.cn-north-4.myhuaweicloud.com/zker/jupyter-base:arm64-v2.00 -f ./base-notebook/Dockerfile.arm64   --platform=linux/arm64 ./base-notebook -o type=image,push=true

docker pull swr.cn-north-4.myhuaweicloud.com/zker/jupyter-base:arm64-v2.00

docker buildx build --build-arg BASE_CONTAINER=swr.cn-north-4.myhuaweicloud.com/zker/jupyter-base:arm64-v2.00 -t swr.cn-north-4.myhuaweicloud.com/zker/jupyter-minimal:arm64-v2.00 -f ./minimal-notebook/Dockerfile --platform=linux/arm64 ./minimal-notebook -o type=image,push=true

docker pull swr.cn-north-4.myhuaweicloud.com/zker/jupyter-minimal:arm64-v2.00

docker buildx build --build-arg BASE_CONTAINER=swr.cn-north-4.myhuaweicloud.com/zker/jupyter-minimal:arm64-v2.00 -t swr.cn-north-4.myhuaweicloud.com/zker/jupyter-scipy:arm64-v2.00 -f ./scipy-notebook/Dockerfile --platform=linux/arm64 ./scipy-notebook -o type=image,push=true

docker pull swr.cn-north-4.myhuaweicloud.com/zker/jupyter-scipy:arm64-v2.00

docker buildx build --build-arg BASE_CONTAINER=swr.cn-north-4.myhuaweicloud.com/zker/jupyter-scipy:arm64-v2.00 -t swr.cn-north-4.myhuaweicloud.com/zker/jupyter-tensorflow:arm64-v2.00 -f ./tensorflow-notebook/Dockerfile.arm64 --platform=linux/arm64 ./tensorflow-notebook -o type=image,push=true

docker pull swr.cn-north-4.myhuaweicloud.com/zker/jupyter-tensorflow:arm64-v2.00