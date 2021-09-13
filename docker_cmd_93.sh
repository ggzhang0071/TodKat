img="pytorch/pytorch:1.7.0-cuda11.0-cudnn8-devel"
#img="padim:0.1"


docker run --privileged=true   --workdir /git --name "todkat"  -e DISPLAY --ipc=host -d --rm  -p 2222:2221  \
-v /raid/git/TodKat:/git/TodKat \
 -v /raid/git/datasets:/git/datasets \
 $img sleep infinity

docker exec -it todkat /bin/bash

