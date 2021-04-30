#!/usr/bin/env bash
### every exit != 0 fails the script
img="$1"
ver="$2"

echo $img
echo $ver

docker manifest create -a swr.cn-north-4.myhuaweicloud.com/zker/$img:$ver swr.cn-north-4.myhuaweicloud.com/zker/$img:amd64-$ver swr.cn-north-4.myhuaweicloud.com/zker/$img:arm64-$ver

docker manifest annotate swr.cn-north-4.myhuaweicloud.com/zker/$img:$ver swr.cn-north-4.myhuaweicloud.com/zker/$img:amd64-$ver --os linux --arch amd64

docker manifest annotate swr.cn-north-4.myhuaweicloud.com/zker/$img:$ver swr.cn-north-4.myhuaweicloud.com/zker/$img:arm64-$ver --os linux --arch arm64

docker manifest push swr.cn-north-4.myhuaweicloud.com/zker/$img:$ver

docker tag swr.cn-north-4.myhuaweicloud.com/zker/$img:amd64-$ver swr.cn-north-4.myhuaweicloud.com/zker/$img:amd64-latest

docker push swr.cn-north-4.myhuaweicloud.com/zker/$img:amd64-latest

docker tag swr.cn-north-4.myhuaweicloud.com/zker/$img:arm64-$ver swr.cn-north-4.myhuaweicloud.com/zker/$img:arm64-latest

docker push swr.cn-north-4.myhuaweicloud.com/zker/$img:arm64-latest

docker manifest create -a swr.cn-north-4.myhuaweicloud.com/zker/$img:latest swr.cn-north-4.myhuaweicloud.com/zker/$img:amd64-latest swr.cn-north-4.myhuaweicloud.com/zker/$img:arm64-latest

docker manifest annotate swr.cn-north-4.myhuaweicloud.com/zker/$img:latest swr.cn-north-4.myhuaweicloud.com/zker/$img:amd64-latest --os linux --arch amd64

docker manifest annotate swr.cn-north-4.myhuaweicloud.com/zker/$img:latest swr.cn-north-4.myhuaweicloud.com/zker/$img:arm64-latest --os linux --arch arm64

docker manifest push swr.cn-north-4.myhuaweicloud.com/zker/$img:latest