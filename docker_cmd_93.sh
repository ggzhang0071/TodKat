img="nvcr.io/nvidia/pytorch:20.10-py3"
#img="padim:0.1"

nvidia-docker run --privileged=true   --workdir /git --name "todkat"  -e DISPLAY --ipc=host -d --rm  -p 2222:2221 \
-v /raid/git/TodKat:/git/TodKat \
 -v /raid/git/datasets:/git/datasets \
 $img sleep infinity

docker exec -it todkat /bin/bash

