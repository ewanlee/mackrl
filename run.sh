#!/bin/bash
HASH=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)
GPU=$1
name=${USER}_fastmarl_mackrl4neurips_GPU_${GPU}_${HASH}

echo "Launching container named '${name}' on GPU '${GPU}'"
# Launches a docker container using our image, and runs the provided command

if hash nvidia-docker 2>/dev/null; then
  cmd=nvidia-docker
else
  cmd=docker
fi

# NV_GPU="$GPU" ${cmd} run -i -d \
#     --name $name \
#     --cap-add=SYS_PTRACE \
#     --net host \
#     --user $(id -u) \
#     -v `pwd`:/fastmarl \
#     -v /tmp/.X11-unix:/tmp/.X11-unix \
#     -e DISPLAY=unix$DISPLAY \
#     -t fastmarl/mackrl4neurips \
#     ${@:2}

docker run \
    --gpus device=$GPU \
    --name $name \
    --user $(id -u):$(id -g) \
    -v `pwd`:/fastmarl \
    -t fastmarl/mackrl4neurips \
    ${@:2}
